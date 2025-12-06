import subprocess
import re
import sys
import os

# --- CONFIGURACIÓ (Revisa les rutes!) ---
FF_PATH = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\programa\metricff.exe"
DOMINI = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\extensions\ext3\dom3.pddl"
PROBLEMA = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\extensions\ext3\experiment1.pddl"
FITXER_SORTIDA = "solucio_final_100.txt"

# Pes de reserves descartades per calcular el cost
PES_RESERVES_DESCARTADES = 100 

# Capacitats i persones de prova (s'haurien de llegir del PDDL si vols automatitzar)
capacitats = {
    "h1": 2, "h2": 3
}
persones_reserva = {
    "r1": 2, "r2": 1, "r3": 3, "r4": 2
}

# ----------------------------------------
def executar_planificador():
    """Executa metric-ff i captura la sortida."""
    if not os.path.exists(FF_PATH):
        print(f"ERROR: No es troba l'executable a: {FF_PATH}")
        return None
    if not os.path.exists(DOMINI):
        print(f"ERROR: No es troba el domini a: {DOMINI}")
        return None
    if not os.path.exists(PROBLEMA):
        print(f"ERROR: No es troba el problema a: {PROBLEMA}")
        return None

    cmd = [FF_PATH, "-o", DOMINI, "-f", PROBLEMA]
    print(f"Executant planificador...")
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
        return result.stdout
    except Exception as e:
        print(f"ERROR executant subprocess: {e}")
        return None

# ----------------------------------------
def parsejar_dades(output_text):
    """Analitza el text per extreure assignacions i descartades."""
    assignades = []
    descartades = []
    habitacions_usades = set()

    rgx_assign = re.compile(r"ASSIGNAR-HABITACIO\s+(\S+)\s+(\S+)", re.IGNORECASE)
    rgx_descart = re.compile(r"DESCARTAR-RESERVA\s+(\S+)", re.IGNORECASE)

    found_plan = False
    for line in output_text.split('\n'):
        if "found legal plan" in line:
            found_plan = True
        if not found_plan:
            continue

        m_ass = rgx_assign.search(line)
        if m_ass:
            res = m_ass.group(1).lower()
            hab = m_ass.group(2).lower()
            assignades.append((res, hab))
            habitacions_usades.add(hab)
            continue

        m_desc = rgx_descart.search(line)
        if m_desc:
            res = m_desc.group(1).lower()
            descartades.append(res)

    return assignades, descartades, habitacions_usades

# ----------------------------------------
def calcular_cost(assignades, descartades, capacitats, persones_reserva, pes_reserves=PES_RESERVES_DESCARTADES):
    """Calcula el cost real segons la mètrica del PDDL."""
    waste_total = 0
    for res, hab in assignades:
        if hab in capacitats and res in persones_reserva:
            waste_total += capacitats[hab] - persones_reserva[res]
        else:
            print(f"ADVERTÈNCIA: Dades no trobades per {res} o {hab}")
    cost_total = pes_reserves * len(descartades) + waste_total
    return cost_total, waste_total, len(descartades)

# ----------------------------------------
def generar_fitxer_informe(filename, assignades, descartades, hab_usades, cost_total, waste, penalitzacio):
    """Escriu els resultats en un fitxer de text."""
    try:
        with open(filename, "w", encoding="utf-8") as f:
            f.write("========================================\n")
            f.write("       INFORME DE RESULTATS (EXT 3)     \n")
            f.write("========================================\n\n")
            
            f.write(f"COST REAL TOTAL: {cost_total}\n")
            f.write(f"PES UTILITZAT PER DESCARTADES: {PES_RESERVES_DESCARTADES}\n")
            f.write("----------------------------------------\n")
            f.write(f"--> PLACES DESPERDICIADES: {waste}\n")
            f.write(f"--> PENALITZACIÓ (Descartades * Pes): {penalitzacio}\n\n")

            f.write(f"Assignades: {len(assignades)} | Descartades: {len(descartades)} | Habitacions Obertes: {len(hab_usades)}\n\n")
            
            f.write("--- DETALL ASSIGNACIONS ---\n")
            if not assignades:
                f.write("  (Cap reserva assignada)\n")
            else:
                assignades.sort(key=lambda x: x[1])
                for res, hab in assignades:
                    f.write(f"  RESERVA {res.upper()} --> HABITACIÓ {hab.upper()}\n")
            
            f.write("\n--- DETALL DESCARTADES ---\n")
            if not descartades:
                f.write("  (Cap reserva descartada)\n")
            else:
                descartades.sort()
                for res in descartades:
                    f.write(f"  RESERVA {res.upper()} DESCARTADA\n")
        
        print(f"\n[EXIT] Fitxer generat correctament: {filename}")
        print(f"Cost total calculat: {cost_total} (Waste {waste} + Penalització {penalitzacio})")

    except Exception as e:
        print(f"ERROR escrivint fitxer: {e}")

# ----------------------------------------
# PROGRAMA PRINCIPAL
if __name__ == "__main__":
    raw_out = executar_planificador()
    if raw_out:
        ass, desc, habs = parsejar_dades(raw_out)
        cost_total, waste, penalitzacio = calcular_cost(ass, desc, capacitats, persones_reserva)
        generar_fitxer_informe(FITXER_SORTIDA, ass, desc, habs, cost_total, waste, penalitzacio)

        # Resum ràpid a pantalla
        print("\n--- Resum ràpid ---")
        print(f"Assignades: {len(ass)} | Descartades: {len(desc)} | Habitacions Usades: {len(habs)}")
