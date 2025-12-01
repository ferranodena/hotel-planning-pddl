#!/usr/bin/env python3
"""
Orquestrador d'Experiments Genèric per a Metric-FF
- Executa generador extern.
- Llança el planificador amb timeout ROBUST.
- Recull resultats i comptabilitza ERRORS/TIMEOUTS al CSV.
"""

import os
import subprocess
import re
import csv
import random
import sys

# =============================================================================
# CONFIGURACIÓ GLOBAL
# =============================================================================
GENERADOR_PYTHON = "./basic/generador_basic.py"
DOMAIN_FILE      = "./basic/domini_basic.pddl"
FF_EXECUTABLE    = "./programa/metricff.exe"
OUTPUT_CSV       = "resultats_basic.csv"
TEMP_DIR         = "./basic/temp_experiments_basic"

NUM_REPLIQUES = 10 
TIMEOUT_SEGONS = 180 # Baixem a 60s per no esperar hores (ja és molt per a un domini basic)

# Configuracions "Solubles"
CONFIGURACIONS = [
    (1, 2, 10),
    (2, 2, 10),
    (3, 2, 10),  
    (4, 2, 10),   
    (5, 2, 10),
    (6, 2, 10),  
    (7, 2, 10), 
    (8, 2, 10), 
]

# =============================================================================
# FUNCIONS
# =============================================================================

def crear_directori(path):
    if not os.path.exists(path):
        os.makedirs(path)

def cridar_generador_extern(script_path, output_pddl, r, h, d):
    cmd = [
        "python3", script_path,
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
    """Executa FF amb Popen i kill per assegurar aturada."""
    proc = None
    try:
        proc = subprocess.Popen(
            [FF_EXECUTABLE, "-o", domain_path, "-f", problem_path],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
        )
        
        stdout, stderr = proc.communicate(timeout=timeout)
        output = stdout + stderr
        returncode = proc.returncode

        if "problem proven unsolvable" in output:
             # Si és insoluble, comptem com a FAIL o com a resultat vàlid però 0 assignades?
             # Per a la teva gràfica d'errors, millor retornar codi -1 (com si fos un fail)
             print("    [INFO] FF diu: Unsolvable")
             return None, None, 1 # Codi 1 = Error lògic (no solució)
        # 1. Temps
        match_time = re.search(r'(\d+\.\d+)\s+seconds\s+total\s+time', output, re.IGNORECASE)
        if not match_time:
            match_time = re.search(r'(\d+\.\d+)\s+seconds', output, re.IGNORECASE)

        if match_time:
            temps_ms = float(match_time.group(1)) * 1000
        else:
            temps_ms = None

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
        return None, None, -1 # Codi especial per Timeout
        
    except Exception as e:
        print(f"    [ERROR] {e}")
        if proc:
            proc.kill()
        return None, None, -2 # Codi especial per Error Sistema

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
        
        temps_total = []
        assigns_total = []
        errors_count = 0 # Comptador d'errors/timeouts
        
        for i in range(1, NUM_REPLIQUES + 1):
            nom_prob = f"p_r{r}_h{h}_rep{i}.pddl"
            path_prob = os.path.join(TEMP_DIR, nom_prob)
            
            if not cridar_generador_extern(GENERADOR_PYTHON, path_prob, r, h, d):
                continue
            
            t, a, code = executar_metric_ff(DOMAIN_FILE, path_prob, timeout=TIMEOUT_SEGONS)
            
            # Analitzem el resultat
            if t is not None and code == 0:
                status = "OK"
                temps_total.append(t)
                assigns_total.append(a)
            else:
                # Si és Timeout (-1) o Error (-2) o FF Error (1)
                errors_count += 1
                status = "TIMEOUT" if code == -1 else f"FAIL({code})"

            print(f"  Rep {i}: {status} -> {f'{t:.1f}ms' if t else '-'} | {a if a is not None else '-'} asg")

        # AGREGAR ESTADÍSTIQUES
        n_valids = len(temps_total)
        if n_valids > 0:
            avg_t = sum(temps_total) / n_valids
            avg_a = sum(assigns_total) / n_valids
        else:
            avg_t = 0
            avg_a = 0

        # Escriptura de resultats amb columna d'ERRORS
        resultats_csv.append({
            'num_reserves': r,
            'mitjana_temps_ms': avg_t,
            'mitjana_reserves_assignades': avg_a,
            'timeouts_errors': errors_count,      # <--- NOVA COLUMNA
            'exit_ratio': f"{n_valids}/{NUM_REPLIQUES}" # <--- NOVA COLUMNA
        })
        
        print(f"  >> RESULTAT: {avg_t:.2f}ms | Errors: {errors_count}/{NUM_REPLIQUES}")

    # GUARDAR CSV
    with open(OUTPUT_CSV, 'w', newline='') as f:
        # Afegim els nous camps a la capçalera
        fieldnames = ['num_reserves', 'mitjana_temps_ms', 'mitjana_reserves_assignades', 'timeouts_errors', 'exit_ratio']
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(resultats_csv)
    
    print(f"\nFi. Resultats guardats a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
