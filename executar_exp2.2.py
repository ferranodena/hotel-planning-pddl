#!/usr/bin/env python3
import os
import subprocess
import csv
import time
import sys

# =============================================================================
# CONFIGURACIÓ
# =============================================================================
GENERADOR_COMBINAT = "./extensions/ext2/generador2.2.py" # Assegura't que el nom coincideix
DOMAIN_FILE      = "./extensions/ext2/dom2.pddl" # Usem domini ext2 (suporta orientació)
FF_EXECUTABLE    = "./programa/metricff.exe"
OUTPUT_CSV       = "resultats/ext2/resultats_2.csv"
TEMP_DIR         = "./extensions/ext2/temp_exp2"

NUM_REPLIQUES = 10 # Reduït a 3 per fer-ho més ràpid, puja a 5 si vols més precisió
TIMEOUT_SEGONS = 180 

# Graella de proves (Grid Search)
CONFLICT_LEVELS = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0] # De baix a alt
MATCH_LEVELS    = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
# Pots posar més nivells: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0]

CONSTANTS = {'r': 20, 'h': 5, 'd': 25} # Mida fixa del problema 1, perquè és més eficient

# =============================================================================
# FUNCIONS (Reutilitzades i adaptades)
# =============================================================================
def crear_directori(path):
    if not os.path.exists(path): os.makedirs(path)

def cridar_generador(script, out, r, h, d, conflict, match, seed):
    cmd = [
        sys.executable, script,
        "--output", out,
        "--reservas", str(r),
        "--habitaciones", str(h),
        "--dias", str(d),
        "--conflict", str(conflict),
        "--match", str(match),
        "--seed", str(seed)
    ]
    try:
        subprocess.run(cmd, check=True, capture_output=True)
        return True
    except subprocess.CalledProcessError as e:
        print(f"Error Gen: {e}")
        return False

def executar_ff(domain, problem):
    start = time.time()
    try:
        res = subprocess.run([FF_EXECUTABLE, "-o", domain, "-f", problem, "-O"],
                             capture_output=True, text=True, timeout=TIMEOUT_SEGONS)
        end = time.time()
        
        # Parsejar sortida
        output = res.stdout.upper()
        n_ori = output.count("ASSIGNAR-HABITACIO-ORIENTADA")
        n_desor = output.count("ASSIGNAR-HABITACIO-DESORIENTADA")
        n_desc = output.count("DESCARTAR-RESERVA")
        
        puntuacio = (n_desor * 1) + (n_desc * 2)
        found = "FOUND LEGAL PLAN" in output
        
        if not found: return None
        return {'t': (end-start)*1000, 'score': puntuacio, 'ori': n_ori, 'desor': n_desor, 'desc': n_desc}
        
    except subprocess.TimeoutExpired:
        return None

def main():
    crear_directori(TEMP_DIR)
    crear_directori(os.path.dirname(OUTPUT_CSV))
    
    results = []
    
    print("Iniciant Experiment Combinat (Heatmap Data)...")
    
    for conflict in CONFLICT_LEVELS:
        for match in MATCH_LEVELS:
            print(f"\n--- GRID: Conflict {conflict} | Match {match} ---")
            
            acc_score = []
            acc_time = []
            
            for i in range(NUM_REPLIQUES):
                seed = int(time.time()) + i
                prob_file = os.path.join(TEMP_DIR, f"p_c{conflict}_m{match}_{i}.pddl")
                
                # 1. Generar
                cridar_generador(GENERADOR_COMBINAT, prob_file, 
                                CONSTANTS['r'], CONSTANTS['h'], CONSTANTS['d'], 
                                conflict, match, seed)
                
                # 2. Executar
                data = executar_ff(DOMAIN_FILE, prob_file)
                
                if data:
                    acc_score.append(data['score'])
                    acc_time.append(data['t'])
                    print(f"  Rep {i+1}: Score {data['score']} | Time {data['t']:.0f}ms")
                else:
                    print(f"  Rep {i+1}: FAIL/TIMEOUT")
            
            # Mitjanes
            if acc_score:
                avg_score = sum(acc_score) / len(acc_score)
                avg_time = sum(acc_time) / len(acc_time)
                
                results.append({
                    'conflict_ratio': conflict,
                    'match_prob': match,
                    'avg_score': avg_score,
                    'avg_time': avg_time
                })
    
    # Guardar CSV
    with open(OUTPUT_CSV, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=['conflict_ratio', 'match_prob', 'avg_score', 'avg_time'])
        writer.writeheader()
        writer.writerows(results)
        
    print(f"\nFet! Resultats a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
