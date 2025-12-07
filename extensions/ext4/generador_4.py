import random
import os
import argparse
import sys

def generar_problema_hotel_ext4(num_reservas, num_habitaciones, num_dias, max_capacitat=4, seed=None, problem_name="problema-extensio4-logic"):
    """
    Genera un problema PDDL per a hotel-extensio4-logic (sense fluents numèrics, amb predicats i objectes n1..nN).
    """
    if seed is not None:
        random.seed(seed)

    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio4-logic)\n"
    pddl += "  (:requirements :typing :adl)\n\n"

    pddl += "  (:objects \n"
    # Reserves
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    # Habitacions
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    # Dies
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    
    pddl += "\n    ;; Objectes per simular els números de capacitat\n"
    pddl += f"    {' '.join([f'n{i+1}' for i in range(max_capacitat)])} - nombre\n"
    pddl += "  )\n\n"

    pddl += "  (:init\n"

    # Dies que ocupa cada reserva
    pddl += "    ;; Dies que ocupa cada reserva\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        max_durada = max(1, int(num_dias * 0.3))
        duracion = random.randint(1, max_durada)
        
        ultim_dia_inici = max(1, num_dias - duracion + 1)
        dia_inicio = random.randint(1, ultim_dia_inici)
        
        for j in range(duracion):
            d_id = f"d{dia_inicio + j}"
            pddl += f"    (dies-reserva {r_id} {d_id})\n"
    pddl += "\n"

    # Capacitats de les habitacions
    pddl += "    ;; Capacitats de les habitacions\n"
    habitacions_caps = []
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, max_capacitat)
        habitacions_caps.append(cap)
        pddl += f"    (capacitat {h_id} n{cap})\n"
    pddl += "\n"

    # Persones per reserva - CORREGIT: garantir que caben en alguna habitació
    pddl += "    ;; Persones per reserva\n"
    cap_max_disponible = max(habitacions_caps) if habitacions_caps else max_capacitat
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, cap_max_disponible)  # Sempre caben en alguna habitació
        pddl += f"    (persones {r_id} n{pers})\n"
    pddl += "\n"

    # Taula de veritat: Menor o Igual - CORREGIT: generar tota la matriu
    pddl += "    ;; TABLA DE VERITAT: Menor o Igual\n"
    for i in range(1, max_capacitat + 1):
        line_preds = []
        for j in range(1, max_capacitat + 1):
            if i <= j:  # Només generar i <= j
                line_preds.append(f"(menor-o-igual n{i} n{j})")
        if line_preds:
            pddl += f"    {' '.join(line_preds)}\n"
    
    pddl += "  )\n\n"

    # GOAL
    pddl += "  ;; L'objectiu és que totes les reserves estiguin processades.\n"
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n"
    
    pddl += ")\n"
    return pddl

# --- AQUESTA ÉS LA PART NOVA QUE HAS DE CANVIAR ---
if __name__ == "__main__":
    # Si rep arguments, actua com a eina de línia de comandes
    if len(sys.argv) > 1:
        parser = argparse.ArgumentParser(description='Generador de problemes PDDL Extensió 4')
        parser.add_argument('--output', required=True, help='Fitxer de sortida')
        parser.add_argument('--reservas', type=int, default=5, help='Nombre de reserves')
        parser.add_argument('--habitaciones', type=int, default=5, help='Nombre d\'habitacions')
        parser.add_argument('--dias', type=int, default=30, help='Nombre de dies')
        parser.add_argument('--seed', type=int, default=None, help='Llavor aleatòria')
        # Argument dummy per compatibilitat si l'script d'experiment el passa
        parser.add_argument('--conflict', type=float, default=0.0, help='(Ignorat en aquesta versió lògica)')

        args = parser.parse_args()

        content = generar_problema_hotel_ext4(
            num_reservas=args.reservas,
            num_habitaciones=args.habitaciones,
            num_dias=args.dias,
            seed=args.seed
        )

        # Assegurar que el directori de sortida existeix
        output_dir = os.path.dirname(args.output)
        if output_dir and not os.path.exists(output_dir):
            os.makedirs(output_dir)

        with open(args.output, "w") as f:
            f.write(content)
            
    # Si no rep arguments, fa la generació per defecte (per compatibilitat amb el teu ús anterior)
    else:
        def generar_suite_logic():
            """Genera una suite de problemes per al domini lògic."""
            configuracions = [
                ("prob_logic_01", 3, 2, 4),
                ("prob_logic_02", 5, 3, 6),
                ("prob_logic_03", 8, 4, 8),
            ]

            carpeta = "./extensions/ext4_logic"
            os.makedirs(carpeta, exist_ok=True)

            for nom, r, h, d in configuracions:
                nom_fitxer = f"{carpeta}/{nom}.pddl"
                contingut = generar_problema_hotel_ext4(r, h, d, max_capacitat=4, seed=42, problem_name=nom)
                with open(nom_fitxer, "w") as f:
                    f.write(contingut)
                print(f"✓ Generat {nom_fitxer}: {r} reserves, {h} habitacions, {d} dies.")
        
        generar_suite_logic()
