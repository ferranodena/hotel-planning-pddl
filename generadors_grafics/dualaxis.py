import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# -----------------------------------------------------------------------------
# 1. CONFIGURACIÓ DADES
# -----------------------------------------------------------------------------
CSV_FILE = './resultats/ext1/resultats_2.csv'
OUTPUT_IMG = 'grafic_escalabilitat_styled.png'

try:
    df = pd.read_csv(CSV_FILE)
    # Assegurar que tot són números
    df['num_reserves'] = pd.to_numeric(df['num_reserves'], errors='coerce')
    df['mitjana_temps_ms'] = pd.to_numeric(df['mitjana_temps_ms'], errors='coerce')
    df['pct_assignades'] = pd.to_numeric(df['pct_assignades'], errors='coerce')
    
except FileNotFoundError:
    print(f"⚠️ No s'ha trobat '{CSV_FILE}'. Usant dades d'exemple.")
    # Dades d'exemple basades en el teu CSV real
    df = pd.DataFrame({
        'num_reserves': [10, 20, 30, 40, 50, 100],
        'pct_assignades': [100, 100, 100, 98, 95, 90],
        'mitjana_temps_ms': [102, 559, 2953, 9864, 29768, 120000]
    })

# -----------------------------------------------------------------------------
# 2. CONFIGURACIÓ ESTIL
# -----------------------------------------------------------------------------
sns.set_theme(style="whitegrid")
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['axes.edgecolor'] = '#333333'
plt.rcParams['axes.linewidth'] = 1.2

fig, ax1 = plt.subplots(figsize=(12, 7))

# -----------------------------------------------------------------------------
# 3. EIX 1 (ESQUERRA): Línia de Qualitat (% Assignades)
# -----------------------------------------------------------------------------
color_line = sns.color_palette("viridis", 10)[3] 

sns.lineplot(
    data=df, 
    x='num_reserves', 
    y='pct_assignades', 
    marker='o', 
    markersize=10,
    linewidth=4, 
    color=color_line, 
    ax=ax1, 
    label='% Reserves Assignades'
)

ax1.fill_between(df['num_reserves'], df['pct_assignades'], alpha=0.1, color=color_line)

ax1.set_xlabel('Nombre de Reserves (Mida del Problema)', fontsize=14, labelpad=15, fontweight='bold')
ax1.set_ylabel('% Èxit Assignació', color=color_line, fontsize=14, fontweight='bold', labelpad=15)
ax1.tick_params(axis='y', labelcolor=color_line, labelsize=12)
ax1.tick_params(axis='x', labelsize=12)
ax1.set_ylim(0, 115) 
ax1.grid(True, linestyle='--', alpha=0.5)

# --- ETIQUETES PERCENTATGES A SOTA ---
for x, y in zip(df['num_reserves'], df['pct_assignades']):
    ax1.text(x, y - 5, f'{y:.0f}%', color=color_line, fontweight='bold', ha='center', va='top', fontsize=11)

# -----------------------------------------------------------------------------
# 4. EIX 2 (DRETA): Barres de Cost (Temps)
# -----------------------------------------------------------------------------
ax2 = ax1.twinx()
color_bar = sns.color_palette("inferno", 10)[5]

# Ajustem l'amplada de les barres (width) perquè es vegin bé en escala 10-100
bar_width = 4.0 

bars = ax2.bar(
    df['num_reserves'], 
    df['mitjana_temps_ms'], 
    width=bar_width, 
    alpha=0.5, 
    color=color_bar, 
    edgecolor='black',
    linewidth=1,
    label='Temps de Càlcul (ms)'
)

ax2.set_ylabel('Temps Mitjà (ms)', color=color_bar, fontsize=14, fontweight='bold', labelpad=15)
ax2.tick_params(axis='y', labelcolor=color_bar, labelsize=12)
ax2.grid(False)

# Etiquetes sobre les barres (només si hi ha espai o per cada N barres si són moltes)
for rect in bars:
    height = rect.get_height()
    if height > 0:
        # Formatem el temps per ser llegible (si és molt gran, usem k o s)
        if height > 1000:
            label_text = f'{height/1000:.1f}s'
        else:
            label_text = f'{int(height)}ms'
            
        ax2.text(
            rect.get_x() + rect.get_width()/2., 
            height + (df['mitjana_temps_ms'].max()*0.02), 
            label_text, 
            ha='center', va='bottom', color='#555555', fontsize=9, fontweight='bold'
        )

# -----------------------------------------------------------------------------
# 5. LLEGENDA I TITOLS
# -----------------------------------------------------------------------------
plt.title('Escalabilitat del Planificador (Mida Creixent)', fontsize=18, fontweight='bold', pad=20)

lines, labels = ax1.get_legend_handles_labels()
bars_leg, bar_labels = ax2.get_legend_handles_labels()
# Unim llegendes
ax1.legend(lines + bars_leg, labels + bar_labels, loc='center left', frameon=True, framealpha=0.9, shadow=True)

sns.despine(top=True, right=False, left=False)

plt.tight_layout()
plt.savefig(OUTPUT_IMG, dpi=300)
print(f"Gràfic guardat com '{OUTPUT_IMG}'")
plt.show()
