#!/usr/bin/env python3
"""
Orquestrador d'Experiments - Extensió 2 (Qualitat i Orientació)
- Executa Metric-FF i parseja la qualitat del pla.
- Calcula una puntuació basada en:
    * Descartades: 2 punts (Penalització màxima)
    * Desorientades: 1 punt (Penalització mitjana)
    * Orientades: 0 punts (Òptim)
- Recull estadístiques detallades d'orientades vs desorientades.
"""

import os
import subprocess
import re
import csv
import time
import sys

# =============================================================================
# CONFIGURACIÓ GLOBAL
# =============================================================================
GENERADOR_PYTHON = "./extensions/ext2/generador2.1.py" 
DOMAIN_FILE      = "./extensions/ext2/dom2.pddl"
FF_EXECUTABLE    = "./programa/metricff.exe"
OUTPUT_CSV       = "resultats/ext2/resultats_qualitat_final.csv"
TEMP_DIR         = "./extensions/ext2/temp_exp_qualitat"

NUM_REPLIQUES = 10
TIMEOUT_SEGONS = 180 

# CONFIGURACIONS D'EXPERIMENT 
# (Reserves, Habitacions, Dies, Match_Probability)
CONFIGURACIONS = [
    (12, 20, 30, 0.0),
    (12, 20, 30, 0.1),
    (12, 20, 30, 0.2),
    (12, 20, 30, 0.3),
    (12, 20, 30, 0.4),
    (12, 20, 30, 0.5),
    (12, 20, 30, 0.6),
    (12, 20, 30, 0.7),
    (12, 20, 30, 0.8),
    (12, 20, 30, 0.9),
    (12, 20, 30, 1.0),
]

# =============================================================================
# FUNCIONS
# =============================================================================

def crear_directori(path):
    if not os.path.exists(path):
        os.makedirs(path)

def cridar_generador_extern(script_path, output_pddl, r, h, d, match):
    # Usem els arguments que el teu generador2.1.py accepta
    cmd = [
        sys.executable, script_path, 
        "--single",                 
        "--output", output_pddl,
        "--reservas", str(r),
        "--habitaciones", str(h),
        "--dias", str(d),
        "--match", str(match)   
    ]
    try:
        subprocess.run(cmd, check=True, capture_output=True)
        return True
    except subprocess.CalledProcessError as e:
        print(f"Error generador: {e}")
        return False

def executar_metric_ff_qualitat(domain_path, problem_path, timeout=TIMEOUT_SEGONS):
    """
    Executa FF i calcula la puntuació de qualitat analitzant les accions del pla.
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
        output = result.stdout + result.stderr
        temps_ms = (end_time - start_time) * 1000
        returncode = result.returncode

        # --- PARSEJAT DE QUALITAT ---
        output_upper = output.upper()
        
        # Comptem aparicions de cada tipus d'acció al pla
        n_orientades = output_upper.count("ASSIGNAR-HABITACIO-ORIENTADA")
        n_desorientades = output_upper.count("ASSIGNAR-HABITACIO-DESORIENTADA")
        n_descartades = output_upper.count("DESCARTAR-RESERVA")
        
        # Calculem Puntuació (Cost Total)
        puntuacio = (n_desorientades * 1) + (n_descartades * 2)
        
        # Total assignades
        n_assignades_total = n_orientades + n_desorientades

        found_plan = "found legal plan" in output.lower()
        
        if not found_plan:
            return temps_ms, 0, 0, 0, 0, 9999, 1 
            
        return temps_ms, n_assignades_total, n_orientades, n_desorientades, n_descartades, puntuacio, 0 

    except subprocess.TimeoutExpired:
        print("    [TIMEOUT] El procés ha trigat massa.")
        return None, 0, 0, 0, 0, 0, -1 
        
    except Exception as e:
        print(f"    [ERROR SISTEMA] {e}")
        return None, 0, 0, 0, 0, 0, -2 

def main():
    crear_directori(TEMP_DIR)
    crear_directori(os.path.dirname(OUTPUT_CSV))
    
    print(f"Iniciant Test de Qualitat (Extensió 2) amb detall d'orientacions...")
    
    resultats_csv = []

    for conf in CONFIGURACIONS:
        r, h, d, match = conf
        print(f"\n--- Config: {r} Res, {h} Hab, {d} Dies, Match: {match} ---")
        
        # Acumuladors
        acc_temps = []
        acc_assignades = []
        acc_orientades = []     # <--- Nou
        acc_desorientades = []  # <--- Nou
        acc_descartades = []
        acc_puntuacio = [] 
        errors = 0
        
        for i in range(1, NUM_REPLIQUES + 1):
            nom_prob = f"p_qualitat_r{r}_m{match}_rep{i}.pddl"
            path_prob = os.path.join(TEMP_DIR, nom_prob)
            
            # 1. Generar
            if not cridar_generador_extern(GENERADOR_PYTHON, path_prob, r, h, d, match):
                continue
            
            # 2. Executar
            # Noteu que ara rebem més valors de retorn
            t, ass, ori, desor, desc, punts, code = executar_metric_ff_qualitat(DOMAIN_FILE, path_prob, timeout=TIMEOUT_SEGONS)
            
            if code == 0 and t is not None:
                status = "OK"
                acc_temps.append(t)
                acc_assignades.append(ass)
                acc_orientades.append(ori)        # <--- Nou
                acc_desorientades.append(desor)   # <--- Nou
                acc_descartades.append(desc)
                acc_puntuacio.append(punts)
            else:
                status = "TIMEOUT" if code == -1 else "FAIL"
                errors += 1
                acc_assignades.append(0)
                acc_orientades.append(0)
                acc_desorientades.append(0)
                acc_descartades.append(0)

            print(f"  Rep {i}: {status} -> {ass} Totals | {ori} OK | {desor} Desor | {desc} Desc | Punts: {punts}")

        # --- CÀLCUL D'ESTADÍSTIQUES FINALS ---
        n_valid = len(acc_temps)
        avg_temps = sum(acc_temps)/n_valid if n_valid > 0 else 0
        avg_puntuacio = sum(acc_puntuacio)/len(acc_puntuacio) if len(acc_puntuacio) > 0 else 0
        
        avg_ass = sum(acc_assignades) / NUM_REPLIQUES
        avg_ori = sum(acc_orientades) / NUM_REPLIQUES      # <--- Nou
        avg_desor = sum(acc_desorientades) / NUM_REPLIQUES # <--- Nou
        avg_desc = sum(acc_descartades) / NUM_REPLIQUES
        
        pct_assignades = (avg_ass / r) * 100
        pct_descartades = (avg_desc / r) * 100
        
        resultats_csv.append({
            'num_reserves': r,
            'num_habitacions': h,
            'num_dies': d,
            'match_prob': match,
            'mitjana_temps_ms': avg_temps,
            'assignades_avg': avg_ass,
            'orientades_avg': avg_ori,       # <--- Columnes noves pel CSV
            'desorientades_avg': avg_desor,  # <---
            'descartades_avg': avg_desc,
            'pct_assignades': pct_assignades,
            'pct_descartades': pct_descartades,
            'mitjana_puntuacio': avg_puntuacio,  
            'errors': errors
        })
        
        print(f"  >> MITJANA: {avg_puntuacio:.1f} Punts | {avg_ori:.1f} Orientades | {avg_desor:.1f} Desorientades")

    # ESCRIURE CSV
    with open(OUTPUT_CSV, 'w', newline='') as f:
        fieldnames = [
            'num_reserves', 'num_habitacions', 'num_dies', 'match_prob',
            'mitjana_temps_ms', 'assignades_avg', 
            'orientades_avg', 'desorientades_avg', # <--- Afegits a la capçalera
            'descartades_avg',
            'pct_assignades', 'pct_descartades', 'mitjana_puntuacio', 'errors'
        ]
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(resultats_csv)
    
    print(f"\nFi. Dades guardades a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
