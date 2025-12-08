import os
import subprocess
import csv
import time
import sys

# =============================================================================
# CONFIGURACIÓ (ADAPTADA PER A EXTENSIÓ 4 - EXP 1)
# =============================================================================

# Rutes absolutes o relatives (assegura't que són correctes)
GENERADOR_COMBINAT = "./extensions/ext4/generador_4.py"
DOMAIN_FILE = "./extensions/ext4/dom4.pddl"
FF_EXECUTABLE = "./programa/metricff.exe"            # El teu planificador
OUTPUT_CSV = "resultats/ext4/resultats_concentracio.csv"
TEMP_DIR = "./extensions/ext4/temp_exp1"

NUM_REPLIQUES = 5          
TIMEOUT_SEGONS = 60        

# Graella de proves (Grid Search per a aquest experiment)
# En aquest cas, la "graella" és només una dimensió: l'abundància d'habitacions
HABITACIONS_LEVELS = [5, 10, 15, 20, 30, 40, 50]

CONSTANTS = {'r': 5, 'd': 30} # Reserves fixes (poques) per veure concentració

# =============================================================================
# FUNCIONS (Reutilitzades i adaptades)
# =============================================================================

def crear_directori(path):
    if not os.path.exists(path): os.makedirs(path)

def cridar_generador(script, out, r, h, d, seed):
    # Adaptat als arguments del teu generador_4.py arreglat
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
    except subprocess.CalledProcessError as e:
        print(f"Error Gen: {e}")
        return False

def executar_ff(domain, problem):
    start = time.time()
    try:
        # Nota: -O no és necessari per al domini lògic, però no fa mal si el poses
        res = subprocess.run([FF_EXECUTABLE, "-o", domain, "-f", problem],
                           capture_output=True, text=True, timeout=TIMEOUT_SEGONS)
        end = time.time()
        
        # Parsejar sortida (ADAPTAT A EXTENSIÓ 4)
        output = res.stdout.upper()
        
        # Mètrica clau: Quantes habitacions hem obert?
        # Compta quantes vegades apareix l'acció d'obrir habitació
        # Si al teu domini es diu diferent (ex: ACTIVAR-HABITACIO), canvia-ho aquí.
        n_obertes = output.count("OBRIR-HABITACIO")
        
        # Per verificació: quantes assignacions totals
        n_assignades = output.count("ASSIGNAR-HABITACIO") 
        
        found = "FOUND LEGAL PLAN" in output
        if not found: return None

        return {'t': (end-start)*1000, 'habs_obertes': n_obertes, 'assignades': n_assignades}

    except subprocess.TimeoutExpired:
        return None

def main():
    crear_directori(TEMP_DIR)
    crear_directori(os.path.dirname(OUTPUT_CSV))
    
    results = []
    
    print("Iniciant Experiment 3.4.2.1 (Concentració)...")
    
    # Bucle Principal (Grid Search simplificat)
    for num_habs in HABITACIONS_LEVELS:
        
        print(f"\n--- GRID: Habitacions Disponibles {num_habs} ---")
        
        acc_habs = []
        acc_time = []
        
        for i in range(NUM_REPLIQUES):
            seed = int(time.time()) + (i * 100)
            prob_file = os.path.join(TEMP_DIR, f"p_h{num_habs}_rep{i}.pddl")
            
            # 1. Generar
            # Passem les constants de reserves i dies, i la variable num_habs
            cridar_generador(GENERADOR_COMBINAT, prob_file,
                           CONSTANTS['r'], num_habs, CONSTANTS['d'], seed)
            
            # 2. Executar
            data = executar_ff(DOMAIN_FILE, prob_file)
            
            if data:
                acc_habs.append(data['habs_obertes'])
                acc_time.append(data['t'])
                print(f" Rep {i+1}: Obertes {data['habs_obertes']} | Time {data['t']:.0f}ms")
            else:
                print(f" Rep {i+1}: FAIL/TIMEOUT")
        
        # Mitjanes
        if acc_habs:
            avg_habs = sum(acc_habs) / len(acc_habs)
            avg_time = sum(acc_time) / len(acc_time)
            
            results.append({
                'num_habitacions_disponibles': num_habs,
                'avg_habitacions_usades': avg_habs,
                'avg_time_ms': avg_time,
                'success_rate': (len(acc_habs) / NUM_REPLIQUES) * 100
            })
    
    # Guardar CSV
    with open(OUTPUT_CSV, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=['num_habitacions_disponibles', 'avg_habitacions_usades', 'avg_time_ms', 'success_rate'])
        writer.writeheader()
        writer.writerows(results)
    
    print(f"\nFet! Resultats a {OUTPUT_CSV}")

if __name__ == '__main__':
    main()
