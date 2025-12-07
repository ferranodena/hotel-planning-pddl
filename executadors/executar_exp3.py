#!/usr/bin/env python3
"""
Orquestrador d'Experiments - Extensió 3 (Descarte i Desgast de Places)

- Crida un generador de problemes per a l'extensió 3.
- Executa Metric-FF amb domini ext3.
- Parseja del pla:
    * Nombre de reserves descartades (DESCARTAR-RESERVA).
- Parseja de la sortida de Metric-FF:
    * Valor numèric de total-places-descartades (si s'imprimeix la mètrica final).
- Desa resultats agregats en un CSV.
"""

import os
import subprocess
import csv
import time
import sys
import re

# =============================================================================
# CONFIGURACIÓ GLOBAL
# =============================================================================
GENERADOR_EXT3   = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\extensions\ext3\generador3.py"   # <-- adapta al teu camí real
DOMAIN_FILE      = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\extensions\ext3\dom3.pddl"       # domini extensió 3
FF_EXECUTABLE    = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\programa\metricff.exe"
OUTPUT_CSV       = "resultats/ext3/resultats_ext3.csv"
TEMP_DIR         = "./extensions/ext3/temp_exp3"

NUM_REPLIQUES    = 1
TIMEOUT_SEGONS   = 180

# CONFIGURACIONS D'EXPERIMENT
# (Reserves, Habitacions, Dies)
CONFIGURACIONS = [
    (1, 1, 1),    # molt petit, per validar que tot funciona
    (2, 1, 1),    # petit, ja amb certa pressió de capacitat
    (2, 2, 2),    # més dies, encara molt fàcil
    (3, 2, 3),    # més reserves que hab, alguns solapaments
    (4, 3, 4),    # petit-mitjà, força dens
    (5, 4, 5),    # augment progressiu de mida
    (6, 5, 6),    # més reserves i hab, horitzó curt
    (8, 6, 7),    # ja mitjà, combinatòria notable
    (10, 8, 8),   # límit “mitjà” en reserves, pocs dies
    (15, 10, 8),  # més reserves sobre mateix horitzó
    (20, 15, 9),  # gran, molta pressió sobre habitacions
    (25, 20, 10), # molt gran, però dins límit
    (30, 25, 10), # gairebé límit en reserves, alta combinatòria
    (30, 30, 10), # límit superior: moltes reserves i moltes hab, pocs dies
]




# =============================================================================
# FUNCIONS AUXILIARS
# =============================================================================

def crear_directori(path):
    if path and not os.path.exists(path):
        os.makedirs(path)

def cridar_generador_ext3(script_path, output_pddl, r, h, d, seed=None):
    """
    Crida al generador de problemes per a Extensió 3.
    Ajusta els flags segons el teu generador.
    """
    cmd = [
        sys.executable, script_path,
        "--output", output_pddl,
        "--reservas", str(r),
        "--habitaciones", str(h),
        "--dias", str(d),
    ]
    if seed is not None:
        cmd += ["--seed", str(seed)]

    try:
        subprocess.run(cmd, check=True, capture_output=True)
        return True
    except subprocess.CalledProcessError as e:
        print(f"[ERROR GENERADOR] {e}")
        print(e.stdout.decode("utf-8", errors="ignore") if e.stdout else "")
        print(e.stderr.decode("utf-8", errors="ignore") if e.stderr else "")
        return False

def executar_metric_ff_ext3(domain_path, problem_path, timeout=TIMEOUT_SEGONS):
    """
    Executa Metric-FF per a Extensió 3 i extreu:
      - temps d'execució (ms)
      - # descartades (comptant accions DESCARTAR-RESERVA del pla)
      - estimació de places descartades (parsejant mètrica final si surt)
    """
    start_time = time.time()

    try:
        result = subprocess.run(
            [FF_EXECUTABLE, "-o", domain_path, "-f", problem_path, "-O"],
            capture_output=True,
            text=True,
            timeout=timeout
        )

        end_time = time.time()
        temps_ms = (end_time - start_time) * 1000
        output = result.stdout + result.stderr
        output_upper = output.upper()

        # Comprovem si s'ha trobat pla
        found_plan = "FOUND LEGAL PLAN" in output_upper
        if not found_plan:
            # sense pla: marquem codi error
            return temps_ms, 0, 0, 0, 1

        # ------------------------
        # 1) Comptar DESCARTAR-RESERVA al pla
        # ------------------------
        n_descartades = output_upper.count("DESCARTAR-RESERVA")

        # ------------------------
        # 2) Parsejar places descartades a partir de la mètrica
        #    Depèn de com imprimeixi Metric-FF, pot ser cal adaptar el regex.
        #    Sovint, la línia de mètrica final conté el valor òptim en algun lloc.
        # ------------------------
        total_places_descartades = 0

        # Exemple de regex genèrica: busca un nombre flotant o enter a la línia
        # on aparegui 'METRIC' o 'VALUE' (adapta al teu output real)
        # Aquí mostrem una estratègia bàsica: buscar "TOTAL-PLACES-DESCARTADES"
        # si Metric-FF ho imprimeix; si no, hauràs de llegir la mètrica total
        # i restar la part de reserves descartades (cost * 100).
        patron_places = re.compile(r"TOTAL-PLACES-DESCARTADES[^0-9]*([0-9]+)", re.IGNORECASE)
        m = patron_places.search(output)
        if m:
            total_places_descartades = int(m.group(1))
        else:
            # Fallback: intentar extreure l'últim valor numèric de 'METRIC'
            # (a adaptar segons el teu format exacte)
            patron_metric = re.compile(r"METRIC[^0-9\-]*([0-9]+)", re.IGNORECASE)
            m2 = patron_metric.search(output)
            if m2:
                metric_value = int(m2.group(1))
                # mètrica: 100 * reserves_descartades + places_descartades
                # places_descartades ≈ metric_value - 100 * n_descartades
                total_places_descartades = max(0, metric_value - 100 * n_descartades)

        return temps_ms, n_descartades, total_places_descartades, 0, 0

    except subprocess.TimeoutExpired:
        print("    [TIMEOUT] Metric-FF ha superat el temps límit.")
        return None, 0, 0, 0, -1
    except Exception as e:
        print(f"    [ERROR SISTEMA] {e}")
        return None, 0, 0, 0, -2

# =============================================================================
# PROGRAMA PRINCIPAL
# =============================================================================

def main():
    crear_directori(TEMP_DIR)
    crear_directori(os.path.dirname(OUTPUT_CSV))

    print("Iniciant Experiments Extensió 3 (Descarte + Places)...")

    resultats_csv = []

    for conf in CONFIGURACIONS:
        r, h, d = conf
        print(f"\n--- Config: {r} Reserves, {h} Habitacions, {d} Dies ---")

        acc_temps = []
        acc_descartades = []
        acc_places_descartades = []
        errors = 0

        for i in range(1, NUM_REPLIQUES + 1):
            seed = int(time.time()) + i
            nom_prob = f"p_ext3_r{r}_h{h}_d{d}_rep{i}.pddl"
            path_prob = os.path.join(TEMP_DIR, nom_prob)

            # 1. Generar problema
            if not cridar_generador_ext3(GENERADOR_EXT3, path_prob, r, h, d, seed):
                errors += 1
                continue

            # 2. Executar Metric-FF
            t, n_desc, places_desc, _, code = executar_metric_ff_ext3(DOMAIN_FILE, path_prob)

            if code == 0 and t is not None:
                status = "OK"
                acc_temps.append(t)
                acc_descartades.append(n_desc)
                acc_places_descartades.append(places_desc)
            else:
                status = "TIMEOUT" if code == -1 else "FAIL"
                errors += 1
                acc_descartades.append(0)
                acc_places_descartades.append(0)

            print(f"  Rep {i}: {status} -> Desc: {n_desc} | Places: {places_desc}")

        # --- Estadístiques finals per configuració ---
        n_valid = len([x for x in acc_temps if x is not None])
        avg_temps = sum(acc_temps) / n_valid if n_valid > 0 else 0.0

        avg_desc = sum(acc_descartades) / len(acc_descartades) if acc_descartades else 0.0
        avg_places = sum(acc_places_descartades) / len(acc_places_descartades) if acc_places_descartades else 0.0

        pct_descartades = (avg_desc / r) * 100 if r > 0 else 0.0

        resultats_csv.append({
            'num_reserves': r,
            'num_habitacions': h,
            'num_dies': d,
            'mitjana_temps_ms': avg_temps,
            'descartades_avg': avg_desc,
            'places_descartades_avg': avg_places,
            'pct_descartades': pct_descartades,
            'errors': errors,
        })

        print(f"  >> MITJANES: Desc {avg_desc:.2f} | Places {avg_places:.2f} | Temps {avg_temps:.1f} ms")

    # Escriure CSV
    with open(OUTPUT_CSV, 'w', newline='') as f:
        fieldnames = [
            'num_reserves',
            'num_habitacions',
            'num_dies',
            'mitjana_temps_ms',
            'descartades_avg',
            'places_descartades_avg',
            'pct_descartades',
            'errors',
        ]
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(resultats_csv)

    print(f"\nFi. Resultats guardats a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
