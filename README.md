# 🔍 Pràctica de Planificació — ABIA (UPC 2025/2026)

Aquest projecte és la implementació d'un planificador basat en PDDL per a la gestió d'un hotel, desenvolupat com a part de la pràctica de l'assignatura d'ABIA a la UPC durant el curs 2025/2026.

## 🧠 Objectius

---

## 🏨 Descripció del problema

Una central de reserves d’un hotel necessita un sistema capaç d’assignar les peticions de reserva que es reben a les habitacions disponibles, seguint diversos criteris i restriccions. Per simplificar el context, considerem que totes les reserves corresponen a un únic mes de 30 dies.
Cada habitació està descrita pel seu identificador i la seva capacitat, que pot allotjar entre 1 i 4 persones.
Cada reserva inclou un identificador, el nombre de persones (entre 1 i 4) i els dies d’inici i final de l’estada (entre 1 i 30).
La tasca del planificador és trobar una assignació vàlida i eficient de reserves a habitacions, complint les restriccions i optimitzant els criteris definits.

---

## 🧱 Estructura del projecte

- `README.md` — Resum del projecte i instruccions d’ús.
- `INFORME.md` — Arxiu de generació de l'informe
- `INFORME.pdf` — Informe final amb resultats i conclusions.
- `documentacio/` — Documents de referència i explicacions addicionals. Conté l’enunciat oficial i la descripció de la implementació de l’estat.
- `basic/` — Implementació bàsica del planificador.
  - `domini_basic.pddl` — Domini PDDL bàsic.
  - `basic.pddl`
  - `generador_basic.py` — Generador de problemes bàsics.
- `extensions/`
  - `ext1` - Conté domini, problemes i generador per a l'extensió 1.
  - `ext2` - Conté domini, problemes i generador per a l'extensió 2.
  - `ext3` - Conté domini, problemes i generador per a l'extensió 3.
  - `ext4` - Conté domini, problemes i generador per a l'extensió 4.
- `figures/` — Gràfics i visualitzacions dels resultats.
- `programa/` — Codi font del planificador
- `resultats/` — Resultats dels experiments i dades recollides.

## 🚀 Ús

Per executar el planificador amb un domini i problema específics, des de l'arxiu arrel del projecte, utilitzeu la següent comanda:

```bash
./programa/metricff.exe -o <path_al_domini.pddl> -f <path_al_problema.pddl> -O
```

Per exemple, per executar el planificador amb el domini bàsic i un problema específic:

```bash
./programa/metricff.exe -o basic/domini_basic.pddl -f basic/problems/basic.pddl -O
```

El flag `-O`, és OPCIONAL I s'utilitza per activar **l'optimització basada en mètriques** definides al domini PDDL.

## 👥 Autors

- Ferran Òdena
- Carlos Palazón  
- Pol Riera
