import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# -----------------------------------------------------------------------------
# 1. CONFIGURACIÓ DADES
# -----------------------------------------------------------------------------
CSV_FILE = './resultats/ext2/resultats_qualitat.csv'
OUTPUT_IMG = 'mosaic_distribucio_qualitat.png'
TOTAL_RESERVES = 12 # Valor fix o extret del CSV si és constant

try:
    df = pd.read_csv(CSV_FILE)
    # Assegurem ordre correcte per l'eix X
    df['match_prob'] = pd.to_numeric(df['match_prob'], errors='coerce')
    df = df.sort_values('match_prob')
    
    # Normalitzem a percentatges reals respecte al total (per si hi ha decimals estranys a les mitjanes)
    # Això garanteix que la suma sigui sempre 100% al gràfic
    cols = ['orientades_avg', 'desorientades_avg', 'descartades_avg']
    
    # Creem un dataframe temporal de percentatges
    df_pct = df[cols].div(df[cols].sum(axis=1), axis=0) * 100
    # Afegim match_prob de nou
    df_pct['match_prob'] = df['match_prob']
    
except FileNotFoundError:
    print(f"⚠️ No s'ha trobat '{CSV_FILE}'.")
    exit()

# -----------------------------------------------------------------------------
# 2. CONFIGURACIÓ ESTIL
# -----------------------------------------------------------------------------
sns.set_theme(style="whitegrid")
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['axes.edgecolor'] = '#333333'
plt.rcParams['axes.linewidth'] = 1.2

fig, ax = plt.subplots(figsize=(12, 7))

# -----------------------------------------------------------------------------
# 3. CREACIÓ DEL GRÀFIC APILAT (Stacked Bar)
# -----------------------------------------------------------------------------
# Definim colors semàntics:
# Orientades (Perfecte) -> Verd
# Desorientades (Compromís) -> Taronja/Groc
# Descartades (Fracàs) -> Vermell
colors = ["#2ecc71", "#f39c12", "#e74c3c"] 
labels = ["Orientades (Òptim)", "Desorientades (Subòptim)", "Descartades (Fallida)"]

# Amplada de les barres
bar_width = 0.06

# 1. Fons: Orientades (La base)
p1 = ax.bar(df_pct['match_prob'], df_pct['orientades_avg'], 
            width=bar_width, label=labels[0], color=colors[0], alpha=0.8, edgecolor='white')

# 2. Mig: Desorientades (A sobre de orientades)
p2 = ax.bar(df_pct['match_prob'], df_pct['desorientades_avg'], 
            bottom=df_pct['orientades_avg'], 
            width=bar_width, label=labels[1], color=colors[1], alpha=0.8, edgecolor='white')

# 3. Dalt: Descartades (A sobre de la suma de les altres dues)
p3 = ax.bar(df_pct['match_prob'], df_pct['descartades_avg'], 
            bottom=df_pct['orientades_avg'] + df_pct['desorientades_avg'], 
            width=bar_width, label=labels[2], color=colors[2], alpha=0.8, edgecolor='white')

# -----------------------------------------------------------------------------
# 4. ETIQUETES I FORMAT
# -----------------------------------------------------------------------------
ax.set_xlabel('Probabilitat de Coincidència (match_prob)', fontsize=14, labelpad=15, fontweight='bold')
ax.set_ylabel('Proporció de Reserves (%)', fontsize=14, fontweight='bold', labelpad=15)
ax.set_ylim(0, 100)
ax.set_xlim(-0.05, 1.05)

# Afegim línia del 100% subtil
ax.axhline(100, color='black', linewidth=1, linestyle='-')

# Títol
plt.title(f'Distribució de la Qualitat de les Assignacions (N={TOTAL_RESERVES})', fontsize=16, fontweight='bold', pad=20)

# Llegenda a sota
plt.legend(loc='upper center', bbox_to_anchor=(0.5, -0.15), fancybox=True, shadow=True, ncol=3, fontsize=11)

# --- ETIQUETES DE VALOR DINS LES BARRES ---
# Funció auxiliar per posar text només si la barra és prou gran
def add_labels(rects):
    for rect in rects:
        height = rect.get_height()
        if height > 5: # Només mostrem si representa > 5% per no solapar
            ax.text(rect.get_x() + rect.get_width()/2., 
                    rect.get_y() + height/2.,
                    f'{height:.1f}%',
                    ha='center', va='center', color='white', fontweight='bold', fontsize=9)

add_labels(p1)
add_labels(p2)
add_labels(p3)

sns.despine(top=True, right=True, left=False)

plt.tight_layout()
plt.savefig(OUTPUT_IMG, dpi=300, bbox_inches='tight')
print(f"Gràfic guardat com '{OUTPUT_IMG}'")
plt.show()
