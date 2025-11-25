import random
import argparse
import os

def generar_problema_hotel_basic(num_reservas, num_habitaciones, num_dias, seed=None, problem_name="hotel-basic"):
    """
    Genera un fitxer de problema PDDL per al domini 'hotelbasic'.
    Calcula la compatibilitat estàtica (predicat 'compatible') basant-se en 
    capacitats i mides de grup aleatòries, sense usar fluents numèrics al PDDL final.
    """
    if seed is not None:
        random.seed(seed)

    # --- Capçalera ---
    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotelbasic)\n"
    
    # --- Objectes ---
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += "  )\n\n"

    # --- Init ---
    pddl += "  (:init\n"
    
    # 1. Generar capacitats INTERNES (no s'escriuen al PDDL, només per càlcul)
    capacitats_habitacions = {}
    pddl += "    ;; Capacitats de les habitacions (implícites per al càlcul de compatibilitat):\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        capacitats_habitacions[h_id] = cap
        pddl += f"    ;; {h_id}: {cap} persones\n"
    pddl += "\n"

    # 2. Generar compatibilitats (Predicat 'compatible')
    pddl += "    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        persones = random.randint(1, 4)
        pddl += f"    ;; Reserva {r_id} ({persones} pax): "
        
        compatibles_trobades = []
        for h_id, cap_h in capacitats_habitacions.items():
            if persones <= cap_h:
                compatibles_trobades.append(h_id)
                # AFEGIM EL PREDICAT AL PDDL
                pddl += f"\n    (compatible {r_id} {h_id})"
        
        if not compatibles_trobades:
            pddl += " CAP (impossible assignar)"
        pddl += "\n"
    pddl += "\n"

    # 3. Generar dies de reserva (Predicat 'dies-reserva')
    pddl += "    ;; Calendari de reserves\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        # Durada aleatòria (màxim 5 dies o el total disponible)
        max_durada = min(5, num_dias)
        duracion = random.randint(1, max_durada)
        
        # Evitar índexs fora de rang
        ultim_dia_possible = max(1, num_dias - duracion + 1)
        dia_inicio = random.randint(1, ultim_dia_possible)
        
        for j in range(duracion):
            d_idx = dia_inicio + j
            # Assegurar que no excedim el nombre de dies definits
            if d_idx <= num_dias:
                d = f"d{d_idx}"
                pddl += f"    (dies-reserva {r} {d})\n"
    
    pddl += "  )\n\n"

    # --- Goal ---
    # L'objectiu és que totes estiguin assignades
    pddl += "  (:goal (and\n"
    for i in range(num_reservas):
        pddl += f"    (assignada r{i+1})\n"
    pddl += "  ))\n"
    
    pddl += ")\n"

    return pddl

def generar_suite_escalable():
    """
    Genera 5 problemes amb dificultat incremental per al domini hotelbasic.
    """
    # Configuracions: (Nom, Reserves, Habitacions, Dies)
    configuracions = [
        ("prob0001", 3, 2, 5),
        ("prob0002", 6, 3, 10),    
        ("prob0003", 10, 5, 15),
        ("prob0004", 20, 8, 30),  
        ("prob0005", 40, 15, 60)   
    ]

    print("Generant suite de problemes per a 'hotelbasic'...")
    for conf in configuracions:
        nom, r, h, d = conf
        nom_fitxer = f"./basic/{nom}.pddl"
        
        contingut = generar_problema_hotel_basic(r, h, d, seed=42, problem_name=nom)
        
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        
        print(f" -> Generat {nom_fitxer}: {r} reserves, {h} habitacions, {d} dies.")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador PDDL Hotel Bàsic (Escalable)")
    parser.add_argument("--single", action="store_true", help="Generar un sol problema en lloc de la suite.")
    parser.add_argument("--reservas", type=int, default=5)
    parser.add_argument("--habitaciones", type=int, default=3)
    parser.add_argument("--dias", type=int, default=10)
    parser.add_argument("--output", type=str, default="problema_basic.pddl")

    args = parser.parse_args()

    if args.single:
        # Generar un sol problema personalitzat
        contingut = generar_problema_hotel_basic(args.reservas, args.habitaciones, args.dias, seed=42)
        with open(args.output, "w") as f:
            f.write(contingut)
        print(f"Problema individual generat a: {args.output}")
    else:
        # Generar la suite completa de 5 problemes
        generar_suite_escalable()
