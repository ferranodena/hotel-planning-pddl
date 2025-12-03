import random
import os

def generar_problema_hotel_ext4_resoluble(num_reservas, num_habitaciones, num_dias, seed=None, problem_name="hotel-ext4"):
    """
    Genera un problema PDDL per hotel-extensio4 (minimitzar habitacions usades).
    """
    if seed is not None:
        random.seed(seed)

    pddl = f"(define (problem {problem_name})\n"
    pddl += "  (:domain hotel-extensio4)\n"
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    # Objectes
    pddl += "  (:objects\n"
    pddl += f"    {' '.join([f'r{i+1}' for i in range(num_reservas)])} - reserva\n"
    pddl += f"    {' '.join([f'h{i+1}' for i in range(num_habitaciones)])} - habitacio\n"
    pddl += f"    {' '.join([f'd{i+1}' for i in range(num_dias)])} - dia\n"
    pddl += "  )\n\n"

    # Init
    pddl += "  (:init\n"
    pddl += "    (= (total-assignades) 0)\n"
    pddl += "    (= (total-desperdici) 0)\n"
    pddl += "    (= (total-habitacions-usades) 0)\n\n"  # NOU: Inicialitzem comptador habitacions

    # Capacitats habitacions (1-4 persones)
    habitacions = []
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        habitacions.append(cap)
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
    pddl += "\n"

    # Persones per reserva: garantint que caben en alguna habitació
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        cap_max = max(habitacions)
        pers = random.randint(1, cap_max)
        pddl += f"    (= (persones {r_id}) {pers})\n"

    pddl += "\n"

    # Dies de cada reserva
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        max_durada = max(1, int(num_dias * 0.3))
        duracion = random.randint(1, max_durada)
        ultim_dia_inici = max(1, num_dias - duracion + 1)
        dia_inicio = random.randint(1, ultim_dia_inici)
        for j in range(duracion):
            d = f"d{dia_inicio + j}"
            pddl += f"    (dies-reserva {r_id} {d})\n"

    pddl += "  )\n\n"

    # Goal: totes assignades
    pddl += "  (:goal (and\n"
    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pddl += f"    (assignada {r_id})\n"
    pddl += "  ))\n\n"

    # Metric: 
    # 1. Assignacions (Pes 1M)
    # 2. Habitacions usades (Pes 1k) - restem perquè volem minimitzar
    # 3. Desperdici (Pes 1) - restem
    pddl += "  (:metric maximize (- (- (* 1000000 (total-assignades)) (* 1000 (total-habitacions-usades))) (total-desperdici)))\n"

    pddl += ")\n"
    return pddl


def generar_suite_resoluble_ext4():
    """Genera una suite de problemes resolubles per l'extensió 4"""
    # Format: nom, reserves, habitacions, dies
    configuracions = [
        ("prob0401", 3, 2, 3),
        ("prob0402", 6, 4, 6),
        ("prob0403", 9, 6, 9),
        ("prob0404", 12, 8, 12),
        ("prob0405", 15, 10, 15),
    ]

    # Creem carpeta diferent per l'extensió 4
    os.makedirs("./extensions/ext4", exist_ok=True)

    for nom, r, h, d in configuracions:
        nom_fitxer = f"./extensions/ext4/{nom}.pddl"
        contingut = generar_problema_hotel_ext4_resoluble(r, h, d, seed=42, problem_name=nom)
        with open(nom_fitxer, "w") as f:
            f.write(contingut)
        print(f"Generat {nom_fitxer}: {r} reserves, {h} habitacions, {d} dies.")


if __name__ == "__main__":
    generar_suite_resoluble_ext4()
