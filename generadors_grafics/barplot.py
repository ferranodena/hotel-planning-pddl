import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

# -----------------------------------------------------------------------------
# 1. DADES D'ENTRADA
# -----------------------------------------------------------------------------
NOM_FITXER = 'resultats_basic.csv'

try:
    # Llegim el CSV
    df_raw = pd.read_csv("resultats_basic.csv")
    
    # Seleccionem NOMÉS les columnes que ens interessen i les renombren per al gràfic
    # (Assumim que al CSV es diuen 'num_reserves' i 'mitjana_temps_ms')
    df = pd.DataFrame()
    df['Nombre_Reserves'] = df_raw['num_reserves']
    df['Temps_Execucio'] = df_raw['mitjana_temps_ms']
    
    # Opcional: Si vols filtrar les files on el temps és 0 o buit (perquè van fallar totes)
    # df = df[df['Temps_Execucio'] > 0]

except Exception as e:
    print(f"No s'ha pogut llegir el CSV ({e}). Usant dades d'exemple manual.")
    dades = {
        'Nombre_Reserves': [5, 10, 15, 20, 25], 
        'Temps_Execucio': [0.02, 0.15, 0.85, 4.20, 12.50]
    }
    df = pd.DataFrame(dades)

# -----------------------------------------------------------------------------
# 2. CONFIGURACIÓ ESTÈTICA
# -----------------------------------------------------------------------------
sns.set_theme(style="whitegrid") 
plt.figure(figsize=(10, 6))

# -----------------------------------------------------------------------------
# 3. CREACIÓ DEL GRÀFIC
# -----------------------------------------------------------------------------
ax = sns.barplot(
    x='Nombre_Reserves', 
    y='Temps_Execucio', 
    data=df, 
    palette='viridis',
    edgecolor='black',
    linewidth=1
)

# -----------------------------------------------------------------------------
# 4. DETALLS I ETIQUETES
# -----------------------------------------------------------------------------
plt.title("Escalabilitat del Planificador (Domini Bàsic)", fontsize=16, pad=20, fontweight='bold')
plt.xlabel("Mida del Problema (Reserves)", fontsize=12, labelpad=15)
plt.ylabel("Temps Mitjà d'Execució (ms)", fontsize=12, labelpad=15)

# Etiquetes sobre les barres
for container in ax.containers:
    # Format intel·ligent: si és > 1000ms, mostra en segons, si no en ms
    labels = []
    for val in container.datavalues:
        if pd.isna(val) or val == 0:
            labels.append("N/A")
        elif val >= 1000:
            labels.append(f'{val/1000:.2f} s')
        else:
            labels.append(f'{val:.1f} ms')
    
    ax.bar_label(container, labels=labels, padding=3, fontsize=10, fontweight='bold', color='#333333')

sns.despine()

# -----------------------------------------------------------------------------
# 5. GUARDAR
# -----------------------------------------------------------------------------
plt.tight_layout()
plt.savefig('grafic_resultats_basic.png', dpi=300)
print("Gràfic guardat com 'grafic_resultats_basic.png'")
plt.show()
