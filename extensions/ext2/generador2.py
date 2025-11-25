import random
import argparse
import os

def generar_problema_hotel_orientacio(num_reservas, num_habitaciones, num_dias, seed=None, problem_name="hotel-orientacio"):
    """
    Genera un fitxer de problema PDDL compatible amb el domini amb Orientació.
    Inclou:
    - Fluents numèrics (capacitat, persones, total-assignades)
    - Predicats d'orientació (orientada, vol-orientacio)
    - Tipus 'orientacio' (nord, sud, est, oest)
    """
    if seed is not None:
        random.seed(seed)

    # --- Capçalera ---
    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio1)\n" # Nom del domini que m'has passat
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    # --- Objectes ---
    # Definim les orientacions com a constants o objectes
    orientacions = ["n", "s", "e", "o"]
    
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += f"    {' '.join(orientacions)} - orientacio\n"
    pddl += "  )\n\n"

    # --- Init ---
    pddl += "  (:init\n"
    
    # 1. Mètrica inicial
    pddl += "    (= (total-assignades) 0)\n\n"

    # 2. Configuració Habitacions (Capacitat + Orientació Real)
    pddl += "    ;; Habitacions: Capacitat i Orientació\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        
        # Assignem una orientació aleatòria a l'habitació
        orient_habitacio = random.choice(orientacions)
        
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
        pddl += f"    (orientada {h_id} {orient_habitacio})\n"
    pddl += "\n"

    # 3. Configuració Reserves (Persones + Preferència Orientació)
    pddl += "    ;; Reserves: Persones i Preferència d'Orientació\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, 4)
        
        # Assignem quina orientació vol el client
        orient_pref = random.choice(orientacions)
        
        pddl += f"    (= (persones {r_id}) {pers})\n"
        pddl += f"    (vol-orientacio {r_id} {orient_pref})\n"
    pddl += "\n"

    # 4. Dies de reserva
    pddl += "    ;; Calendari de reserves\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        # Durada controlada (màxim 30% dels dies totals o 5 dies)
        max_durada = max(1, int(num_dias * 0.3))
        duracion = random.randint(1, max_durada)
        
        ultim_dia_inici = max(1, num_dias - duracion + 1)
        dia_inicio = random.randint(1, ultim_dia_inici)
        
        for j in range(duracion):
            d = f"d{dia_inicio + j}"
            pddl += f"    (dies-reserva {r} {d})\n"
    
    pddl += "  )\n\n"

    # --- Goal ---
    # Igual que l'extensió anterior, volem que totes estiguin processades
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"

    # --- Metric ---
    # Maximitzar punts (2 si coincideix orientació, 1 si no)
    pddl += "  (:metric maximize (total-assignades))\n"
    
    pddl += ")\n"

    return pddl

def generar_suite_orientacio():
    """
    Genera 5 problemes escalables per al domini amb orientació.
    """
    # Configuracions: (Nom, Reserves, Habitacions, Dies)
    configuracions = [
        ("prob0201", 3, 2, 4),     
        ("prob0202", 6, 3, 7),     
        ("prob0203", 12, 5, 15),   
        ("prob0204", 25, 10, 30),  
        ("prob0205", 50, 20, 45)   
    ]

    print("Generant suite de problemes amb ORIENTACIÓ...")
    for conf in configuracions:
        nom, r, h, d = conf
        nom_fitxer = f"./extensions/ext2/{nom}.pddl"
        
        contingut = generar_problema_hotel_orientacio(r, h, d, seed=42, problem_name=nom)
        
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        
        print(f" -> Generat {nom_fitxer}: {r} res, {h} hab, {d} dies.")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador PDDL Hotel amb Orientació")
    parser.add_argument("--single", action="store_true", help="Generar un sol problema.")
    parser.add_argument("--reservas", type=int, default=5)
    parser.add_argument("--habitaciones", type=int, default=3)
    parser.add_argument("--dias", type=int, default=10)
    parser.add_argument("--output", type=str, default="problema_orientacio.pddl")

    args = parser.parse_args()

    if args.single:
        contingut = generar_problema_hotel_orientacio(args.reservas, args.habitaciones, args.dias, seed=42)
        with open(args.output, "w") as f:
            f.write(contingut)
        print(f"Problema individual generat a: {args.output}")
    else:
        generar_suite_orientacio()
