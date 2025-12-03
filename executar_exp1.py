#!/usr/bin/env python3
"""
Orquestrador d'Experiments - Extensió 1 (Optimització)
- Genera problemes amb control de CONFLICTE (Coll d'Ampolla).
- Recull assignades vs descartades.
- Calcula mètriques d'intel·ligència.
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
# Assegura't que aquest és el teu generador NOU que accepta --conflict
GENERADOR_PYTHON = "./extensions/ext1/generador1.1.py" 
DOMAIN_FILE      = "./extensions/ext1/dom1.pddl"
FF_EXECUTABLE    = "./programa/metricff.exe"
OUTPUT_CSV       = "resultats/ext1/resultats_inteligencia.csv"
TEMP_DIR         = "./extensions/ext1/temp_exp"

NUM_REPLIQUES = 3 
TIMEOUT_SEGONS = 300 # Més temps perquè l'optimització triga més

# CONFIGURACIONS D'EXPERIMENT
# (Reserves, Habitacions, Dies, Conflict_Ratio)
# Variem només el conflicte per veure la "Intel·ligència"
CONFIGURACIONS = [
    # (R, H, D, Conflicte)
    (20, 6, 30, 0.0),   # Fàcil (Uniforme)
    (20, 6, 30, 0.2),
    (20, 6, 30, 0.4),
    (20, 6, 30, 0.6),
    (20, 6, 30, 0.8),
    (20, 6, 30, 1.0),   # Extrem (Tot concentrat)
]

# =============================================================================
# FUNCIONS
# =============================================================================

def crear_directori(path):
    if not os.path.exists(path):
        os.makedirs(path)

def cridar_generador_extern(script_path, output_pddl, r, h, d, conflict):
    cmd = [
        "python", script_path, 
        "--output", output_pddl,
        "--reservas", str(r),
        "--habitaciones", str(h),
        "--dias", str(d),
        "--conflict", str(conflict) # Passem el paràmetre màgic
    ]
    try:
        subprocess.run(cmd, check=True, capture_output=True)
        return True
    except subprocess.CalledProcessError as e:
        print(f"Error generador: {e}")
        return False

def executar_metric_ff(domain_path, problem_path, timeout=TIMEOUT_SEGONS):
    """Executa FF, mesura temps i parseja assignades vs descartades."""
    proc = None
    start_time = time.time()
    
    try:
        # Usem -O per a Metric-FF (Optimització) tot i que per defecte ja ho fa si veu mètrica
        proc = subprocess.Popen(
            [FF_EXECUTABLE, "-o", domain_path, "-f", problem_path, "-O"],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
        )
        
        stdout, stderr = proc.communicate(timeout=timeout)
        end_time = time.time()
        
        output = stdout + stderr
        returncode = proc.returncode
        temps_ms = (end_time - start_time) * 1000

        # --- PARSEJAT AVANÇAT ---
        output_lower = output.lower()
        
        # 1. Comptar Assignades (Èxits)
        n_assignades = output_lower.count("assignar-habitacio")
        if n_assignades == 0: n_assignades = output_lower.count("assignar ")

        # 2. Comptar Descartades (Optimització)
        n_descartades = output_lower.count("descartar-reserva")
        if n_descartades == 0: n_descartades = output_lower.count("descartar ")

        # 3. Detectar si ha trobat solució
        # En Extensió 1, SEMPRE hauria de trobar solució (perquè pot descartar)
        # Però si peta per memòria o altres coses, ho marquem.
        found_plan = "found legal plan" in output_lower
        
        if not found_plan:
            return temps_ms, 0, 0, 1 # Error lògic (no pla)
            
        return temps_ms, n_assignades, n_descartades, 0 # Èxit (Codi 0)

    except subprocess.TimeoutExpired:
        if proc: proc.kill(); proc.communicate()
        return None, 0, 0, -1 # Timeout
    except Exception as e:
        if proc: proc.kill()
        return None, 0, 0, -2 # Error sistema

def main():
    crear_directori(TEMP_DIR)
    crear_directori(os.path.dirname(OUTPUT_CSV))
    
    print(f"Iniciant Test d'Intel·ligència (Extensió 1)...")
    
    resultats_csv = []

    for conf in CONFIGURACIONS:
        r, h, d, conflict = conf
        print(f"\n--- Config: {r} Res, {h} Hab, {d} Dies | Conflicte: {conflict} ---")
        
        # Acumuladors
        acc_temps = []
        acc_assignades = []
        acc_descartades = []
        errors = 0
        
        for i in range(1, NUM_REPLIQUES + 1):
            nom_prob = f"p_conf{conflict}_rep{i}.pddl"
            path_prob = os.path.join(TEMP_DIR, nom_prob)
            
            # 1. Generar
            if not cridar_generador_extern(GENERADOR_PYTHON, path_prob, r, h, d, conflict):
                continue
            
            # 2. Executar
            t, ass, desc, code = executar_metric_ff(DOMAIN_FILE, path_prob, timeout=TIMEOUT_SEGONS)
            
            if code == 0 and t is not None:
                status = "OK"
                acc_temps.append(t)
                acc_assignades.append(ass)
                acc_descartades.append(desc)
            else:
                status = "TIMEOUT" if code == -1 else "FAIL"
                errors += 1
                # En cas de fallada, comptem 0 assignades (penalització)
                acc_assignades.append(0)
                acc_descartades.append(0)

            print(f"  Rep {i}: {status} -> {ass} Assignades, {desc} Descartades ({t:.0f}ms)")

        # --- CÀLCUL D'ESTADÍSTIQUES FINALS ---
        n_valid = len(acc_temps)
        avg_temps = sum(acc_temps)/n_valid if n_valid > 0 else 0
        
        # Mitjanes sobre el TOTAL de rèpliques (per penalitzar errors)
        avg_ass = sum(acc_assignades) / NUM_REPLIQUES
        avg_desc = sum(acc_descartades) / NUM_REPLIQUES
        
        # Percentatges i Ràtios
        # % Assignades respecte al total demanat (r)
        pct_assignades = (avg_ass / r) * 100
        pct_descartades = (avg_desc / r) * 100
        
        # Intel·ligència: En aquest context, és la capacitat de mantenir % alt sota pressió.
        # Podem guardar el valor directament.
        
        resultats_csv.append({
            'num_reserves': r,
            'num_habitacions': h,
            'num_dies': d,
            'conflict_ratio': conflict,     # <--- VARIABLE CLAU
            'mitjana_temps_ms': avg_temps,
            'assignades_avg': avg_ass,
            'descartades_avg': avg_desc,
            'pct_assignades': pct_assignades,   # <--- MÈTRICA D'ÈXIT
            'pct_descartades': pct_descartades,
            'errors': errors
        })
        
        print(f"  >> MITJANA: {pct_assignades:.1f}% Assignades | {avg_temps:.0f}ms")

    # ESCRIURE CSV
    with open(OUTPUT_CSV, 'w', newline='') as f:
        fieldnames = [
            'num_reserves', 'num_habitacions', 'num_dies', 'conflict_ratio',
            'mitjana_temps_ms', 'assignades_avg', 'descartades_avg',
            'pct_assignades', 'pct_descartades', 'errors'
        ]
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(resultats_csv)

    print(f"\nFi. Dades guardades a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
