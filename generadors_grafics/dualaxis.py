import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# -----------------------------------------------------------------------------
# 1. CONFIGURACIÓ DADES
# -----------------------------------------------------------------------------
CSV_FILE = './resultats/basic/resultats_basic_3.csv'
OUTPUT_IMG = 'grafic_inteligencia_styled.png'

try:
    df = pd.read_csv(CSV_FILE)
    # Assegurar que tot són números
    df['mitjana_reserves_assignades'] = pd.to_numeric(df['mitjana_reserves_assignades'], errors='coerce')
    df['mitjana_temps_ms'] = pd.to_numeric(df['mitjana_temps_ms'], errors='coerce')
    df['proporcio_hr'] = pd.to_numeric(df['proporcio_hr'], errors='coerce')
    
except FileNotFoundError:
    print(f"⚠️ No s'ha trobat '{CSV_FILE}'. Usant dades d'exemple.")
    df = pd.DataFrame({
        'proporcio_hr': [0.1, 0.5, 1.0, 1.5, 2.0, 4.0],
        'mitjana_reserves_assignades': [1, 5, 8, 10, 10, 10], # sobre 10
        'mitjana_temps_ms': [200, 210, 250, 400, 800, 600]
    })

# -----------------------------------------------------------------------------
# 2. CONFIGURACIÓ ESTIL
# -----------------------------------------------------------------------------
sns.set_theme(style="whitegrid")
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['axes.edgecolor'] = '#333333'
plt.rcParams['axes.linewidth'] = 1.2

# CORRECCIÓ: Calculem el percentatge real (sobre 10 reserves * 100)
# Si 'mitjana_reserves_assignades' és p.ex. 8, això dóna 80.
df['percentatge_assignades'] = (df['mitjana_reserves_assignades'] / 10) * 100

fig, ax1 = plt.subplots(figsize=(12, 7))

# -----------------------------------------------------------------------------
# 3. EIX 1 (ESQUERRA): Línia de Qualitat (% Assignades)
# -----------------------------------------------------------------------------
color_line = sns.color_palette("viridis", 10)[3] 

sns.lineplot(
    data=df, 
    x='proporcio_hr', 
    y='percentatge_assignades',  # Usem la nova columna calculada correctament
    marker='o', 
    markersize=10,
    linewidth=4, 
    color=color_line, 
    ax=ax1, 
    label='% Reserves Assignades'
)

ax1.fill_between(df['proporcio_hr'], df['percentatge_assignades'], alpha=0.1, color=color_line)

ax1.set_xlabel('Proporció Habitacions / Reserves', fontsize=14, labelpad=15, fontweight='bold')
ax1.set_ylabel('% Èxit Assignació', color=color_line, fontsize=14, fontweight='bold', labelpad=15)
ax1.tick_params(axis='y', labelcolor=color_line, labelsize=12)
ax1.tick_params(axis='x', labelsize=12)
ax1.set_ylim(0, 115) 
ax1.grid(True, linestyle='--', alpha=0.5)

# --- ETIQUETES PERCENTATGES A SOTA ---
for x, y in zip(df['proporcio_hr'], df['percentatge_assignades']):
    # Ara y és un valor com 80.0, així que el text serà "80%"
    ax1.text(x, y - 5, f'{y:.0f}%', color=color_line, fontweight='bold', ha='center', va='top', fontsize=11)

# -----------------------------------------------------------------------------
# 4. EIX 2 (DRETA): Barres de Cost (Temps)
# -----------------------------------------------------------------------------
ax2 = ax1.twinx()
color_bar = sns.color_palette("inferno", 10)[5]

# CORRECCIÓ: Usem 'proporcio_hr' també per a les barres (abans posava 'conflict_ratio')
bars = ax2.bar(
    df['proporcio_hr'], 
    df['mitjana_temps_ms'], 
    width=0.1,  # Ajusta l'amplada si les barres queden massa primes o gruixudes
    alpha=0.5, 
    color=color_bar, 
    edgecolor='black',
    linewidth=1,
    label='Temps de Càlcul (ms)'
)

ax2.set_ylabel('Temps Mitjà (ms)', color=color_bar, fontsize=14, fontweight='bold', labelpad=15)
ax2.tick_params(axis='y', labelcolor=color_bar, labelsize=12)
ax2.grid(False)

# Etiquetes sobre les barres
for rect in bars:
    height = rect.get_height()
    if height > 0:
        ax2.text(
            rect.get_x() + rect.get_width()/2., 
            height + (df['mitjana_temps_ms'].max()*0.02), 
            f'{int(height)}', 
            ha='center', va='bottom', color='#555555', fontsize=10, fontweight='bold'
        )

# -----------------------------------------------------------------------------
# 5. LLEGENDA I TITOLS
# -----------------------------------------------------------------------------
plt.title('Impacte de la Proporció Habitacions/Reserves', fontsize=18, fontweight='bold', pad=20)

lines, labels = ax1.get_legend_handles_labels()
bars_leg, bar_labels = ax2.get_legend_handles_labels()
ax1.legend(lines + bars_leg, labels + bar_labels, loc='center right', frameon=True, framealpha=0.9, shadow=True)

sns.despine(top=True, right=False, left=False)

plt.tight_layout()
plt.savefig(OUTPUT_IMG, dpi=300)
print(f"Gràfic guardat com '{OUTPUT_IMG}'")
plt.show()
