import random
import argparse
import os

def generar_problema_hotel_orientacio(num_reservas, num_habitaciones, num_dias, prob_match=0.5, seed=None, problem_name="hotel-orientacio"):
    if seed is not None:
        random.seed(seed)

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
    # 1. GENERACIÓ D'HABITACIONS (DESEQUILIBRADA)
    # ---------------------------------------------------------
    # Triem una orientació dominant per fer l'hotel "difícil" si no coincideixes
    orientacio_dominant = random.choice(orientacions)
    
    # Pesos: 70% per la dominant, 10% per la resta
    pesos_habs = []
    for o in orientacions:
        if o == orientacio_dominant:
            pesos_habs.append(70)
        else:
            pesos_habs.append(10)
            
    distribucio_habs = {o: 0 for o in orientacions}
    
    pddl += "    ;; Habitacions: Capacitat i Orientacio\n"
    for i in range(num_habitaciones):
        h_id = f"h{i+1}"
        cap = random.randint(1, 4)
        
        # Triem orientació amb biaix
        orient_habitacio = random.choices(orientacions, weights=pesos_habs, k=1)[0]
        
        distribucio_habs[orient_habitacio] += 1
        
        pddl += f"    (= (capacitat {h_id}) {cap})\n"
        pddl += f"    (orientada {h_id} {orient_habitacio})\n"
    pddl += "\n"

    # ---------------------------------------------------------
    # 2. GENERACIÓ DE RESERVES (Demanda)
    # ---------------------------------------------------------
    pddl += "    ;; Reserves: Persones i Preferència d'Orientació\n"
    
    # Calculem quantes reserves segueixen l'oferta (match) i quantes no (random)
    num_match = int(num_reservas * prob_match)
    num_random = num_reservas - num_match
    
    preferencies = []
    
    # A) Reserves MATCH: Segueixen la distribució esbiaixada de l'hotel
    # Si l'hotel és 70% Nord, aquestes reserves seran 70% Nord.
    if num_match > 0:
        opcions_ponderades = []
        for o, count in distribucio_habs.items():
            if count > 0:
                opcions_ponderades.extend([o] * count)
        if not opcions_ponderades: opcions_ponderades = orientacions
        
        for _ in range(num_match):
            preferencies.append(random.choice(opcions_ponderades))

    # B) Reserves RANDOM: Totalment uniformes (25% cadascuna)
    # Aquestes xocaran amb l'hotel esbiaixat.
    for _ in range(num_random):
        preferencies.append(random.choice(orientacions)) # Uniforme pur
        
    random.shuffle(preferencies)

    for i in range(num_reservas):
        r_id = f"r{i+1}"
        pers = random.randint(1, 4)
        orient_pref = preferencies[i]

        pddl += f"    (= (persones {r_id}) {pers})\n"
        pddl += f"    (vol-orientacio {r_id} {orient_pref})\n"
    pddl += "\n"

    # ---------------------------------------------------------
    # 3. CALENDARI
    # ---------------------------------------------------------
    pddl += "    ;; Calendari de reserves\n"
    for i in range(num_reservas):
        r = f"r{i+1}"
        if num_dias > 1:
            dia_inicio = random.randint(1, num_dias - 1) 
        else:
            dia_inicio = 1
        dies_restants = num_dias - dia_inicio + 1
        duracion = random.randint(1, dies_restants)
        for j in range(duracion):
            d = f"d{dia_inicio + j}"
            pddl += f"    (dies-reserva {r} {d})\n"
    
    pddl += "  )\n\n"
    pddl += "  (:goal (forall (?r - reserva) (processada ?r)))\n\n"
    pddl += "  (:metric minimize (total-descartades))\n"
    pddl += ")\n"
    return pddl

# ... (Resta del codi boilerplate igual) ...
def generar_suite_orientacio(base_seed=None):
    pass 

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generador PDDL Hotel amb Orientació")
    parser.add_argument("--single", action="store_true", help="Generar un sol problema.")
    parser.add_argument("--reservas", type=int, default=5)
    parser.add_argument("--habitaciones", type=int, default=3)
    parser.add_argument("--dias", type=int, default=10)
    parser.add_argument("--output", type=str, default="problema_orientacio.pddl")
    parser.add_argument("--seed", type=int, default=None, help="Llavor per a la generació aleatòria.")
    parser.add_argument("--match", type=float, default=0.5, help="Probabilitat (0.0-1.0) que la demanda coincideixi amb l'oferta.")

    args = parser.parse_args()

    if args.single:
        contingut = generar_problema_hotel_orientacio(
            args.reservas, args.habitaciones, args.dias, 
            prob_match=args.match, seed=args.seed
        )
        with open(args.output, "w") as f:
            f.write(contingut)
    else:
        pass
