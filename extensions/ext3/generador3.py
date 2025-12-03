import random
import argparse
import os

def generar_problema_hotel_ext3(num_reservas, num_habitaciones, num_dias, seed=None, problem_name="hotel-ext3"):
    """
    Genera un fitxer de problema PDDL compatible amb el domini 'hotel-extensio3'.
    Inclou fluents per a capacitat, persones, i comptadors de desperdici i descarts.
    """
    if seed is not None:
        random.seed(seed)

    # --- Capçalera ---
    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio3)\n"
    
    # --- Requirements ---
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    # --- Objectes ---
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += "  )\n\n"

    # --- Init ---
    pddl += "  (:init\n"
    
    # 1. Inicialitzar els comptadors de la mètrica (Extensió 3)
    pddl += "    ;; Inicialització de mètriques\n"
    pddl += "    (= (total-habitacions-descartades) 0)\n"
    pddl += "    (= (total-places-descartades) 0)\n\n"

    # 2. Generar capacitats de les habitacions (Fluents)
    pddl += "    ;; Capacitats de les habitacions (2-6 persones)\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        # Variem una mica més la capacitat per tenir joc amb el desperdici
        cap = random.randint(2, 6)
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
    pddl += "\n"

    # 3. Generar persones per reserva (Fluents)
    pddl += "    ;; Persones per reserva (1-5 persones)\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, 5)
        pddl += f"    (= (persones {r_id}) {pers})\n"
    pddl += "\n"

    # 4. Generar dies de reserva (Predicats)
    pddl += "    ;; Calendari de reserves\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        # Durada entre 1 i un 30% del total de dies disponibles
        max_durada = max(1, int(num_dias * 0.3))
        duracion = random.randint(1, max_durada)
        
        # Punt d'inici
        ultim_dia_inici = max(1, num_dias - duracion + 1)
        dia_inicio = random.randint(1, ultim_dia_inici)
        
        for j in range(duracion):
            d = f"d{dia_inicio + j}"
            pddl += f"    (dies-reserva {r} {d})\n"
    
    pddl += "  )\n\n"

    # --- Goal ---
    # Totes les reserves han d'estar processades (assignades o descartades)
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"

    # --- Metric ---
    # Extensió 3: Minimitzar una funció de cost combinada.
    # Pes 1000 per descarts (prioritat màxima) + 1 per plaça desperdiciada.
    pddl += "  (:metric minimize (+ (* 1000 (total-habitacions-descartades)) (total-places-descartades)))\n"
    
    pddl += ")\n"

    return pddl

def generar_suite_ext3():
    """
    Genera 5 problemes amb dificultat incremental per l'Extensió 3.
    """
    # Configuracions: (Nom, Reserves, Habitacions, Dies)
    configuracions = [
        ("prob_ext3_01", 5, 3, 5),     # Molt fàcil
        ("prob_ext3_02", 10, 5, 10),    # Fàcil
        ("prob_ext3_03", 20, 8, 20),    # Mitjà
        ("prob_ext3_04", 40, 15, 30),   # Difícil
        ("prob_ext3_05", 60, 20, 45)    # Molt difícil
    ]

    output_dir = "./extensions/ext3/"
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    print(f"Generant suite de problemes Extensió 3 a {output_dir}...")
    for conf in configuracions:
        nom, r, h, d = conf
        nom_fitxer = os.path.join(output_dir, f"{nom}.pddl")
        
        # Use seed fixa per reproductibilitat
        contingut = generar_problema_hotel_ext3(r, h, d, seed=42, problem_name=nom)
        
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        
        print(f" -> Generat {nom_fitxer}: {r} res, {h} hab, {d} dies.")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador PDDL Hotel Extensió 3 (Optimització Desperdici)")
    parser.add_argument("--single", action="store_true", help="Generar un sol problema en lloc de la suite.")
    parser.add_argument("--reservas", type=int, default=5)
    parser.add_argument("--habitaciones", type=int, default=3)
    parser.add_argument("--dias", type=int, default=10)
    parser.add_argument("--output", type=str, default="problema_ext3.pddl")

    args = parser.parse_args()

    if args.single:
        contingut = generar_problema_hotel_ext3(args.reservas, args.habitaciones, args.dias, seed=42)
        with open(args.output, "w") as f:
            f.write(contingut)
        print(f"Problema individual generat a: {args.output}")
    else:
        generar_suite_ext3()
