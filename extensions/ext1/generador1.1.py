import random
import argparse
import numpy as np # Necessitaràs numpy per a distribucions millors

def generar_problema_ext1_conflictiu(num_reservas, num_habitaciones, num_dias, conflict_ratio, seed=None):
    """
    Genera un problema on les reserves es concentren temporalment segons 'conflict_ratio'.
    
    conflict_ratio (0.0 - 1.0):
       0.0 -> Distribució Uniforme (Escampades per tot el calendari).
       1.0 -> Distribució Molt Concentrada (Totes volen els mateixos dies centrals).
    """
    if seed is not None:
        random.seed(seed)
        np.random.seed(seed)

    pddl = f"(define (problem ext1_conflicte_{int(conflict_ratio*100)})\n"
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

    # 1. Capacitats Habitacions (Fixes o Aleatòries)
    # Per aïllar l'efecte del conflicte temporal, fem que totes siguin iguals o similars
    for i in range(num_habitaciones):
        pddl += f"    (= (capacitat h{i+1}) 4)\n" # Totes grans per evitar descarts per capacitat
    pddl += "\n"

    # 2. Persones (Totes compatibles)
    for i in range(num_reservas):
        pddl += f"    (= (persones r{i+1}) 2)\n" # Totes caben arreu
    pddl += "\n"

    # 3. GENERACIÓ DE DIES (El cor del conflicte)
    center_day = num_dias / 2
    
    # Desviació estàndard:
    # Si ratio = 0 (uniforme), sigma és infinit (o molt gran).
    # Si ratio = 1 (concentrat), sigma és molt petit (ex: 2 dies).
    # Formula heurística:
    if conflict_ratio < 0.1:
        sigma = num_dias * 10 # Pràcticament uniforme
    else:
        # Com més ratio, menys sigma. 
        # Ratio 1.0 -> sigma = num_dias * 0.05 (molt estret)
        # Ratio 0.5 -> sigma = num_dias * 0.25
        factor = (1.1 - conflict_ratio) * 0.4 
        sigma = num_dias * factor

    for i in range(num_reservas):
        r = f"r{i+1}"
        
        # Durada aleatòria (però curta per permetre Tetris)
        durada = random.randint(2, 5) 
        
        # Triar dia d'inici basat en la distribució
        if conflict_ratio < 0.05:
            start_day = random.randint(1, num_dias - durada + 1)
        else:
            # Mostreig Gaussià centrat al mig del calendari
            val = int(np.random.normal(center_day, sigma))
            # Assegurar límits
            start_day = max(1, min(num_dias - durada + 1, val))
        
        # Generar predicats
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
    Genera 5 problemes amb dificultat incremental.
    """
    # Configuracions: (Nom, Reserves, Habitacions, Dies , Conflict Ratio)
    configuracions = [
        ("prob01001", 25, 15, 15, 0.0),
        ("prob01002", 25, 15, 15, 0.2),
        ("prob01003", 25, 15, 15, 0.4),
        ("prob01004", 25, 15, 15, 0.6),
        ("prob01005", 25, 15, 15, 0.8),
        ("prob01006", 25, 15, 15, 1.0),
    ]


    print("Generant suite de problemes...")
    for conf in configuracions:
        nom, r, h, d, ratio = conf
        nom_fitxer = f"./extensions/ext1/1.1/{nom}.pddl"
        
        contingut = generar_problema_ext1_conflictiu(r, h, d, seed=42, conflict_ratio=ratio)
        
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        
        print(f" -> Generat {nom_fitxer}: {r} res, {h} hab, {d} dies.")

generar_suite_escalable()
