import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# -----------------------------------------------------------------------------
# 1. CONFIGURACIÓ DADES
# -----------------------------------------------------------------------------
CSV_FILE = './resultats/ext2/resultats_qualitat.csv'
OUTPUT_IMG = 'grafic_qualitat_vs_temps_trend.png'

try:
    df = pd.read_csv(CSV_FILE)
    df['match_prob'] = pd.to_numeric(df['match_prob'], errors='coerce')
    df['mitjana_temps_ms'] = pd.to_numeric(df['mitjana_temps_ms'], errors='coerce')
    df['mitjana_puntuacio'] = pd.to_numeric(df['mitjana_puntuacio'], errors='coerce')
    df = df.sort_values('match_prob')
    
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

fig, ax1 = plt.subplots(figsize=(12, 7))

# -----------------------------------------------------------------------------
# 3. EIX 1 (ESQUERRA): Barres de Temps
# -----------------------------------------------------------------------------
color_bar = sns.color_palette("Blues", 10)[5] 
bar_width = 0.06 

bars = ax1.bar(
    df['match_prob'], 
    df['mitjana_temps_ms'], 
    width=bar_width, 
    alpha=0.6, 
    color=color_bar, 
    edgecolor='#2b4b7d',
    linewidth=1,
    label='Temps Mitjà (ms)'
)

ax1.set_xlabel('match_prob', fontsize=14, labelpad=15, fontweight='bold')
ax1.set_ylabel('Temps d\'Execució (ms)', color=color_bar, fontsize=14, fontweight='bold', labelpad=15)
ax1.tick_params(axis='y', labelcolor=color_bar, labelsize=12)
ax1.tick_params(axis='x', labelsize=12)
ax1.grid(False)

for rect in bars:
    height = rect.get_height()
    if height > 0:
        ax1.text(
            rect.get_x() + rect.get_width()/2., 
            height, 
            f'{int(height)}', 
            ha='center', va='bottom', color=color_bar, fontsize=10, fontweight='bold'
        )

# -----------------------------------------------------------------------------
# 4. EIX 2 (DRETA): Línia de Puntuació + TENDÈNCIA
# -----------------------------------------------------------------------------
ax2 = ax1.twinx()
color_line = "#e74c3c" 
color_trend = "#c0392b" # Un vermell més fosc per la tendència

# A) Línia Real (Dades)
sns.lineplot(
    data=df, 
    x='match_prob', 
    y='mitjana_puntuacio', 
    marker='o', 
    markersize=10,
    linewidth=3, 
    color=color_line, 
    ax=ax2, 
    label='Puntuació de Penalització'
)

# B) Línia de Tendència (Regressió Polinòmica grau 2 per capturar la corba)
# Usem numpy per calcular-la manualment i pintar-la amb ax2.plot per tenir control total
z = np.polyfit(df['match_prob'], df['mitjana_puntuacio'], 1) # Grau 2
p = np.poly1d(z)

# Creem un rang suau per la línia de tendència
x_trend = np.linspace(df['match_prob'].min(), df['match_prob'].max(), 100)
y_trend = p(x_trend)

ax2.plot(x_trend, y_trend, color=color_trend, linestyle='--', linewidth=2, alpha=0.8, label='Tendència (Poly)')

ax2.set_ylabel('Puntuació Mitjana (Penalització)', color=color_line, fontsize=14, fontweight='bold', labelpad=15)
ax2.tick_params(axis='y', labelcolor=color_line, labelsize=12)
ax2.grid(True, linestyle='--', alpha=0.5)

# Etiquetes
for x, y in zip(df['match_prob'], df['mitjana_puntuacio']):
    ax2.text(x, y + 0.2, f'{y:.1f}', color=color_line, fontweight='bold', ha='center', va='bottom', fontsize=11)

# -----------------------------------------------------------------------------
# 5. LLEGENDA I TITOLS
# -----------------------------------------------------------------------------
plt.title('Relació entre match_prob i Rendiment del Planificador', fontsize=16, fontweight='bold', pad=20)

lines, labels = ax2.get_legend_handles_labels()
bars_leg, bar_labels = ax1.get_legend_handles_labels()

plt.legend(bars_leg + lines, bar_labels + labels, loc='upper center', bbox_to_anchor=(0.5, -0.15),
           fancybox=True, shadow=True, ncol=3) # ncol=3 per incloure la tendència

sns.despine(top=True, right=False, left=False)

plt.tight_layout()
plt.savefig(OUTPUT_IMG, dpi=300, bbox_inches='tight')
print(f"Gràfic guardat com '{OUTPUT_IMG}'")
plt.show()
