import random
import argparse
import numpy as np
import os
import sys

def generar_problema_combinat(num_reservas, num_habitaciones, num_dias, conflict_ratio=0.5, prob_match=0.5, seed=None, problem_name="hotel-combinat"):
    """
    Genera un problema PDDL combinant:
    1. EXTENSIÓ 1: Concentració temporal de reserves (Gaussiana) controlada per 'conflict_ratio'.
    2. EXTENSIÓ 2: Preferències d'orientació desequilibrades controlades per 'prob_match'.
    """
    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio2)\n"
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    orientacions = ["n", "s", "e", "o"]
    
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += f"    {' '.join(orientacions)} - orientacio\n"
    pddl += "  )\n\n"

    pddl += "  (:init\n"
    pddl += "    (= (total-descartades) 0)\n"
    
    # ---------------------------------------------------------
    # 1. GENERACIÓ D'HABITACIONS (DESEQUILIBRADA - EXT2)
    # ---------------------------------------------------------
    orientacio_dominant = random.choice(orientacions)
    pesos_habs = [70 if o == orientacio_dominant else 10 for o in orientacions]
    distribucio_habs = {o: 0 for o in orientacions}
    
    pddl += "    ;; Habitacions: Capacitat i Orientacio (Desequilibrada)\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        orient_habitacio = random.choices(orientacions, weights=pesos_habs, k=1)[0]
        distribucio_habs[orient_habitacio] += 1
        
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
        pddl += f"    (orientada {h_id} {orient_habitacio})\n"
    pddl += "\n"

    # ---------------------------------------------------------
    # 2. GENERACIÓ DE PREFERÈNCIES (MATCHING - EXT2)
    # ---------------------------------------------------------
    pddl += "    ;; Reserves: Persones i Preferència d'Orientació\n"
    
    num_match = int(num_reservas * prob_match)
    num_random = num_reservas - num_match
    preferencies = []

    # Reserves Match (Segueixen l'oferta)
    opcions_ponderades = []
    for o, count in distribucio_habs.items():
        if count > 0: opcions_ponderades.extend([o] * count)
    if not opcions_ponderades: opcions_ponderades = orientacions
    
    for _ in range(num_match):
        preferencies.append(random.choice(opcions_ponderades))

    # Reserves Random (No Match)
    for _ in range(num_random):
        preferencies.append(random.choice(orientacions))
        
    random.shuffle(preferencies)

    # ---------------------------------------------------------
    # 3. GENERACIÓ DE DIES (CONFLICTE GAUSSIÀ - EXT1)
    # ---------------------------------------------------------
    pddl += "    ;; Calendari de reserves (Distribució Gaussiana)\n"
    
    center_day = num_dias / 2
    if conflict_ratio < 0.1:
        sigma = num_dias * 10
    else:
        factor = (1.1 - conflict_ratio) * 0.4
        sigma = num_dias * factor

    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, 4)
        orient_pref = preferencies[i]
        
        pddl += f"    (= (persones {r_id}) {pers})\n"
        pddl += f"    (vol-orientacio {r_id} {orient_pref})\n"

        # Lògica Gaussiana
        durada = random.randint(2, 5) # Durada típica
        if conflict_ratio < 0.05:
            start_day = random.randint(1, max(1, num_dias - durada + 1))
        else:
            val = int(np.random.normal(center_day, sigma))
            start_day = max(1, min(num_dias - durada + 1, val))
            
        for j in range(durada):
            d_idx = start_day + j
            if 1 <= d_idx <= num_dias:
                d = f"d{d_idx}"
                pddl += f"    (dies-reserva {r_id} {d})\n"
    
    pddl += "  )\n\n"
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"
    pddl += "  (:metric minimize (total-descartades))\n"
    pddl += ")\n"
    return pddl

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador Combinat (Ext1 + Ext2)")
    parser.add_argument("--single", action="store_true", default=True) # Per defecte sempre single
    parser.add_argument("--reservas", type=int, default=12)
    parser.add_argument("--habitaciones", type=int, default=20)
    parser.add_argument("--dias", type=int, default=30)
    parser.add_argument("--output", type=str, default="problema_combinat.pddl")
    parser.add_argument("--seed", type=int, default=None)
    
    # PARAMETRES CLAU
    parser.add_argument("--conflict", type=float, default=0.5, help="Concentració Temporal (0.0=Uniforme, 1.0=Pic al mig)")
    parser.add_argument("--match", type=float, default=0.5, help="Coincidència d'Orientació (0.0=Caos, 1.0=Ideal)")

    args = parser.parse_args()

    contingut = generar_problema_combinat(
        args.reservas, args.habitaciones, args.dias, 
        conflict_ratio=args.conflict, 
        prob_match=args.match, 
        seed=args.seed
    )
    
    # Assegurar directori
    os.makedirs(os.path.dirname(os.path.abspath(args.output)), exist_ok=True)
    
    with open(args.output, "w") as f:
        f.write(contingut)
    print(f"Generat: {args.output} (Conflict: {args.conflict}, Match: {args.match})")
