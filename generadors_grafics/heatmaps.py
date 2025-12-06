import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# -----------------------------------------------------------------------------
# 1. CONFIGURACIÓ
# -----------------------------------------------------------------------------
CSV_FILE = './resultats/ext2/resultats_2.csv'
OUT_SCORE_IMG = 'heatmap_puntuacio.png'
OUT_TIME_IMG = 'heatmap_temps.png'

try:
    df = pd.read_csv(CSV_FILE)
except FileNotFoundError:
    print(f"⚠️ No s'ha trobat '{CSV_FILE}'")
    exit()

# -----------------------------------------------------------------------------
# 2. PREPARACIÓ DADES (PIVOT)
# -----------------------------------------------------------------------------
# Necessitem matrius on:
# Index (Files) = Conflict Ratio (Eix Y)
# Columns (Columnes) = Match Prob (Eix X)
# Values = Score o Time

pivot_score = df.pivot(index='conflict_ratio', columns='match_prob', values='avg_score')
pivot_time = df.pivot(index='conflict_ratio', columns='match_prob', values='avg_time')

# Ordenem l'eix Y (Conflict) de dalt (alt) a baix (baix) perquè sigui intuïtiu
# O de baix a dalt segons preferència. Seaborn posa el 0 a baix per defecte? No, a dalt.
# Invertim l'index per tenir 0.0 a baix i 1.0 a dalt (com un eix cartesià normal)
pivot_score = pivot_score.sort_index(ascending=False)
pivot_time = pivot_time.sort_index(ascending=False)

# -----------------------------------------------------------------------------
# 3. GENERAR HEATMAP PUNTUACIÓ (QUALITAT)
# -----------------------------------------------------------------------------
plt.figure(figsize=(10, 8))
sns.set_context("notebook", font_scale=1.1)

# Usem un mapa de colors divergent o seqüencial.
# "RdYlGn_r" -> Red-Yellow-Green (Reversed). 
# Vermell = Alt Score (Dolent), Verd = Baix Score (Bo).
sns.heatmap(pivot_score, annot=True, fmt=".1f", cmap="RdYlGn_r", 
            linewidths=.5, cbar_kws={'label': 'Puntuació Mitjana (Penalització)'})

plt.title('Impacte Combinat: Conflicte vs Orientació (Qualitat)', fontsize=15, pad=20, fontweight='bold')
plt.xlabel('Probabilitat de Coincidència (Match)', fontsize=12, labelpad=10)
plt.ylabel('Ràtio de Conflicte Temporal', fontsize=12, labelpad=10)

plt.tight_layout()
plt.savefig(OUT_SCORE_IMG, dpi=300)
print(f"Generat {OUT_SCORE_IMG}")
plt.close()

# -----------------------------------------------------------------------------
# 4. GENERAR HEATMAP TEMPS (RENDIMENT)
# -----------------------------------------------------------------------------
plt.figure(figsize=(10, 8))

# "Blues" o "YlOrRd" per temps. Fosc = Lent.
sns.heatmap(pivot_time, annot=True, fmt=".0f", cmap="Blues", 
            linewidths=.5, cbar_kws={'label': 'Temps Mitjà (ms)'})

plt.title('Impacte Combinat: Conflicte vs Orientació (Temps)', fontsize=15, pad=20, fontweight='bold')
plt.xlabel('Probabilitat de Coincidència (Match)', fontsize=12, labelpad=10)
plt.ylabel('Ràtio de Conflicte Temporal', fontsize=12, labelpad=10)

plt.tight_layout()
plt.savefig(OUT_TIME_IMG, dpi=300)
print(f"Generat {OUT_TIME_IMG}")
plt.close()
