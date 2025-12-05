import random
import argparse
import os

def generar_problema_hotel_orientacio(num_reservas, num_habitaciones, num_dias, seed=None, problem_name="hotel-orientacio"):
    """
    Genera un fitxer de problema PDDL compatible amb el domini amb Orientació.
    """
    if seed is not None:
        random.seed(seed)

    # --- Capçalera ---
    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio2)\n"
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    # --- Objectes ---
    orientacions = ["n", "s", "e", "o"]
    
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += f"    {' '.join(orientacions)} - orientacio\n"
    pddl += "  )\n\n"

    # --- Init ---
    pddl += "  (:init\n"
    pddl += "    (= (total-descartades) 0)\n"
    
    # ---------------------------------------------------------
    # GARANTIA D'ORIENTACIONS
    # ---------------------------------------------------------
    orientacions_pool = orientacions[:] 
    while len(orientacions_pool) < num_habitaciones:
        orientacions_pool.append(random.choice(orientacions))
    random.shuffle(orientacions_pool)

    # 2. Configuració Habitacions
    pddl += "    ;; Habitacions: Capacitat i Orientacio\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        orient_habitacio = orientacions_pool[i]
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
        pddl += f"    (orientada {h_id} {orient_habitacio})\n"
    pddl += "\n"

    # 3. Configuració Reserves
    pddl += "    ;; Reserves: Persones i Preferència d'Orientació\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, 4)
        orient_pref = random.choice(orientacions)
        pddl += f"    (= (persones {r_id}) {pers})\n"
        pddl += f"    (vol-orientacio {r_id} {orient_pref})\n"
    pddl += "\n"

    # ---------------------------------------------------------
    # 4. CANVI REALITZAT: Dia inici random + Durada random fins al final
    # ---------------------------------------------------------
    pddl += "    ;; Calendari de reserves\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        
        # 1. Triem primer el dia d'inici (qualsevol dia excepte l'últim absolut, per tenir mínim 1 dia)
        # Si num_dias és molt petit (ex: 1), forcem inici a 1.
        if num_dias > 1:
            dia_inicio = random.randint(1, num_dias - 1) 
        else:
            dia_inicio = 1

        # 2. Calculem quants dies queden des d'aquest inici fins al final
        dies_restants = num_dias - dia_inicio + 1
        
        # 3. La durada és un random entre 1 i els dies que queden
        duracion = random.randint(1, dies_restants)
        
        for j in range(duracion):
            d = f"d{dia_inicio + j}"
            pddl += f"    (dies-reserva {r} {d})\n"
    
    pddl += "  )\n\n"

    # --- Goal ---
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"

    # --- Metric ---
    pddl += "  (:metric minimize (total-descartades))\n"
    
    pddl += ")\n"
    return pddl


def generar_suite_orientacio(base_seed=None):
    # Configuracions de la suite (Exemple amb els 5 problemes estàndard)
    configuracions = [
        ("prob0201", 30, 15, 30), 
    ]

    print("Generant suite de problemes amb ORIENTACIÓ...")
    for i, conf in enumerate(configuracions):
        nom, r, h, d = conf
        nom_fitxer = f"./extensions/ext2/{nom}.pddl"
        
        current_seed = (base_seed + i) if base_seed is not None else None
        
        contingut = generar_problema_hotel_orientacio(r, h, d, seed=current_seed, problem_name=nom)
        
        # Assegurem que el directori existeix
        os.makedirs(os.path.dirname(nom_fitxer), exist_ok=True)
        
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        
        seed_msg = f"Seed: {current_seed}" if current_seed is not None else "Seed: Random"
        print(f" -> Generat {nom_fitxer}: {r} res, {h} hab, {d} dies. [{seed_msg}]")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador PDDL Hotel amb Orientació")
    parser.add_argument("--single", action="store_true", help="Generar un sol problema.")
    parser.add_argument("--reservas", type=int, default=5)
    parser.add_argument("--habitaciones", type=int, default=3)
    parser.add_argument("--dias", type=int, default=10)
    parser.add_argument("--output", type=str, default="problema_orientacio.pddl")
    parser.add_argument("--seed", type=int, default=None, help="Llavor per a la generació aleatòria.")

    args = parser.parse_args()

    if args.single:
        contingut = generar_problema_hotel_orientacio(args.reservas, args.habitaciones, args.dias, seed=args.seed)
        with open(args.output, "w") as f:
            f.write(contingut)
        print(f"Problema individual generat a: {args.output} (Seed: {args.seed})")
    else:
        generar_suite_orientacio(base_seed=args.seed)
