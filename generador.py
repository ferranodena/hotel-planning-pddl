import random
import argparse

def generar_problema_hotel(num_reservas, num_habitaciones, num_dias, seed=None):
    """
    Genera una definició de problema PDDL per al domini de l'hotel.
    Ara calcula la compatibilitat basant-se en capacitats i mides de grup aleatòries.
    """
    if seed is not None:
        random.seed(seed)

    # --- Definició del problema ---
    problem_name = f"hotel-r{num_reservas}-h{num_habitaciones}-d{num_dias}"
    pddl_content = f"(define (problem {problem_name})\n"
    pddl_content += "  (:domain hotelbasic)\n\n"

    # --- Objectes ---
    pddl_content += "  (:objects\n"
    pddl_content += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl_content += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl_content += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl_content += "  )\n\n"

    # --- Estat inicial (:init) ---
    pddl_content += "  (:init\n"

    # 1. Generar capacitats de les habitacions (Dades internes del generador)
    # No cal escriure-les al PDDL si el domini no utilitza números, 
    # però les usem per calcular la compatibilitat.
    capacitats_habitacions = {}
    pddl_content += "    ;; Capacitats de les habitacions (generades aleatòriament 1-4):\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        capacitats_habitacions[h_id] = cap
        pddl_content += f"    ;; {h_id}: {cap} persones\n"
    
    pddl_content += "\n"

    # 2. Generar nombre de persones per reserva i calcular compatibilitats
    pddl_content += "    ;; Compatibilitats (basades en persones_reserva <= capacitat_habitacio):\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        persones = random.randint(1, 4)
        
        pddl_content += f"    ;; Reserva {r_id} és per a {persones} persones\n"
        
        # Comprovem compatibilitat amb totes les habitacions
        for h_id, cap_h in capacitats_habitacions.items():
            if persones <= cap_h:
                pddl_content += f"    (compatible {r_id} {h_id})\n"
    
    pddl_content += "\n"

    # 3. Generar dies de reserva aleatoris (això es manté igual)
    pddl_content += "    ;; Dies de reserva assignats:\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        # Durada aleatòria de la reserva (entre 1 i 5 dies)
        duracion = random.randint(1, 5)
        # Assegurem que no surti del rang de dies
        if num_dias - duracion + 1 < 1:
             duracion = 1 # fallback per si el num_dias és molt petit
        
        dia_inicio = random.randint(1, max(1, num_dias - duracion + 1))
        
        for j in range(duracion):
            d = f"d{dia_inicio + j}"
            pddl_content += f"    (dies-reserva {r} {d})\n"
    
    pddl_content += "  )\n\n"

    # --- Objectiu (:goal) ---
    pddl_content += "  (:goal (and\n"
    for i in range(num_reservas):
        pddl_content += f"    (assignada r{i+1})\n"
    pddl_content += "  ))\n"
    pddl_content += ")\n"

    return pddl_content

if __name__ == '__main__':
    # --- Configuració per executar des de la línia de comandes ---
    parser = argparse.ArgumentParser(description="Generador de problemes PDDL per a la planificació d'hotels.")
    parser.add_argument("--reservas", type=int, default=5, help="Nombre de reserves.")
    parser.add_argument("--habitaciones", type=int, default=3, help="Nombre d'habitacions.")
    parser.add_argument("--dias", type=int, default=30, help="Nombre de dies.")
    parser.add_argument("--seed", type=int, default=42, help="Llavor aleatòria.")
    parser.add_argument("--output", type=str, default="problema.pddl", help="Fitxer de sortida.")
    
    args = parser.parse_args()

    # Generar el contingut del problema
    problema_pddl = generar_problema_hotel(
        num_reservas=args.reservas,
        num_habitaciones=args.habitaciones,
        num_dias=args.dias,
        seed=args.seed
    )

    # Guardar el fitxer
    with open(args.output, "w") as f:
        f.write(problema_pddl)

    print(f"Problema PDDL generat i guardat a '{args.output}'")
    print(f"Configuració: {args.reservas} reserves, {args.habitaciones} habitacions, {args.dias} dies.")
