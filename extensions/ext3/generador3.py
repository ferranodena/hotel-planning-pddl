#!/usr/bin/env python3
"""
Generador de problemes PDDL - Extensió 3 (descarte + places)

Ús bàsic:
    python generador3.py \
        --output problema.pddl \
        --reservas 20 \
        --habitaciones 10 \
        --dias 25 \
        --seed 123

- Genera:
    * Tipus: reserva, habitacio, dia
    * Fluents numèrics: capacitat(h), persones(r)
    * Predicats: dies-reserva(r, d)
- Les capacitats de les habitacions i el nº de persones per reserva es
  trien aleatòriament (no trivial).
- Els intervals de dies de cada reserva també es generen de forma aleatòria,
  amb solapaments raonables per crear conflictes.
"""

import argparse
import random
import sys


def parse_args():
    parser = argparse.ArgumentParser(description="Generador PDDL Extensió 3")
    parser.add_argument("--output", required=True, help="Fitxer de sortida .pddl")
    parser.add_argument("--reservas", type=int, required=True, help="Nombre de reserves")
    parser.add_argument("--habitaciones", type=int, required=True, help="Nombre d'habitacions")
    parser.add_argument("--dias", type=int, required=True, help="Nombre de dies (max 30 al domini)")
    parser.add_argument("--seed", type=int, default=None, help="Seed aleatòria (opcional)")
    return parser.parse_args()


def generar_capacitats(num_hab):
    """
    Retorna una llista de capacitats per a cada habitació.
    Per fer-ho més interessant, barrejarem habitacions petites i grans.
    """
    capacitats = []
    for _ in range(num_hab):
        # pots ajustar aquest rang si al domini tens límits diferents
        # aquí fem habitacions de 1 a 7 places
        cap = random.choice([1, 2, 2, 3, 3, 4, 5, 7])
        capacitats.append(cap)
    return capacitats


def generar_persones_reserva(num_res):
    """
    Nº de persones per reserva: 1..4 (segons enunciat).
    Es podria biasar una mica cap a parelles/famílies.
    """
    persones = []
    for _ in range(num_res):
        p = random.choice([1, 2, 2, 3, 4])  # més probabilitat de 2 i 3
        persones.append(p)
    return persones


def generar_intervals_reserva(num_res, num_dies):
    """
    Genera (inici, fi) per cada reserva dins [1, num_dies].
    Es força que inic < fi i es permeten solapaments.
    """
    intervals = []
    for _ in range(num_res):
        if num_dies <= 1:
            # cas degenerat, totes d'un sol dia
            start = end = 1
        else:
            length = random.randint(1, max(1, num_dies // 3))  # estades de 1 a (num_dies/3) dies
            start = random.randint(1, num_dies - length + 1)
            end = start + length - 1
        intervals.append((start, end))
    return intervals


def escriure_problema(output_path, num_res, num_hab, num_dies,
                      capacitats, persones, intervals):
    """
    Escriu un problema PDDL compatible amb el domini de l'Extensió 3.
    Assumim que:
      - Tipus: reserva, habitacio, dia
      - Fluents: capacitat(h), persones(r), total-reserves-descartades, total-places-descartades
      - Predicats: dies-reserva(r, d)
      - Objectiu: totes les reserves processades (es defineix al domini).
    """

    # Assegurem que no superem els 30 dies del domini original
    if num_dies > 30:
        print("AVÍS: num_dies > 30; es tallarà a 30 per complir l'enunciat.")
        num_dies = 30

    # Noms d'objectes
    reserves_ids = [f"r{i+1}" for i in range(num_res)]
    habitacions_ids = [f"h{i+1}" for i in range(num_hab)]
    dies_ids = [f"d{i+1}" for i in range(num_dies)]

    with open(output_path, "w") as f:
        f.write(f"(define (problem ext3_auto_r{num_res}_h{num_hab}_d{num_dies})\n")
        f.write("  (:domain hotel-extensio3)\n")
        f.write("  (:requirements :typing :negative-preconditions :adl :fluents)\n\n")

        # OBJECTES
        f.write("  (:objects\n")
        if reserves_ids:
            f.write("    " + " ".join(reserves_ids) + " - reserva\n")
        if habitacions_ids:
            f.write("    " + " ".join(habitacions_ids) + " - habitacio\n")
        if dies_ids:
            f.write("    " + " ".join(dies_ids) + " - dia\n")
        f.write("  )\n\n")

        # INIT
        f.write("  (:init\n")
        f.write("    (= (total-reserves-descartades) 0)\n")
        f.write("    (= (total-places-descartades) 0)\n\n")

        # Capacitats
        for h_id, cap in zip(habitacions_ids, capacitats):
            f.write(f"    (= (capacitat {h_id}) {cap})\n")

        f.write("\n")

        # Persones per reserva
        for r_id, p in zip(reserves_ids, persones):
            f.write(f"    (= (persones {r_id}) {p})\n")

        f.write("\n")

        # Dies de cada reserva
        # intervals[i] = (start, end) en [1, num_dies]
        for r_id, (start, end) in zip(reserves_ids, intervals):
            for d in range(start, end + 1):
                if 1 <= d <= num_dies:
                    d_id = f"d{d}"
                    f.write(f"    (dies-reserva {r_id} {d_id})\n")

        f.write("  )\n\n")

        # Goal: totes processades (suposant que el domini defineix processada/?)
        # Si el teu domini ja fixa aquest goal, podria ser coherent reusar-lo.
        f.write("  (:goal (forall (?r - reserva) (processada ?r)))\n\n")

        # Mètrica com a l'enunciat d'ext3 (potser ja està al domini, però aquí
        # la posem per si vols dominar-la des del problema).
        f.write("  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))\n")

        f.write(")\n")


def main():
    args = parse_args()
    if args.seed is not None:
        random.seed(args.seed)

    num_res = args.reservas
    num_hab = args.habitaciones
    num_dies = args.dias

    # Evita problemes ridículs o massa grans
    if num_res <= 0 or num_hab <= 0 or num_dies <= 0:
        print("Els valors de reserves, habitacions i dies han de ser positius.", file=sys.stderr)
        sys.exit(1)
    if num_res > 100 or num_hab > 50 or num_dies > 30:
        print("AVÍS: valors molt grans; pot ser lent per Metric-FF.", file=sys.stderr)

    capacitats = generar_capacitats(num_hab)
    persones = generar_persones_reserva(num_res)
    intervals = generar_intervals_reserva(num_res, num_dies)

    escriure_problema(args.output, num_res, num_hab, num_dies,
                      capacitats, persones, intervals)


if __name__ == "__main__":
    main()
