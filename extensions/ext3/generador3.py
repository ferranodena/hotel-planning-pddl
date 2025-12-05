import random
import argparse
import os


def sample_centered(center, sigma, min_val, max_val):
    """
    Genera un valor aproximadament concentrat al centre utilitzant
    random.gauss() diverses vegades dins Python pur.
    """
    val = int(sum(random.gauss(center, sigma) for _ in range(3)) / 3)
    return max(min_val, min(max_val, val))


def generar_problema_ext3(num_reservas, num_habitaciones, num_dias, conflict_ratio, seed=None):
    """
    Genera un problema PDDL per al domini hotel-extensio3.
    """
    if seed is not None:
        random.seed(seed)

    prob_name = f"ext3_{num_reservas}r_{num_habitaciones}h_{num_dias}d_{int(conflict_ratio*100)}"

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

    # Capacitats habitacions
    for i in range(num_habitaciones):
        cap = random.randint(1, 4)
        pddl += f"    (= (capacitat h{i+1}) {cap})\n"
    pddl += "\n"

    # Persones reserves
    for i in range(num_reservas):
        pers = random.randint(1, 4)
        pddl += f"    (= (persones r{i+1}) {pers})\n"
    pddl += "\n"

    # Dies
    center_day = num_dias / 2
    if conflict_ratio < 0.1:
        sigma = num_dias * 10
    else:
        sigma = num_dias * ((1.1 - conflict_ratio) * 0.4)

    for i in range(num_reservas):
        r = f"r{i+1}"
        durada = random.randint(2, 5)

        if conflict_ratio < 0.05:
            start_day = random.randint(1, num_dias - durada + 1)
        else:
            start_day = sample_centered(
                center_day, sigma,
                1, num_dias - durada + 1
            )

        for j in range(durada):
            dia = start_day + j
            if dia <= num_dias:
                pddl += f"    (dies-reserva {r} d{dia})\n"

    pddl += "  )\n\n"

    # GOAL I MÈTRICA
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"
    pddl += "  (:metric minimize (+ (total-reserves-descartades) (total-places-descartades)))\n"
    pddl += ")\n"

    return pddl


# =====================================================
# SUITE CREIXENT REAL
# =====================================================
def generar_suite_ext3_creixent():
    """
    Genera problemes amb mida creixent:
    petites → mitjanes → grans → molt grans.
    """
    configuracions = [
        ("prob03_01", 10, 5, 10, 0.1),
        ("prob03_02", 20, 10, 15, 0.3),
        ("prob03_03", 35, 15, 20, 0.5),
        ("prob03_04", 50, 20, 25, 0.7),
        ("prob03_05", 80, 30, 30, 1.0),
    ]

    out_dir = "./extensions/ext3/"
    os.makedirs(out_dir, exist_ok=True)

    print("Generant suite EXTENSIÓ 3 amb mida creixent...")

    for nom, r, h, d, ratio in configuracions:
        fitxer = f"{out_dir}{nom}.pddl"
        contingut = generar_problema_ext3(r, h, d, ratio, seed=42)
        with open(fitxer, "w") as f:
            f.write(contingut)
        print(f" -> Generat {fitxer}: {r} reserves, {h} habitacions, {d} dies, ratio={ratio}")


# =====================================================
# MAIN ORQUESTRADOR
# =====================================================
if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", help="Fitxer de sortida")
    parser.add_argument("--reservas", type=int, default=20)
    parser.add_argument("--habitaciones", type=int, default=10)
    parser.add_argument("--dias", type=int, default=30)
    parser.add_argument("--conflict", type=float, default=0.5)
    parser.add_argument("--seed", type=int, default=None)

    args = parser.parse_args()

    if args.output:
        content = generar_problema_ext3(
            args.reservas, args.habitaciones, args.dias,
            conflict_ratio=args.conflict, seed=args.seed
        )
        os.makedirs(os.path.dirname(args.output), exist_ok=True)
        with open(args.output, "w") as f:
            f.write(content)
        print(f"Problema generat a {args.output}")
    else:
        generar_suite_ext3_creixent()
