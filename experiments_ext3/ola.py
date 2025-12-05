import subprocess
import csv
import os
import re

# ------------------------------
# Configuració
# ------------------------------

PLANIFICADOR_CMD = r"C:\Users\Usuario\Documents\ABIA\PDDL\FFv2.3-exe\metricff"
DOMINI = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\Extensions\ext3\dom3.pddl"
PROBLEMES_DIR = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\Extensions\ext3"
CSV_FILE = "resultats_experiments.csv"

# Exemple: informació de reserves i habitacions (s’ha de correspondre amb els problemes PDDL)
reservas_info = {
    "r1": 1, "r2": 2, "r3": 3, "r4": 2, "r5": 3,
    "r6": 4, "r7": 2, "r8": 3, "r9": 4, "r10": 1
}

habitaciones_info = {
    "h1": 1, "h2": 2, "h3": 3, "h4": 2, "h5": 3, "h6": 4, "h7": 2, "h8": 3, "h9": 4, "h10": 1,
    "h11": 3, "h12": 4, "h13": 1, "h14": 2, "h15": 3, "h16": 4, "h17": 1, "h18": 2, "h19": 3, "h20": 4,
    "h21": 1, "h22": 2, "h23": 3, "h24": 4, "h25": 1, "h26": 2, "h27": 3, "h28": 4, "h29": 1, "h30": 2,
    "h31": 3, "h32": 4, "h33": 1, "h34": 2, "h35": 3, "h36": 4, "h37": 1, "h38": 2, "h39": 3, "h40": 4,
    "h41": 1, "h42": 2, "h43": 3, "h44": 4, "h45": 1, "h46": 2, "h47": 3, "h48": 4, "h49": 1, "h50": 2
}

# ------------------------------
# Funcions auxiliars
# ------------------------------

def executar_planificador(fitxer_problema, fitxer_plan="plan_temp.plan"):
    """Executa el planificador i genera un fitxer de pla."""
    cmd = [PLANIFICADOR_CMD, "-f", fitxer_problema, "-o", DOMINI, "-O"]
    with open(fitxer_plan, "w") as f:
        subprocess.run(cmd, stdout=f, stderr=subprocess.STDOUT)
    return fitxer_plan

def parse_plan_file(plan_file):
    """Llegeix el fitxer de pla i retorna les assignacions de reserves a habitacions."""
    assignments = []
    with open(plan_file, "r") as f:
        for line in f:
            line = line.strip().lower()
            m = re.search(r"assignar-habitacio\s+r(\d+)\s+h(\d+)", line)
            if m:
                r_id = int(m.group(1))
                h_id = int(m.group(2))
                assignments.append((r_id, h_id))
    return assignments

def compute_metrics(assignments, reservas_info, habitaciones_info):
    """Calcula les mètriques de qualitat segons extensió 3."""
    total_reserves = len(reservas_info)
    assigned_reserves = len(assignments)
    discarded_reserves = total_reserves - assigned_reserves

    total_wasted_places = 0
    for r_id, h_id in assignments:
        people = reservas_info.get(r_id)
        capacity = habitaciones_info.get(h_id)
        if people is None or capacity is None:
            raise ValueError(f"Reserva o habitació no trobada: {r_id}, {h_id}")
        total_wasted_places += (capacity - people)


    total_cost = 1000 * discarded_reserves + total_wasted_places

    return {
        "reserves_assignades": assigned_reserves,
        "reserves_descartades": discarded_reserves,
        "places_desaprof": total_wasted_places,
        "cost_total": total_cost
    }

def save_results_csv(results, csv_file):
    """Guarda els resultats en un fitxer CSV."""
    fieldnames = ["experiment", "reserves_assignades", "reserves_descartades",
                  "places_desaprof", "cost_total"]
    file_exists = os.path.isfile(csv_file)
    
    with open(csv_file, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        for exp_name, metrics in results.items():
            row = {"experiment": exp_name, **metrics}
            writer.writerow(row)

# ------------------------------
# Execució dels experiments
# ------------------------------

def executar_suite_experiments():
    """Executa tots els experiments i guarda els resultats en CSV."""
    results = {}
    
    # Llista de fitxers de problemes
    problemes = sorted([f for f in os.listdir(PROBLEMES_DIR) if f.startswith("experiment") and f.endswith(".pddl")])
    
    for i, problema in enumerate(problemes, start=1):
        fitxer_problema = os.path.join(PROBLEMES_DIR, problema)
        print(f"Executant planificador per {problema}...")
        
        fitxer_plan = executar_planificador(fitxer_problema, fitxer_plan="plan_temp.plan")
        assignments = parse_plan_file(fitxer_plan)
        metrics = compute_metrics(assignments, reservas_info, habitaciones_info)
        results[f"experiment_{i}"] = metrics
        
        print(f" -> Reserves assignades: {metrics['reserves_assignades']}, "
              f"Places desaprofitades: {metrics['places_desaprof']}, "
              f"Cost total: {metrics['cost_total']}")
    
    save_results_csv(results, CSV_FILE)
    print(f"Tots els resultats guardats a {CSV_FILE}")

# ------------------------------
# Punt d’entrada
# ------------------------------
if __name__ == "__main__":
    executar_suite_experiments()
