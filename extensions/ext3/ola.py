import subprocess
import re
import sys
import os

# --- CONFIGURACIÓ (Revisa les rutes!) ---
# La 'r' al principi és vital per evitar l'error Unicode a Windows
FF_PATH = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\programa\metricff.exe"
DOMINI = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\extensions\ext3\dom3.pddl"
PROBLEMA = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\extensions\ext3\experiment1.pddl"
FITXER_SORTIDA = "solucio_final.txt"  # Nom del fitxer que es crearà

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

    # Comanda: ff -o domini -f problema
    cmd = [FF_PATH, "-o", DOMINI, "-f", PROBLEMA]
    print(f"Executant planificador...")
    print(f"Comanda: {' '.join(cmd)}")
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True)
        # Metric-FF a vegades retorna codis no-zero fins i tot si troba pla, 
        # així que retornem el text igualment.
        return result.stdout
    except Exception as e:
        print(f"ERROR executant subprocess: {e}")
        return None

def parsejar_dades(output_text):
    """Analitza el text per extreure llistes i mètriques."""
    
    assignades = []   # Tuples (reserva, habitacio)
    descartades = []  # Llista de reserves
    habitacions_usades = set()
    cost_total = "N/A"

    # Regex per trobar accions (ignorant majúscules/minúscules)
    # Busca: "step X: ASSIGNAR-HABITACIO r1 h1"
    rgx_assign = re.compile(r"ASSIGNAR-HABITACIO\s+(\S+)\s+(\S+)", re.IGNORECASE)
    # Busca: "step X: DESCARTAR-RESERVA r1"
    rgx_descart = re.compile(r"DESCARTAR-RESERVA\s+(\S+)", re.IGNORECASE)
    # Busca: "plan cost: 123.00"
    rgx_cost = re.compile(r"plan cost\s*:\s*([\d\.]+)", re.IGNORECASE)

    lines = output_text.split('\n')
    found_plan = False

    for line in lines:
        if "found legal plan" in line:
            found_plan = True
        
        # Intentem capturar el cost tant si hem trobat el pla com si no (a vegades surt al final)
        m_cost = rgx_cost.search(line)
        if m_cost:
            cost_total = m_cost.group(1)

        if not found_plan:
            continue

        # Buscar assignacions
        m_ass = rgx_assign.search(line)
        if m_ass:
            res = m_ass.group(1)
            hab = m_ass.group(2)
            assignades.append((res, hab))
            habitacions_usades.add(hab)
            continue

        # Buscar descartades
        m_desc = rgx_descart.search(line)
        if m_desc:
            res = m_desc.group(1)
            descartades.append(res)

    return assignades, descartades, habitacions_usades, cost_total

def generar_fitxer_informe(filename, assignades, descartades, hab_usades, cost):
    """Escriu els resultats formatats en un fitxer de text."""
    
    try:
        with open(filename, "w", encoding="utf-8") as f:
            f.write("========================================\n")
            f.write("       INFORME DE RESULTATS (EXT 3)     \n")
            f.write("========================================\n\n")
            
            f.write(f"COST DE LA MÈTRICA (PENALITZACIÓ TOTAL): {cost}\n")
            f.write("(Recorda: Cost alt = Dolent. Inclou reserves descartades i places buides)\n\n")

            f.write(f"--- ESTADÍSTIQUES ---\n")
            f.write(f"TOTAL RESERVES ASSIGNADES:     {len(assignades)}\n")
            f.write(f"TOTAL RESERVES DESCARTADES:    {len(descartades)}\n")
            f.write(f"TOTAL HABITACIONS UTILITZADES: {len(hab_usades)}\n\n")
            
            f.write("--- DETALL ASSIGNACIONS ---\n")
            if not assignades:
                f.write("  (Cap reserva assignada)\n")
            else:
                # Ordenem per habitació per veure millor l'ocupació
                assignades.sort(key=lambda x: x[1]) 
                for res, hab in assignades:
                    f.write(f"  RESERVA {res}  -->  HABITACIÓ {hab}\n")
            
            f.write("\n--- DETALL DESCARTADES ---\n")
            if not descartades:
                f.write("  (Cap reserva descartada)\n")
            else:
                descartades.sort()
                for res in descartades:
                    f.write(f"  RESERVA {res} DESCARTADA\n")
        
        print(f"\n[EXIT] S'ha generat el fitxer amb la solució: {filename}")
        print(f"       Pots obrir-lo per veure els resultats.")

    except Exception as e:
        print(f"ERROR escrivint el fitxer: {e}")

# --- PROGRAMA PRINCIPAL ---
if __name__ == "__main__":
    # 1. Executar
    raw_out = executar_planificador()
    
    if raw_out:
        # 2. Parsejar
        ass, desc, habs, cost = parsejar_dades(raw_out)
        
        # 3. Generar Fitxer
        generar_fitxer_informe(FITXER_SORTIDA, ass, desc, habs, cost)
        
        # 4. Petit resum per pantalla
        print("\n--- Resum ràpid ---")
        print(f"Assignades: {len(ass)} | Descartades: {len(desc)} | Hab. Usades: {len(habs)}")
