import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# Llegim dades
df = pd.read_csv('resultats_basic.csv')

# Càlculs
# 1. Fiabilitat (Success Rate)
def get_success_rate(s):
    ok, total = map(int, s.split('/'))
    return (ok / total) * 100

success_rate = df['exit_ratio'].apply(get_success_rate)

# 2. Satisfacció de Demanda (% sobre el total demanat)
#    Nota: Usem l'Esperança Matemàtica (mitjana_assignades * fiabilitat) / total
#    per ser honestos amb el rendiment real global.
real_assigned = df['mitjana_reserves_assignades'] * (success_rate / 100)
satisfaction_rate = (real_assigned / df['num_reserves']) * 100

# -----------------------------------------------------------------------------
# GRÀFIC DOBLE EIX
# -----------------------------------------------------------------------------
fig, ax1 = plt.subplots(figsize=(10, 6))

indices = np.arange(len(df))

# EIX 1 (Esquerra): Fiabilitat (Línia Vermella)
color_fiab = '#c0392b'
ax1.set_xlabel('Mida del Problema (Nombre de Reserves)', fontsize=12)
ax1.set_ylabel('Fiabilitat del Sistema (%)', color=color_fiab, fontsize=12, fontweight='bold')
p1 = ax1.plot(indices, success_rate, color=color_fiab, marker='o', linewidth=3, label='Fiabilitat (No Peta)')
ax1.tick_params(axis='y', labelcolor=color_fiab)
ax1.set_ylim(-5, 105)
ax1.set_xticks(indices)
ax1.set_xticklabels(df['num_reserves'])

# EIX 2 (Dreta): Satisfacció (Barres Verdes)
ax2 = ax1.twinx()
color_cap = '#27ae60'
ax2.set_ylabel('% Demanda Satisfeta', color=color_cap, fontsize=12, fontweight='bold')
p2 = ax2.bar(indices, satisfaction_rate, alpha=0.3, color=color_cap, label='% Demanda Satisfeta', width=0.5)
ax2.tick_params(axis='y', labelcolor=color_cap)
ax2.set_ylim(0, 100)

# Títol i Llegenda
plt.title('Degradació del Sistema: Estabilitat vs Capacitat', fontsize=14, fontweight='bold', pad=20)
ax1.grid(True, linestyle='--', alpha=0.3)

# Llegenda combinada
lines = p1 + [p2]
labels = [l.get_label() for l in lines]
ax1.legend(lines, labels, loc='upper right')

plt.tight_layout()
plt.savefig('grafic_dual_axis.png', dpi=300)
print("Gràfic guardat: 'grafic_dual_axis.png'")
plt.show()
