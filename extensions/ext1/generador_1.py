import random
import argparse
import os

def generar_problema_hotel_ext1(num_reservas, num_habitaciones, num_dias, seed=None, problem_name="hotel-ext1"):
    """
    Genera un fitxer de problema PDDL compatible amb el domini 'hotel-extensio1'.
    Inclou fluents numèrics per capacitat i persones, i la mètrica d'optimització.
    """
    if seed is not None:
        random.seed(seed)

    # --- Capçalera ---
    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio1)\n"
    
    # --- Requirements (importants per als fluents) ---
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    # --- Objectes ---
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += "  )\n\n"

    # --- Init ---
    pddl += "  (:init\n"
    
    # 1. Inicialitzar el comptador de la mètrica
    pddl += "    (= (total-assignades) 0)\n\n"

    # 2. Generar capacitats de les habitacions (Fluents)
    pddl += "    ;; Capacitats de les habitacions (1-4 persones)\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
    pddl += "\n"

    # 3. Generar persones per reserva (Fluents)
    pddl += "    ;; Persones per reserva (1-4 persones)\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, 4)
        pddl += f"    (= (persones {r_id}) {pers})\n"
    pddl += "\n"

    # 4. Generar dies de reserva (Predicats)
    pddl += "    ;; Calendari de reserves\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        # Durada entre 1 i un 30% del total de dies disponibles (per evitar reserves massa llargues)
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
    # L'objectiu és que TOTS els objectes de tipus 'reserva' estiguin processats
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"

    # --- Metric ---
    # Maximitzar el valor del fluent total-assignades
    pddl += "  (:metric maximize (total-assignades))\n"
    
    pddl += ")\n"

    return pddl

def generar_suite_escalable():
    """
    Genera 5 problemes amb dificultat incremental.
    """
    # Configuracions: (Nom, Reserves, Habitacions, Dies)
    configuracions = [
        ("prob0101", 3, 2, 3),    
        ("prob0102", 6, 4, 6),
        ("prob0103", 9, 6, 9),
        ("prob0104", 12, 8, 12),
        ("prob0105", 15, 10, 15),
        ("prob0106", 18, 12, 18),
        ("prob0107", 21, 14, 21),
        ("prob0108", 24, 16, 24),
        ("prob0109", 27, 18, 27),
        ("prob0110", 30, 20, 30),
        ]

    print("Generant suite de problemes...")
    for conf in configuracions:
        nom, r, h, d = conf
        nom_fitxer = f"./extensions/ext1/{nom}.pddl"
        
        contingut = generar_problema_hotel_ext1(r, h, d, seed=42, problem_name=nom)
        
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        
        print(f" -> Generat {nom_fitxer}: {r} res, {h} hab, {d} dies.")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador PDDL Hotel Extensió 1")
    parser.add_argument("--single", action="store_true", help="Generar un sol problema en lloc de la suite.")
    parser.add_argument("--reservas", type=int, default=5)
    parser.add_argument("--habitaciones", type=int, default=3)
    parser.add_argument("--dias", type=int, default=10)
    parser.add_argument("--output", type=str, default="problema_ext1.pddl")

    args = parser.parse_args()

    if args.single:
        contingut = generar_problema_hotel_ext1(args.reservas, args.habitaciones, args.dias, seed=42)
        with open(args.output, "w") as f:
            f.write(contingut)
        print(f"Problema individual generat a: {args.output}")
    else:
        generar_suite_escalable()
