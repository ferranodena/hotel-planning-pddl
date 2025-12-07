import random
import os

def sample_centered(center, sigma, min_val, max_val):
    """
    Genera un valor aproximadament centrat al centre utilitzant random.gauss().
    """
    val = int(sum(random.gauss(center, sigma) for _ in range(3)) / 3)
    return max(min_val, min(max_val, val))

def generar_problema_ext3_mitja(num_reservas, num_habitaciones, num_dias, conflict_ratio, seed=None):
    """
    Genera un problema PDDL de mida mitjana/no trivial per al domini hotel-extensio3.
    """
    if seed is not None:
        random.seed(seed)

    prob_name = f"ext3_mid_{num_reservas}r_{num_habitaciones}h_{num_dias}d_{int(conflict_ratio*100)}"

    pddl = f"(define (problem {prob_name})\n"
    pddl += "  (:domain hotel-extensio3)\n"
    pddl += "  (:requirements :typing :negative-preconditions :adl :fluents)\n\n"

    # OBJECTES
    pddl += "  (:objects\n"
    pddl += f"    {' '.join(f'r{i+1}' for i in range(num_reservas))} - reserva\n"
    pddl += f"    {' '.join(f'h{i+1}' for i in range(num_habitaciones))} - habitacio\n"
    pddl += f"    {' '.join(f'd{i+1}' for i in range(num_dias))} - dia\n"
    pddl += "  )\n\n"

    # INIT
    pddl += "  (:init\n"
    pddl += "    (= (total-reserves-descartades) 0)\n"
    pddl += "    (= (total-places-descartades) 0)\n\n"

    # Capacitats habitacions (2-7 persones)
    for i in range(num_habitaciones):
        cap = random.randint(2, 7)
        pddl += f"    (= (capacitat h{i+1}) {cap})\n"
    pddl += "\n"

    # Persones reserves (1-5)
    for i in range(num_reservas):
        pers = random.randint(1, 5)
        pddl += f"    (= (persones r{i+1}) {pers})\n"
    pddl += "\n"

    # Dies de reserva amb solapaments
    center_day = num_dias / 2
    sigma = num_dias * ((1.1 - conflict_ratio) * 0.4) if conflict_ratio >= 0.05 else num_dias * 10

    for i in range(num_reservas):
        r = f"r{i+1}"
        durada = random.randint(2, min(5, num_dias))  # estades una mica més llargues

        if conflict_ratio < 0.05:
            start_day = random.randint(1, num_dias - durada + 1)
        else:
            start_day = sample_centered(center_day, sigma, 1, num_dias - durada + 1)

        for j in range(durada):
            dia = start_day + j
            if dia <= num_dias:
                pddl += f"    (dies-reserva {r} d{dia})\n"

    pddl += "  )\n\n"

    # GOAL I MÈTRICA
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"
    pddl += "  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))\n"
    pddl += ")\n"

    return pddl

# =========================
# Generació de problemes de mida mitjana/no trivial
# =========================
def generar_suite_ext3_mitja():
    """
    Genera problemes de mida mitjana, amb solapaments i decisions no trivials.
    """
    configuracions = [
        ("mid_prob01", 5, 4, 7, 0.2),
        ("mid_prob02", 6, 5, 10, 0.3),
        ("mid_prob03", 8, 6, 12, 0.4),
        ("mid_prob04", 10, 7, 15, 0.5),
    ]

    out_dir = "./extensions/ext3_mid/"
    os.makedirs(out_dir, exist_ok=True)

    print("Generant suite EXTENSIÓ 3 de mida mitjana/no trivial...")

    for nom, r, h, d, ratio in configuracions:
        fitxer = f"{out_dir}{nom}.pddl"
        contingut = generar_problema_ext3_mitja(r, h, d, ratio, seed=42)
        with open(fitxer, "w") as f:
            f.write(contingut)
        print(f" -> Generat {fitxer}: {r} reserves, {h} habitacions, {d} dies, ratio={ratio}")

# =========================
# MAIN
# =========================
if __name__ == "__main__":
    generar_suite_ext3_mitja()
