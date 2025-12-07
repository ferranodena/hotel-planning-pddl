#!/usr/bin/env python3
"""
Anàlisi d'Experiments Extensió 3

- Llegeix el CSV generat per l'orquestrador (resultats_ext3.csv).
- Genera gràfics per:
    * Temps mitjà vs. nombre de reserves / habitacions / dies.
    * Descarts mitjans i % descartades vs. nombre de reserves.
    * Places descartades mitjanes vs. nombre de reserves.
- Desa els gràfics com a fitxers PNG a una carpeta de sortida.
"""

import os
import pandas as pd
import matplotlib.pyplot as plt

# ---------------------------------------------------------------------
# CONFIGURACIÓ
# ---------------------------------------------------------------------
INPUT_CSV   = r"C:\Users\Usuario\Documents\ABIA\ABIA-practica-2\resultats\ext3\resultats_ext3.csv"
OUTPUT_DIR  = "resultats/ext3/graficos"

# Si treballes en notebooks o vols estils macos
plt.style.use("seaborn-v0_8")


def crear_directori(path):
    if not os.path.exists(path):
        os.makedirs(path)


def plot_temps_vs_reserves(df):
    """
    Gràfic: temps mitjà vs nombre de reserves.
    Opcionalment colorejat pel nombre d'habitacions.
    """
    plt.figure(figsize=(6, 4))
    scatter = plt.scatter(df["num_reserves"], df["mitjana_temps_ms"],
                          c=df["num_habitacions"], cmap="viridis", s=60)
    plt.colorbar(scatter, label="Num habitacions")
    plt.xlabel("Nombre de reserves")
    plt.ylabel("Temps mitjà (ms)")
    plt.title("Temps de planificació vs nombre de reserves")
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(os.path.join(OUTPUT_DIR, "temps_vs_reserves.png"))
    plt.close()


def plot_descartades_vs_reserves(df):
    """
    Gràfic: descartades mitjanes i % descartades vs nombre de reserves.
    """
    fig, ax1 = plt.subplots(figsize=(6, 4))

    color1 = "tab:red"
    ax1.set_xlabel("Nombre de reserves")
    ax1.set_ylabel("Descartades mitjanes", color=color1)
    ax1.plot(df["num_reserves"], df["descartades_avg"], marker="o",
             color=color1, label="Descartades mitjanes")
    ax1.tick_params(axis="y", labelcolor=color1)

    ax2 = ax1.twinx()
    color2 = "tab:blue"
    ax2.set_ylabel("% descartades", color=color2)
    ax2.plot(df["num_reserves"], df["pct_descartades"], marker="s",
             linestyle="--", color=color2, label="% descartades")
    ax2.tick_params(axis="y", labelcolor=color2)

    plt.title("Descarts vs nombre de reserves")
    fig.tight_layout()
    plt.grid(True, axis="x", alpha=0.3)
    plt.savefig(os.path.join(OUTPUT_DIR, "descartades_vs_reserves.png"))
    plt.close()


def plot_places_vs_reserves(df):
    """
    Gràfic: places descartades mitjanes vs nombre de reserves.
    """
    plt.figure(figsize=(6, 4))
    plt.plot(df["num_reserves"], df["places_descartades_avg"],
             marker="o", color="darkgreen")
    plt.xlabel("Nombre de reserves")
    plt.ylabel("Places descartades mitjanes")
    plt.title("Places desaprofitades vs nombre de reserves")
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(os.path.join(OUTPUT_DIR, "places_vs_reserves.png"))
    plt.close()


def plot_temps_vs_dies(df):
    """
    Gràfic: temps mitjà vs nombre de dies.
    """
    plt.figure(figsize=(6, 4))
    plt.plot(df["num_dies"], df["mitjana_temps_ms"],
             marker="o", color="purple")
    plt.xlabel("Nombre de dies")
    plt.ylabel("Temps mitjà (ms)")
    plt.title("Temps de planificació vs nombre de dies")
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(os.path.join(OUTPUT_DIR, "temps_vs_dies.png"))
    plt.close()


def plot_temps_vs_habitacions(df):
    """
    Gràfic: temps mitjà vs nombre d'habitacions.
    """
    plt.figure(figsize=(6, 4))
    plt.plot(df["num_habitacions"], df["mitjana_temps_ms"],
             marker="o", color="orange")
    plt.xlabel("Nombre d'habitacions")
    plt.ylabel("Temps mitjà (ms)")
    plt.title("Temps de planificació vs nombre d'habitacions")
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(os.path.join(OUTPUT_DIR, "temps_vs_habitacions.png"))
    plt.close()


def main():
    crear_directori(OUTPUT_DIR)

    # Llegir CSV d'experiments
    df = pd.read_csv(INPUT_CSV)

    # Ordenem per nombre de reserves per a gràfics més “nets”
    df_sorted_res = df.sort_values("num_reserves")
    df_sorted_dies = df.sort_values("num_dies")
    df_sorted_hab = df.sort_values("num_habitacions")

    # Generar gràfics
    plot_temps_vs_reserves(df_sorted_res)
    plot_descartades_vs_reserves(df_sorted_res)
    plot_places_vs_reserves(df_sorted_res)
    plot_temps_vs_dies(df_sorted_dies)
    plot_temps_vs_habitacions(df_sorted_hab)

    print(f"Gràfics generats a la carpeta: {OUTPUT_DIR}")


if __name__ == "__main__":
    main()
