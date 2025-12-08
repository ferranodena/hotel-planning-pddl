import os
import subprocess
import csv
import time
import sys
import matplotlib.pyplot as plt

# --- CONFIGURACIÓ ---
GENERADOR_COMBINAT = "./extensions/ext4/generador_4.py"
DOMAIN_FILE = "./extensions/ext4/dom4.pddl"
FF_EXECUTABLE = "./programa/metricff.exe"

OUTPUT_CSV = "resultats/ext4/resultats_comparativa_extended.csv"
TEMP_DIR = "./extensions/ext4/temp_exp3_extended"
GRAFIC_FILE = "resultats/ext4/comparativa_extended.png"

RESERVES_LEVELS = [2, 5, 10, 15, 20, 25, 30]
HABITACIONS_FIX = 40 
DIES_FIX = 30
NUM_REPLIQUES = 5

def crear_directori(path):
    if not os.path.exists(path): os.makedirs(path)

def cridar_generador(script, out, r, h, d, seed):
    cmd = [
        sys.executable, script,
        "--output", out,
        "--reservas", str(r),
        "--habitaciones", str(h),
        "--dias", str(d),
        "--seed", str(seed)
    ]
    try:
        subprocess.run(cmd, check=True, capture_output=True)
        return True
    except subprocess.CalledProcessError:
        return False

def executar_ff(domain, problem):
    try:
        res = subprocess.run([FF_EXECUTABLE, "-o", domain, "-f", problem],
                           capture_output=True, text=True, timeout=120)
        output = res.stdout.upper()
        
        if "FOUND LEGAL PLAN" not in output:
            return None

        n_assignar_usada = output.count("ASSIGNAR-HABITACIO-USADA")
        n_assignar_nova = output.count("ASSIGNAR-HABITACIO-NOVA")
        n_obrir = output.count("OBRIR-HABITACIO")
        n_descartar_total = output.count("DESCARTAR-FINAL") 
        
        lines = output.split('\n')
        passos_reals = 0
        found_plan = False
        for line in lines:
            if "FF: FOUND PLAN" in line: found_plan = True
            if found_plan and ":" in line and "time" not in line.lower():
                passos_reals += 1
        
        if passos_reals == 0:
            passos_reals = n_assignar_usada * 1 + n_assignar_nova * 1 + n_obrir * 1 + n_descartar_total * 4

        return passos_reals

    except subprocess.TimeoutExpired:
        return None

def main():
    crear_directori(TEMP_DIR)
    crear_directori(os.path.dirname(OUTPUT_CSV))
    
    results = []
    
    print("=== Iniciant Experiment 3 EXTÈS: Greedy vs Òptim ===")
    
    for num_res in RESERVES_LEVELS:
        print(f"\n>> Provant amb {num_res} Reserves...")
        
        reals = []
        greedies = []
        
        for i in range(NUM_REPLIQUES):
            seed = int(time.time()) + (i * 100)
            prob_file = os.path.join(TEMP_DIR, f"p_r{num_res}_{i}.pddl")
            
            cridar_generador(GENERADOR_COMBINAT, prob_file, num_res, HABITACIONS_FIX, DIES_FIX, seed)
            passos = executar_ff(DOMAIN_FILE, prob_file)
            
            if passos is not None:
                reals.append(passos)
                greedy_val = num_res * 2
                greedies.append(greedy_val)
                print(f"   Rep {i}: Real {passos} vs Greedy {greedy_val}")
            else:
                print(f"   Rep {i}: FAIL/TIMEOUT")

        if reals:
            avg_real = sum(reals) / len(reals)
            avg_greedy = sum(greedies) / len(greedies)
            results.append({'reserves': num_res, 'real': avg_real, 'greedy': avg_greedy})

    with open(OUTPUT_CSV, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=['reserves', 'real', 'greedy'])
        writer.writeheader()
        writer.writerows(results)
        
    plt.figure(figsize=(10, 6))
    x = [r['reserves'] for r in results]
    y_real = [r['real'] for r in results]
    y_greedy = [r['greedy'] for r in results]
    
    plt.plot(x, y_greedy, label='Estratègia Greedy (Teòrica)', color='red', linestyle='--', marker='x')
    plt.plot(x, y_real, label='La Nostra Estratègia (Metric-FF)', color='green', marker='o', linewidth=2)
    
    plt.xlabel('Nombre de Reserves', fontweight='bold')
    plt.ylabel('Nombre Total de Passos (Plan Length)', fontweight='bold')
    plt.title('Comparativa de Passos Estesa: Greedy vs Optimitzat')
    plt.legend()
    plt.grid(True, alpha=0.3)
    
    plt.savefig(GRAFIC_FILE)
    print(f"\nFet! Gràfic guardat a {GRAFIC_FILE}")

if __name__ == '__main__':
    main()
