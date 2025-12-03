import random
import argparse
import numpy as np
import os
import sys

def generar_problema_ext1_conflictiu(num_reservas, num_habitaciones, num_dias, conflict_ratio, seed=None):
    """
    Genera un problema on les reserves es concentren temporalment segons 'conflict_ratio'.
    """
    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    prob_name = f"ext1_conflicte_{int(conflict_ratio*100)}"
    
    pddl = f"(define (problem {prob_name})\n"
    pddl += "  (:domain hotel-extensio1)\n"
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"
    
    # Objectes
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += "  )\n\n"

    pddl += "  (:init\n"
    pddl += "    (= (total-descartades) 0)\n\n"

    # 1. Capacitats Habitacions (Fixes a 4)
    for i in range(num_habitaciones):
        pddl += f"    (= (capacitat h{i+1}) 4)\n"
    pddl += "\n"

    # 2. Persones (Fixes a 2)
    for i in range(num_reservas):
        pddl += f"    (= (persones r{i+1}) 2)\n"
    pddl += "\n"

    # 3. GENERACIÓ DE DIES (El cor del conflicte)
    center_day = num_dias / 2
    
    if conflict_ratio < 0.1:
        sigma = num_dias * 10 
    else:
        factor = (1.1 - conflict_ratio) * 0.4 
        sigma = num_dias * factor

    for i in range(num_reservas):
        r = f"r{i+1}"
        durada = random.randint(2, 5) 
        
        if conflict_ratio < 0.05:
            start_day = random.randint(1, num_dias - durada + 1)
        else:
            val = int(np.random.normal(center_day, sigma))
            start_day = max(1, min(num_dias - durada + 1, val))
        
        for j in range(durada):
            d_idx = start_day + j
            if 1 <= d_idx <= num_dias:
                pddl += f"    (dies-reserva {r} d{d_idx})\n"

    pddl += "  )\n\n"
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n"
    pddl += "  (:metric minimize (total-descartades))\n"
    pddl += ")\n"

    return pddl

def generar_suite_escalable():
    """
    Genera la suite manualment si no hi ha arguments.
    """
    configuracions = [
        ("prob01001", 25, 15, 15, 0.0),
        ("prob01002", 25, 15, 15, 0.2),
        ("prob01003", 25, 15, 15, 0.4),
        ("prob01004", 25, 15, 15, 0.6),
        ("prob01005", 25, 15, 15, 0.8),
        ("prob01006", 25, 15, 15, 1.0),
    ]
    
    out_dir = "./extensions/ext1/1.1/"
    if not os.path.exists(out_dir): os.makedirs(out_dir)

    print("Generant suite de problemes...")
    for conf in configuracions:
        nom, r, h, d, ratio = conf
        nom_fitxer = f"{out_dir}{nom}.pddl"
        contingut = generar_problema_ext1_conflictiu(r, h, d, conflict_ratio=ratio, seed=42)
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        print(f" -> Generat {nom_fitxer}")

if __name__ == '__main__':
    # AQUEST ÉS EL BLOC QUE FALTAVA PERQUÈ L'ORQUESTRADOR FUNCIONI
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", help="Fitxer de sortida")
    parser.add_argument("--reservas", type=int, default=20)
    parser.add_argument("--habitaciones", type=int, default=5)
    parser.add_argument("--dias", type=int, default=30)
    parser.add_argument("--conflict", type=float, default=0.5)
    parser.add_argument("--seed", type=int, default=None) # Opcional

    args = parser.parse_args()

    # Si es passa --output, estem en mode "Orquestrador"
    if args.output:
        content = generar_problema_ext1_conflictiu(
            args.reservas, args.habitaciones, args.dias, 
            conflict_ratio=args.conflict, seed=args.seed
        )
        # Assegurar directori
        os.makedirs(os.path.dirname(args.output), exist_ok=True)
        
        with open(args.output, "w") as f:
            f.write(content)
    else:
        # Si no, mode "Manual"
        generar_suite_escalable()
