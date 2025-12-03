#!/usr/bin/env python3
"""
Orquestrador d'Experiments Genèric per a Metric-FF
- Mesura temps amb Python (més precís).
- Calcula mitjanes incloent casos fallits (Unsolvable).
- Guarda TOTES les variables de configuració al CSV.
"""

import os
import subprocess
import re
import csv
import random
import sys
import time

# =============================================================================
# CONFIGURACIÓ GLOBAL
# =============================================================================
GENERADOR_PYTHON = "./basic/generador_basic.py"
DOMAIN_FILE      = "./basic/domini_basic.pddl"
FF_EXECUTABLE    = "./programa/metricff.exe"
OUTPUT_CSV       = "resultats/basic/resultats_basic_3.csv" # Nom nou per diferenciar
TEMP_DIR         = "./basic/temp_experiments_basic_3/"

NUM_REPLIQUES = 10 
TIMEOUT_SEGONS = 180 

# Configuracions d'experiment (reserves, habitacions, dies)
CONFIGURACIONS = [
    (1,1,1),
    (1,2,1),
    (2,3,2),
    (2,4,2),
    (3,5,3),
    (3,6,3),
    (4,7,4),
    (4,8,4),
    (5,9,5),
    (5,10,5),
    (6,11,6),
    (6,12,6),
    (7,13,7),
    (7,14,7),
    (8,15,8),
    (8,16,8),
    (9,17,9),
    (9,18,9),
    (10,19,10),
    (10,20,10),
]

# =============================================================================
# FUNCIONS
# =============================================================================

def crear_directori(path):
    if not os.path.exists(path):
        os.makedirs(path)

def cridar_generador_extern(script_path, output_pddl, r, h, d):
    cmd = [
        "python", script_path, 
        "--single",
        "--reservas", str(r),
        "--habitaciones", str(h),
        "--dias", str(d),
        "--output", output_pddl
    ]
    try:
        subprocess.run(cmd, check=True, capture_output=True)
        return True
    except subprocess.CalledProcessError as e:
        print(f"Error generador: {e}")
        return False

def executar_metric_ff(domain_path, problem_path, timeout=TIMEOUT_SEGONS):
    """Executa FF i mesura temps Python."""
    proc = None
    start_time = time.time() 
    
    try:
        proc = subprocess.Popen(
            [FF_EXECUTABLE, "-o", domain_path, "-f", problem_path, "-O"],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
        )
        
        stdout, stderr = proc.communicate(timeout=timeout)
        end_time = time.time()
        
        output = stdout + stderr
        returncode = proc.returncode
        
        # 1. Temps (Python) -> ms
        temps_ms = (end_time - start_time) * 1000

        # Detectar Unsolvable
        if "problem proven unsolvable" in output.lower():
             return temps_ms, 0, 1 

        # 2. Reserves
        output_lower = output.lower()
        reserves = output_lower.count("assignar-habitacio")
        if reserves == 0:
             reserves = output_lower.count("assignar ")
             
        return temps_ms, reserves, returncode

    except subprocess.TimeoutExpired:
        print(f"    [TIMEOUT] Matant procés...")
        if proc:
            proc.kill()
            proc.communicate()
        return None, None, -1 
        
    except Exception as e:
        print(f"    [ERROR] {e}")
        if proc:
            proc.kill()
        return None, None, -2

def main():
    crear_directori(TEMP_DIR)
    
    if not os.path.isfile(GENERADOR_PYTHON):
        print(f"ERROR: No trobo generador '{GENERADOR_PYTHON}'")
        sys.exit(1)
    if not os.path.isfile(DOMAIN_FILE):
        print(f"ERROR: No trobo domini '{DOMAIN_FILE}'")
        sys.exit(1)

    print(f"Iniciant experiments...")
    resultats_csv = []

    for conf in CONFIGURACIONS:
        r, h, d = conf
        print(f"\n--- Config: {r} Res, {h} Hab, {d} Dies ---")
        
        temps_totals = []   
        assigns_totals = [] 
        errors_count = 0 
        ok_count = 0
        
        for i in range(1, NUM_REPLIQUES + 1):
            nom_prob = f"p_r{r}_h{h}_rep{i}.pddl"
            path_prob = os.path.join(TEMP_DIR, nom_prob)
            
            if not cridar_generador_extern(GENERADOR_PYTHON, path_prob, r, h, d):
                continue
            
            t, a, code = executar_metric_ff(DOMAIN_FILE, path_prob, timeout=TIMEOUT_SEGONS)
            
            if t is not None:
                temps_totals.append(t)
            
            assigns_totals.append(a if a is not None else 0)

            if t is not None and code == 0:
                status = "OK"
                ok_count += 1
            else:
                errors_count += 1
                status = "TIMEOUT" if code == -1 else f"FAIL({code})"

            print(f"  Rep {i}: {status} -> {f'{t:.1f}ms' if t else '-'} | {a if a is not None else '-'} asg")

        # CÀLCUL DE MITJANES
        n_temps_mesurats = len(temps_totals)
        
        if n_temps_mesurats > 0:
            avg_t = sum(temps_totals) / n_temps_mesurats
        else:
            avg_t = 0
            
        avg_a = sum(assigns_totals) / NUM_REPLIQUES

        # AFEGIM TOTES LES VARIABLES AL RESULTAT
        resultats_csv.append({
            'num_reserves': r,          # <--- Variable
            'num_habitacions': h,       # <--- Variable NOVA
            'num_dies': d,              # <--- Variable NOVA
            'mitjana_temps_ms': avg_t,
            'mitjana_reserves_assignades': avg_a,
            'timeouts_errors': errors_count,
            'exit_ratio': f"{ok_count}/{NUM_REPLIQUES}" 
        })
        
        print(f"  >> RESULTAT: {avg_t:.2f}ms (Global) | Errors: {errors_count}/{NUM_REPLIQUES}")

    # GUARDAR CSV (AMB NOVES COLUMNES)
    with open(OUTPUT_CSV, 'w', newline='') as f:
        fieldnames = [
            'num_reserves', 'num_habitacions', 'num_dies', 
            'mitjana_temps_ms', 'mitjana_reserves_assignades', 
            'timeouts_errors', 'exit_ratio'
        ]
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(resultats_csv)
    
    print(f"\nFi. Resultats complets guardats a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
