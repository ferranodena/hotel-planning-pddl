<style>
/* Estils globals del document */
body {
font-family: Helvetica, Arial, sans-serif;
font-size: 9pt;
text-align: justify;
line-height: 1.4;
}

/* Paràgrafs justificats */
p {
text-align: justify;
font-size: 9pt;
}

/* Estils per a les llistes amb la mateixa mida que el text normal */
ul,
ol,
code {
font-size: 9pt;
line-height: 1.4;
}

li {
font-size: 9pt;
line-height: 1.4;
}

/* Títols més petits */
h1 {
font-size: 13pt;
text-align: left;
}
h2 {
font-size: 12pt;
text-align: left;
font-weight: bold;
}
h3 {
font-size: 11pt;
text-align: left;
font-weight: bold;
}
h4 {
font-size: 9pt;
text-align: left;
}
h5 {
font-size: 9pt;
text-align: left;
text-decoration: underline;
}

/* CORRECCIONS PER A BLOCS DE CODI */
pre {
max-width: 100%;
overflow-x: auto;
white-space: pre-wrap;
word-wrap: break-word;
overflow-wrap: break-word;
background-color: #f5f5f5;
padding: 0.5rem;
border: 1px solid #ddd;
border-radius: 3px;
font-size: 8pt;
line-height: 1.4;
min-width: 0;
}

code {
overflow-wrap: break-word;
word-wrap: break-word;
word-break: break-word;
white-space: pre-wrap;
}

/* Contenidor principal per a la fila d'imatges */
.image-row {
display: flex;
flex-wrap: wrap;
justify-content: center;
gap: 1rem;
margin-top: 1rem;
margin-bottom: 1rem;
align-items: flex-start;
width: 100%;
}

/* Cada columna que conté una imatge i el seu text */
.image-column {
flex: 0 1 48%;
min-width: 280px;
max-width: 360px;
display: flex;
flex-direction: column;
align-items: center;
box-sizing: border-box;
}

/* Quan només hi ha UNA imatge */
.image-row:has(.image-column:only-child) .image-column {
max-width: 480px;
flex: 0 1 auto;
}

/* Imatge única */
.image-row:has(.image-column:only-child) .image-column img {
width: 100%;
max-width: 480px;
max-height: 400px;
height: auto;
object-fit: contain;
}

/* Estils per a la imatge (múltiples imatges) */
.image-column img {
width: 100%;
max-width: 360px;
max-height: 320px;
height: auto;
display: block;
object-fit: contain;
}

/* Estils per al peu de foto */
.image-column .caption {
margin-top: 0.5rem;
font-size: 8pt;
text-align: center;
color: #555;
width: 100%;
}

/* Estil per a la separació de pàgines en PDF */
.page-break {
page-break-before: always;
break-before: page;
}

/* Bloc imatge-esquerra / text-dreta */
.media-row {
display: flex;
gap: 1.5rem;
align-items: flex-start;
margin: 1rem 0;
min-width: 0;
}
.media-image {
flex: 0 0 38%;
max-width: 240px;
display: flex;
flex-direction: column;
align-items: center;
}
.media-image img {
width: 100%;
height: auto;
display: block;
}
.media-image .caption {
margin-top: 0.5rem;
font-size: 8pt;
text-align: center;
color: #555;
}
.media-text {
flex: 1 1 0;
min-width: 240px;
}

/* ============================================ CONTENIDOR DE TAULES AMB PEU DE TAULA ============================================ */
.table-container {
width: 100%;
margin: 1.5rem 0;
overflow-x: auto;
page-break-inside: avoid;
}

/* Estils per a les taules */
.table-container table {
width: 100%;
max-width: 100%;
border-collapse: collapse;
font-size: 7pt;
margin: 0 auto;
background-color: #fff;
}

/* Capçalera de taula */
.table-container thead {
background-color: #e0e0e0;
font-weight: bold;
}
.table-container th {
padding: 8px 6px;
text-align: center;
border: 1px solid #888;
font-size: 7pt;
}

/* Files de dades */
.table-container td {
padding: 6px 5px;
text-align: center;
border: 1px solid #aaa;
font-size: 7pt;
}
.table-container td code {
font-size: 7pt;
}

/* Files alternades (zebra striping) */
.table-container tbody tr:nth-child(even) {
background-color: #f5f5f5;
}

/* Peu de taula (caption) */
.table-container .table-caption {
margin-top: 0.5rem;
font-size: 8pt;
text-align: center;
color: #555;
font-style: italic;
}

/* Estil alternatiu: caption sobre la taula */
.table-container .table-title {
margin-bottom: 0.5rem;
font-size: 9pt;
text-align: center;
font-weight: bold;
color: #333;
}

/* Millores per a impressió/PDF */
@media print {
.table-container {
page-break-inside: avoid;
}
.table-container table {
border: 1px solid #000;
}
.table-container th,
.table-container td {
border: 1px solid #666;
}
.image-column {
page-break-inside: avoid;
}
/* Límits més restrictius per a PDF */
.image-column img {
max-height: 280px;
}
.image-row:has(.image-column:only-child) .image-column img {
max-height: 360px;
}
pre {
page-break-inside: avoid;
overflow: visible;
white-space: pre-wrap;
}
}

/* Pàgina i peu de pàgina (si el motor ho suporta) */
@page {
@bottom-center {
content: "Pàgina " counter(page) " de " counter(pages);
font-size: 8pt;
color: #555;
font-family: Helvetica, Arial, sans-serif;
}
}
</style>

## 0. Taula de continguts

- [0. Taula de continguts](#0-taula-de-continguts)
- [1. Introducció](#1-introducció)
- [2. Objectius i metodologia](#2-objectius-i-metodologia)
- [3. Disseny del domini i dels problemes](#3-disseny-del-domini-i-dels-problemes)
- [3.0 Extensió bàsica](#30-extensió-bàsica)
  - [3.0.1 Domini](#301-domini)
  - [3.0.2 Problemes](#302-problemes)
    - [3.0.2.1 Problema 1: Poques habitacions, moltes reserves](#3021-problema-1-poques-habitacions-moltes-reserves)
    - [3.0.2.2 Problema 2: Moltes habitacions, poques reserves](#3022-problema-2-moltes-habitacions-poques-reserves)
    - [3.0.2.3 Problema 3: Moltes habitacions, moltes reserves](#3023-problema-3-moltes-habitacions-moltes-reserves)
- [3.1 Extensió 1](#31-extensió-1)
  - [3.1.1 Domini](#311-domini)
  - [3.1.2 Problemes](#312-problemes)
    - [3.1.2.1 Problema 1: Dilema de l'optimització](#3121-problema-1-dilema-de-loptimització)
    - [3.1.2.2 Problema 2: Reserves solapades](#3122-problema-2-reserves-solapades)
- [3.2 Extensió 2](#32-extensió-2)
  - [3.2.1 Domini](#321-domini)
  - [3.2.2 Problemes](#322-problemes)
    - [3.2.2.1 Problema 1: El puzzle d'afinitats](#3221-problema-1-el-puzzle-dafinitats)
    - [3.2.2.2 Problema 2: Selecció VIP](#3222-problema-2-selecció-vip)
    - [3.2.2.3 Problema 3: L'Agent de Viatges Flexible](#3223-problema-3-lagent-de-viatges-flexible)
- [3.3 Extensió 3](#33-extensió-3)
  - [3.3.1 Domini](#331-domini)
  - [3.3.2 Problemes](#332-problemes)
    - [3.3.2.1 Problema 1](#3321-problema-1)
    - [3.3.2.2 Problema 2](#3322-problema-2)
- [3.4 Extensió 4](#34-extensió-4)
  - [3.4.1 Domini](#341-domini)
  - [3.4.2 Problemes](#342-problemes)
    - [3.4.2.1 Problema 1](#3421-problema-1)
    - [3.4.2.2 Problema 2](#3422-problema-2)
- [4. Conclusions](#4-conclusions)

<div class="page-break"></div>

## 1. Introducció

<div class="page-break"></div>

## 2. Objectius i metodologia

<div class="page-break"></div>

## 3. Disseny del domini i dels problemes

## 3.0 Extensió bàsica

L'extensió bàsica del domini `hotelbasic` implementa la funcionalitat fonamental d'assignació d'habitacions a reserves, gestionant les restriccions de compatibilitat i no-solapament temporal. Aquesta versió inicial serveix com a base per a les extensions posteriors, establint els conceptes clau i la lògica de recursos que es desenvoluparan més endavant.

### 3.0.1 Domini

El domini `hotelbasic` modela un problema d'assignació de recursos (scheduling) on un conjunt de peticions (`reserva`) han de ser assignades a recursos limitats (`habitacio`) durant uns intervals de temps específics (`dia`).

1. Tipus (**`:types`**)
   El domini defineix tres entitats bàsiques que estructuren el problema:

   - **`reserva`**: Representa una petició d'allotjament que ha de ser satisfeta.
   - **`habitacio`**: Representa el recurs físic (amb capacitat unitària) on s'allotgen les reserves.
   -**`dia`**: Representa la unitat de temps discreta.

2. Predicats (**`:predicates`**)
   Els predicats defineixen l'estat del món i les relacions entre els objectes:

   - **Predicats Estàtics (Dades d'entrada):**
     - `(dies-reserva ?r - reserva ?d - dia)`: Defineix l'interval temporal de cada reserva. Indica que la reserva `?r` requereix ocupació durant el dia `?d`. Aquest predicat es defineix per a cada dia dins de l'interval de la reserva.
     - `(compatible ?r - reserva ?h - habitacio)`: Restricció de domini que indica si l'habitació `?h` és vàlida per a la reserva `?r` (per exemple, per capacitat de persones). Això ho hem fet perquè **les reserves només es puguin assignar a habitacions compatibles.**

   - **Predicats Dinàmics (Estat del sistema):**
      - `(assignada ?r - reserva)`: Indica que la reserva `?r` ja ha estat processada i té una habitació assignada.
      - `(ocupada ?h - habitacio ?d - dia ?r - reserva)`: Indica que l'habitació `?h` està ocupada pel menys per la reserva `?r` durant el dia `?d`. Aquest predicat s'actualitza dinàmicament a mesura que es processen les assignacions, ja que necessitem per garantir que no hi hagi solapaments.

3. Accions (**`:action`**)
L'única acció del sistema en la seva implementació bàsica és **`assignar-habitacio`**, que formalitza la decisió d'ubicar una reserva.

- **Paràmetres:** Una reserva `?r` i una habitació `?h`.
- **Precondicions:** Per poder executar l'acció, s'han de complir tres condicions simultànies:
  
   1. `(not (assignada ?r))`: La reserva no ha d'estar ja assignada (evita duplicats).
   2. `(compatible ?r ?h)`: L'habitació ha de ser adequada per a la reserva.
   3. **Restricció de No-Solapament:**
  
        ```pddl
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
        ```

        La traducció d'aquesta precondició és: *si no existeix cap dia `?d` i cap altra reserva `?r2` tal que `?r` demani el dia `?d` i l'habitació `?h` estigui ocupada per `?r2` en aquest dia*. Això verifica que, per a tots els dies que demana la reserva `?r`, l'habitació `?h` no estigui ocupada per cap altra reserva `?r2`. És el nucli de la lògica de recursos. És el que garanteix que no hi hagi solapaments en l'assignació d'habitacions, per aixó calia incloure aquest predicat dinàmicament actualitzat.

- **Efectes:** Si s'executa, l'estat canvia:

   1. `(assignada ?r)`: La reserva es marca com a completada.
   2. **Bloqueig de Recursos (Conditional Effect):**

        ```pddl
        (forall (?d - dia) (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
        ```
  
        Per a cada dia `?d` que forma part de la reserva, es marca l'habitació `?h` com a ocupada. L'ús del `forall` és **fonamental**, perquè cal actualitzar l'estat per a tots els dies de la reserva. L'ús del condicional amb `when` permet actualitzar l'estat de manera eficient, bloquejant l'habitació només durant els dies pertinents.

D'aquesta manera, el domini bàsic estableix les regles fonamentals per a l'assignació d'habitacions a reserves, gestionant les restriccions de compatibilitat i no-solapament temporal. Aquest marc servirà com a base per a les extensions posteriors, on s'afegiran funcionalitats més avançades per millorar la flexibilitat i l'eficiència del sistema de planificació.

### 3.0.2 Problemes

#### 3.0.2.1 Problema 1: Poques habitacions, moltes reserves

En aquest experiment volem avaluar la capacitat del planificador per prioritzar i seleccionar el millor subconjunt de reserves quan els recursos són extremadament limitats. Per fer-ho, mantindrem fix el nombre d'habitacions (``n=2``) i incrementarem progressivament el nombre de reserves candidates (5, 10, 15, 20...). Això força el sistema a gestionar un escenari d'alta competència on la gran majoria de reserves, o totes, s'han de descartar. S'espera observar:

1. **Comportament Intel·ligent:** El planificador haurà de triar les combinacions de reserves que maximitzin l'ocupació total (evitant forats temporals), en lloc d'agafar simplement les primeres de la llista.
2. **Escalabilitat:** S'espera un creixement no lineal (ràpid) del temps d'execució, ja que l'espai de cerca per trobar la combinació òptima creix combinatorialment a mesura que afegim més reserves solapades."

Per tant, plantegem el següent parell d'hipòtesis per a aquest experiment:

Respecte al comportament del planificador en aquest escenari d'alta competència:

- $H_0$: El planificador no és capaç de maximitzar l'ocupació total en situacions d'escassetat de recursos, seleccionant reserves de manera aleatòria o greedy.
- $H_1$: El planificador és capaç de maximitzar l'ocupació total, seleccionant reserves de manera intel·ligent per evitar forats temporals.

Hipòtesi sobre l'escalabilitat del planificador:

- $H_0$: El temps d'execució del planificador creix linealment amb el nombre de reserves, indicant una gestió eficient de l'espai de cerca.
- $H_1$: El temps d'execució del planificador creix de manera no lineal (ràpid) amb el nombre de reserves, indicant un augment combinatorial de l'espai de cerca.

Generem doncs diversos problemes amb 2 habitacions i un nombre creixent de reserves (1, 2, .... fins a 10) amb el nostre generador de problemes. Provem d'executar-los amb el planificador i mesurem el temps d'execució i les habitacions assignades amb èxit per a cada cas. Generem la quantitat de reserves de manera aleatòria completament, per la qual cosa els resultats poden variar lleugerament entre execucions. Executem cada problema diverses vegades i prenem la mitjana per obtenir resultats més fiables. Com que l'assignació és greedy, esperem que el nombre d'assignacions sigui proper al màxim possible (2 habitacions * nombre de reserves que caben sense solapament), però lògicament aquests casos seran difícils en termes generals exactament degut a l'atzar en la generació de reserves. Per tant esperem que el nombre d'assignacions sigui baix, i que hi hagi molts conflictes entre reserves, per tant que el planificador no convergeixi. Tot i així, el temps d'execució hauria de ser creixent, ja que el planificador haurà d'explorar moltes possibilitats per trobar la millor assignació possible, tot i que aquesta no sigui possible en aquest domini.

Pel que fa a la quantitat de reserves assignades, obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/1.png" alt="Gràfic de reserves assignades en l'extensió bàsica">
    <div class="caption">Figura 1: Reserves assignades en l'extensió bàsica</div>
  </div>
</div>

La fiabilitat correspon a la proporció de problemes que el planificador prova de resoldre sense abortar des d'un inici i la demanda satisfeta correspon a la proporció de problemes on totes les reserves han pogut ser assignades. Un problema només pot tenir dos outputs, o bé totes les reserves són assignades (èxit total) o bé no es pot assignar cap (fracàs total). Per tant, en aquest domini bàsic no hi ha solucions parcials.
Això és així perquè en aquest domini bàsic no hi ha cap mecanisme per descartar reserves o relaxar restriccions, per tant en situacions de saturació el planificador no pot trobar solucions parcials i es veu obligat a abortar.

Pel que fa al temps d'execució, obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/2.png" alt="Gràfic de temps d'execució en l'extensió bàsica">
    <div class="caption">Figura 2: Temps d'execució en l'extensió bàsica</div>
  </div>
</div>

En primer lloc, l'anàlisi del temps de computació mostra un comportament aparentment estable. Tal com s'observa en el gràfic d'escalabilitat, el temps mitjà d'execució es manté constant al voltant dels 90 ms, independentment de la mida del problema. Aquesta constància, lluny d'indicar una eficiència algorítmica en la resolució de problemes complexos, denota una fallada prematura. En situacions de saturació *on el nombre de reserves supera àmpliament la capacitat disponible*, el planificador no inverteix temps a cercar solucions complexes perquè l'espai de cerca es tanca ràpidament. El sistema detecta la impossibilitat de satisfer totes les restriccions rígides del domini bàsic i conclou l'execució amb un veredicte d'insolubilitat de manera gairebé immediata. Per tant, la latència baixa i constant no reflecteix escalabilitat, sinó la incapacitat del model per gestionar el conflicte.

Podem destacar però els casos de 2 i 4 reserves, on el temps d'execució no és superior i sí que aconsegueix assignar un nombre reduït d'habitacions. Això es deu a que en aquests casos el planificador és capaç de trobar una assignació vàlida en 6/10 i 1/10 casos respectivament, i per tant ha d'invertir més temps en explorar l'espai de cerca. En aquests casos, el planificador encara pot trobar solucions, però a mesura que la càrrega augmenta, la probabilitat de trobar una assignació vàlida cau dràsticament, i el sistema opta per abortar ràpidament.

Aquesta interpretació es confirma en analitzar la degradació del servei. El gràfic comparatiu entre estabilitat i capacitat  evidencia un col·lapse abrupte del sistema. Amb una càrrega baixa (1 reserva), el sistema presenta una fiabilitat elevada (~80%) i satisfà una part significativa de la demanda. No obstant això, la fiabilitat cau dràsticament en augmentar la càrrega a 2 i 3 reserves, fins a arribar a un punt de ruptura a partir de les 4 reserves, on la taxa d'èxit es desploma al 0%.

Aquesta interpretació es confirma en analitzar la degradació del servei. El gràfic comparatiu entre estabilitat i capacitat evidencia un col·lapse abrupte del sistema en condicions de saturació. Amb una càrrega inicial de 2 reserves, el sistema presenta una fiabilitat moderada (~60%) i satisfà aproximadament un 35% de la demanda total. No obstant això, la robustesa del planificador cau dràsticament en duplicar la càrrega a 4 reserves, on la fiabilitat es desploma fins al ~10%. El punt de ruptura definitiu s'assoleix a partir de les 6 reserves, moment en el qual la taxa d'èxit esdevé nul·la (0%), indicant la incapacitat total del domini bàsic per gestionar escenaris amb una demanda superior a la capacitat instal·lada.

Per tant, respecte a les nostres hipòtesis:

- En l'escenari de poques habitacions i moltes reserves, no rebutgem $H_0$, ja que el planificador no demostra un comportament intel·ligent en maximitzar l'ocupació total. De fet, no és capaç de trobar solucions en aquests casos, ja que el domini bàsic no permet descartar reserves ni relaxar restriccions.
- Pel que fa a l'escalabilitat, no rebutgem $H_0$, ja que el temps d'execució del planificador no creix linealment amb el nombre de reserves. En canvi, es manté constant degut a la incapacitat del model per gestionar l'alta demanda, resultant en una fallada prematura i un veredicte d'insolubilitat.

Per tant, aquest experiment destaca les limitacions crítiques del domini bàsic en situacions d'alta competència per recursos escassos, subratllant la necessitat d'extensions que introdueixin flexibilitat i robustesa en la planificació. Però podem destacar que el planificador és capaç de veure que no hi ha solució i aborta ràpidament, la qual cosa és un comportament desitjable en si mateix.

#### 3.0.2.2 Problema 2: Moltes habitacions, poques reserves

En aquest experiment volem avaluar la capacitat del planificador per gestionar eficientment els recursos quan hi ha una abundància d'habitacions disponibles en comparació amb el nombre de reserves. Per fer-ho, mantindrem fix el nombre de reserves (``m=2``) i incrementarem progressivament el nombre d'habitacions disponibles (5, 10, 15, 20...). Això crea un escenari on el planificador té moltes opcions per assignar les reserves, i s'espera que pugui trobar solucions òptimes ràpidament. S'espera observar:

1. **Comportament Eficient:** El planificador haurà de ser capaç d'assignar totes les reserves disponibles sense problemes, ja que hi ha suficients habitacions per satisfer la demanda.
2. **Escalabilitat:** S'espera que el temps d'execució creixi de manera lineal o sublineal, ja que l'espai de cerca per trobar assignacions òptimes és reduït en comparació amb l'escenari anterior.

Per tant, plantegem el següent parell d'hipòtesis per a aquest experiment:

Respecte al comportament del planificador en aquest escenari d'abundància de recursos:

- $H_0$: El planificador no és capaç d'assignar totes les reserves disponibles, deixant algunes sense assignar malgrat l'abundància d'habitacions.
- $H_1$: El planificador és capaç d'assignar totes les reserves disponibles, utilitzant eficientment les habitacions disponibles.

Hipòtesi sobre l'escalabilitat del planificador:

- $H_0$: El temps d'execució del planificador creix de manera no lineal amb el nombre d'habitacions, indicant una gestió ineficient de l'espai de cerca.
- $H_1$: El temps d'execució del planificador creix de manera lineal o sublineal amb el nombre d'habitacions, indicant una gestió eficient de l'espai de cerca.

Generarem problemes amb un nombre d'habitacions creixent (1, 10, 20, ..., fins a 100) i només 2 reserves. Executarem cada problema diverses vegades i prendrem la mitjana per obtenir resultats més fiables. Esperem que el nombre d'assignacions sigui sempre 2 (totes les reserves assignades) i que el temps d'execució sigui baix i creixi lentament a mesura que augmenta el nombre d'habitacions. Mantenim el nombre de dies a 10 per a tots els experiments.

Pel que fa a la quantitat de reserves assignades, obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/3.png" alt="Gràfic de reserves assignades en l'extensió bàsica (moltes habitacions)">
    <div class="caption">Figura 3: Reserves assignades en l'extensió bàsica (moltes habitacions)</div>
  </div>
</div>

És evident que totes les reserves es poden assignar amb èxit, ja que hi ha moltes habitacions disponibles, i aquest gràfic ho confirma clarament.

Pel que fa al temps d'execució, obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/4.png" alt="Gràfic de temps d'execució en l'extensió bàsica (moltes habitacions)">
    <div class="caption">Figura 4: Temps d'execució en l'extensió bàsica (moltes habitacions)</div>
  </div>
</div>

Veiem un creixement lineal en el temps d'execució a mesura que augmenta el nombre d'habitacions, confirmant la nostra hipòtesi sobre l'eficiència del planificador en aquest escenari. Com que el temps d'execució és molt baix en general, això indica que el planificador gestiona molt bé l'abundància de recursos. Anem un pas més enllà i augmentem el nombre d'habitacions de 50 en 50 fins a 300 per veure si el comportament es manté. Obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/5.png" alt="Gràfic de temps d'execució en l'extensió bàsica (moltes habitacions fins a 300)">
    <div class="caption">Figura 5: Temps d'execució en l'extensió bàsica (moltes habitacions fins a 300)</div>
  </div>
</div>

Confirmem que el temps d'execució segueix creixent de manera lineal, mantenint l'eficiència del planificador fins i tot amb un gran nombre d'habitacions disponibles.

Per tant, respecte a les nostres hipòtesis:

- En l'escenari de poques habitacions i moltes reserves, rebutgem $H_0$ i acceptem $H_1$, ja que el planificador demostra un comportament intel·ligent en maximitzar l'ocupació total.
- En l'escenari de moltes habitacions i poques reserves, rebutgem $H_0$ i acceptem $H_1$, ja que el planificador assigna totes les reserves disponibles de manera eficient, i el temps d'execució creix de manera lineal amb el nombre d'habitacions. Això confirma la seva capacitat per gestionar escenaris amb abundància de recursos, sense passar al pla exponencial.

#### 3.0.2.3 Problema 3: Moltes habitacions, moltes reserves

## 3.1 Extensió 1

Per superar les limitacions del domini bàsic, s'introdueix una primera extensió orientada a la gestió flexible de la demanda i l'optimització de recursos. El canvi fonamental respecte al model anterior és l'eliminació de l'obligatorietat d'assignar totes les reserves. En aquest nou enfocament, el sistema ja no busca satisfer la totalitat de les peticions, sinó que se centra a maximitzar el nombre de reserves assignades.

Aquesta relaxació de l'objectiu global permet que el planificador pugui generar plans vàlids fins i tot en escenaris d'alta demanda i saturació. El resultat ja no és una simple assignació binària (tot o res), sinó una solució òptima que acomoda tantes reserves com sigui possible, descartant implícitament aquelles que no caben per conflictes temporals o incompatibilitat d'habitacions. Les condicions per a una assignació correcta es mantenen: no hi pot haver solapament en l'ocupació d'una habitació i les restriccions de compatibilitat entre reserva i habitació s'han de respectar.

També s'inclou una nova manera de saber la compatibilitat entre reserves i habitacions, basada en la capacitat de l'habitació i el nombre de persones de la reserva. Això permet una gestió més realista dels recursos, ja que es pot assignar una habitació a una reserva sempre que la seva capacitat sigui suficient, sense necessitat d'un predicat explícit de compatibilitat.

### 3.1.1 Domini

El domini `hotel-extensio1` representa una evolució significativa respecte a la seva versió bàsica, incorporant una lògica més realista i flexible per a la gestió de reserves en un entorn de recursos limitats. Les principals diferències estructurals són la introducció de funcions numèriques (`:fluents`).

1. **Ús de Funcions Numèriques (`:functions`)**  
   A diferència del domini bàsic, aquesta extensió fa ús de funcions numèriques per modelar atributs quantitatius:
   - `(capacitat ?h - habitacio)`
   - `(persones ?r - reserva)`.  
   Aquest canvi substitueix el predicat estàtic `(compatible ?r ?h)`. En lloc de pre-calcular (en la generació dels problemes) totes les combinacions vàlides, el sistema ara pot raonar dinàmicament sobre la capacitat, fent una comparació numèrica `(>= (capacitat ?h) (persones ?r))`. Aquesta aproximació és molt més escalable i modular; si s'afegeix una nova habitació o tipus de reserva, no cal recalcular totes les compatibilitats, només definir el seu valor numèric.

2. **Introducció de l'Acció `descartar-reserva`**  
   Aquesta és la modificació més important per superar la fragilitat del domini bàsic. S'afegeix una nova acció `descartar-reserva`, que permet al planificador donar per finalitzada una reserva sense assignar-li una habitació.  
   El domini bàsic fallava quan era impossible assignar totes les reserves. L'acció `descartar-reserva` proporciona una sortida controlada per a aquests casos. Ara, en un escenari de saturació, el planificador pot triar entre `assignar-habitacio` o `descartar-reserva` per a cada petició. Això garanteix que sempre es pugui trobar un pla, evitant el col·lapse total del sistema.

3. **Redefinició del Control de l'Estat**  
   El sistema de control per evitar el processament duplicat d'una reserva ha estat millorat.  
   Se substitueix el predicat `(assignada ?r)` per `(processada ?r)`. En el domini bàsic, només les reserves assignades canviaven d'estat. Ara, tant l'acció `assignar-habitacio` com `descartar-reserva` tenen com a efecte `(processada ?r)`. Aquest predicat unificat assegura que cada reserva es consideri una sola vegada, independentment del resultat de la decisió (assignada o descartada).

4. **Incorporació d'una Mètrica d'Optimització**  
   Per guiar el planificador cap a decisions desitjables, s'utilitza una funció mètrica.  
   La funció `(total-descartades)` s'incrementa (`increase`) cada cop que s'executa l'acció `descartar-reserva`.  
   Combinat amb una definició de problema que inclogui `(:metric minimize (total-descartades))`, el planificador ja no busca qualsevol pla, sinó el pla òptim: aquell que minimitza el nombre de reserves descartades. Això és equivalent a maximitzar les reserves assignades, transformant el problema de planificació en un problema d'optimització. S'ha fet aixi i no al revés per facilitar per disseny del planificador, que ha de treballar amb funcions de minimització que puguin créixer durant l'execució.

### 3.1.2 Problemes

#### 3.1.2.1 Problema 1: Dilema de l'optimització

Aquest problema busca demostrar que el planificador és intel·ligent en la seva capacitat per maximitzar les assignacions, fins i tot quan això implica prendre decisions no òbvies: ha de preferir assignar dues reserves curtes en lloc d'una reserva llarga si ocupen la mateixa habitació, ja que l'objectiu és maximitzar les assignacions. Per aïllar aquest comportament, hem de dissenyar un escenari on assignar de manera greedy (assignar la primera habitació lliure) sigui el pitjor camí per maximitzar les assignacions. Per tant, programem un problema `prob0101.pddl`amb una habitació ``h1`` i tres reserves ``r1``, ``r2`` i ``r3`` amb les següents característiques:

- ``r1``: dies 1-4
- ``r2``: dies 1-2
- ``r3``: dies 3-4

En aquest escenari, si el planificador segueix una estratègia greedy i assigna ``r1`` a ``h1``, no podrà assignar ni ``r2`` ni ``r3`` després, obtenint ``total-assignades = 1``. En canvi, l'estratègia òptima és assignar ``r2`` i ``r3`` a ``h1``, obtenint ``total-assignades = 2``.

Plantegem la següent hipòtesi per a aquest experiment:

- $H_0$: El planificador no és capaç de maximitzar les assignacions en situacions on l'estratègia greedy és subòptima.
- $H_1$: El planificador és capaç de maximitzar les assignacions, evitant l'estratègia greedy quan és necessari.

Executem el problema i obtenim els següents resultats:

```bash
ff: parsing domain file
domain 'HOTEL-EXTENSIO1' defined
 ... done.
ff: parsing problem file
problem 'MAXIMITZAR-ASSIGNACIONS' defined
 ... done.


metric established (normalized to minimize): ((1.00*[RF0](TOTAL-DESCARTADES)) - () + 0.00)

checking for cyclic := effects --- OK.

ff: search configuration is  best-first on 1*g(s) + 5*h(s) where
    metric is ((1.00*[RF0](TOTAL-DESCARTADES)) - () + 0.00)

advancing to distance:    3
                          2
                          1
                          0

ff: found legal plan as follows

step    0: DESCARTAR-RESERVA R-LLARGA
        1: ASSIGNAR-HABITACIO R-CURTA2 H1
        2: ASSIGNAR-HABITACIO R-CURTA1 H1


time spent:    0.16 seconds instantiating 3 easy, 3 hard action templates
               0.00 seconds reachability analysis, yielding 26 facts and 6 actions
               0.00 seconds creating final representation with 22 relevant facts, 1 relevant fluents
               0.00 seconds computing LNF
               0.00 seconds building connectivity graph
               0.00 seconds searching, evaluating 18 states, to a max depth of 0
               0.16 seconds total time
```

El planificador ha trobat la solució òptima, descartant la reserva llarga i assignant les dues reserves curtes, obtenint ``total-assignades = 2``. Per tant, rebutgem $H_0$ i acceptem $H_1$, confirmant que el planificador és capaç de maximitzar les assignacions evitant l'estratègia greedy quan és necessari. Però aquest cas és de joguina, caldrà veure-ho en casos més generals.

Dissenyem, amb ajuda de la LLM `Gemini Pro 3`, un generador de problemes que crea escenaris amb múltiples reserves i habitacions, on hi ha conflictes temporals i es requereix una planificació intel·ligent per maximitzar les assignacions. Aquest generador tindrà un paràmetre clau que controlarà el grau de solapament entre reserves: ``conflict_ratio`` (0.0 - 1.0). Si és 0.0, no hi haurà solapaments i totes les reserves es podran assignar fàcilment. Si és 1.0, totes les reserves es solaparan totalment, fent impossible assignar-les totes. Valors intermedis generaran escenaris amb diferents nivells de conflicte, permetent avaluar la capacitat del planificador per gestionar situacions complexes.
Com que volem aïllar el comportament de maximització d'assignacions, mantenim la compatibilitat entre reserves i habitacions senzilla: totes les habitacions tenen capacitat per 4 persones i totes les reserves seran de 2 persones. Així, l'únic factor limitant serà el solapament temporal. El nombre de dies vindrà donat per un altre paràmetre: ``num_dies``. Així, podem generar problemes amb diferents nivells de conflicte i diferents durades de reserves, per veure com afecta això a la capacitat del planificador per maximitzar les assignacions.

La clau per simular escenaris de competència realistes rau en com es trien els dies d'inici de cada reserva. Podem utilitzar una distribució normal (gaussiana) per modelar aquesta selecció, on el paràmetre `conflict_ratio` controla l'amplitud de la distribució. Això permet que, a mesura que augmenta el `conflict_ratio`, les reserves es concentrin més al voltant d'un punt central del calendari, generant més solapaments i conflictes.
La desviació estàndardde la distribució normal es pot definir com una funció del `conflict_ratio`, és a dir, es generaran més dies d'inici propers entre si a mesura que augmenta el `conflict_ratio`. Per seleccionar els dies d'inici de les reserves, es podrà fer un mostreig aleatori de la distribució normal amb mitjana al centre del calendari i desviació estàndard proporcional al `conflict_ratio`. Això permetrà controlar el grau de solapament entre reserves de manera matemàtica i sistemàtica.

D'aquesta manera, el generador no només produeix problemes aleatoris, sinó que permet controlar matemàticament el grau de saturació temporal del sistema. A mesura que augmenta el `conflict_ratio`, el planificador s'enfronta a un problema de tipus *Tetris*, on ha de decidir estratègicament quines reserves assignar per maximitzar l'ocupació, descartant aquelles que bloquegen massa espai i impedeixen encaixar altres peticions més curtes. Aquest mecanisme fa que els experiments siguin reproducibles i que els resultats reflecteixin de forma clara la capacitat d'optimització del planificador sota pressió de recursos.

Generarem doncs un conjunt de problemes amb 5 habitacions i 20 reserves, amb un nombre de dies fixat a 10 i un `conflict_ratio` variable (0.0, 0.2, 0.4, 0.6, 0.8, 1.0). Executarem cada problema diverses vegades i prendrem la mitjana per obtenir resultats més fiables.

Pel que fa a la quantitat de reserves assignades, obtenim els següents resultats:
#### 3.1.2.2 Problema 2: Reserves solapades

El planificador, maximitzant total-assignades, triarà dues reserves que no es solapin en dies (per exemple r1 i r3) i en descartarà una (per exemple r2), obtenint total-assignades = 2.

Hipòtesi: el planificador serà capaç de maximitzar les assignacions evitant solapaments.

## 3.2 Extensió 2

S'afegeix un nou predicat vol-orientacio per a les reserves, que indica l'orientació que es desitja per a l'habitació assignada. A l'acció assigar habitació comprova que l'habitació tingui l'orientació demanada per la reserva. Com que volem maximitzar les assignacions, i és preferent assignar habitacions amb l'orientació demanada però no és imprescindible, fem que una reserva puntui 2 si es assigna una habitació amb l'orientació demanada i 1 si s'assigna una habitació amb una orientació diferent. Així, l'objectiu de maximitzar les assignacions es manté, però ara es prioritzen les assignacions que compleixin l'orientació demanada.

### 3.2.1 Domini

### 3.2.2 Problemes

Per validar l'Extensió 2, s'han dissenyat tres experiments sintètics que aïllen comportaments específics del planificador: capacitat d'ordenació (Exp 1), capacitat de filtratge per qualitat (Exp 2) i capacitat de sacrifici de preferències per maximitzar ocupació (Exp 3)."

#### 3.2.2.1 Problema 1: El puzzle d'afinitats

Demostrar que el planificador és capaç d'ordenar i intercanviar reserves per aconseguir la màxima puntuació global, en lloc de fer assignacions greedy (agafar la primera habitació lliure encara que no tingui l'orientació correcta). Una assignació tonta (greedy) podria posar reserves "Sud" a habitacions "Nord" i viceversa. Això donaria 1 punt per reserva. Puntuació total: $N$. L'assignació intel·ligent ha de creuar-les perfectament: "Nord" amb "Nord" i "Sud" amb "Sud". El planificador ha de "descobrir" que val la pena buscar la combinació perfecta.

Hipòtesi: el planificador serà capaç de maximitzar la puntuació global tenint en compte les orientacions demanades.

#### 3.2.2.2 Problema 2: Selecció VIP

Demostrar que, davant l'escassetat de recursos, el planificador sap prioritzar els clients que encaixen millor (els que donen 2 punts) i deixar fora o en pitjors habitacions els que no encaixen (els que donarien 1 punt), o simplement descartar els que aporten menys valor si no hi ha lloc per a tothom. Hi ha un coll d'ampolla: només $K$ habitacions disponibles (totes, per exemple, orientació Nord). La meitat de les reserves volen Nord (match = 2 punts). L'altra meitat volen Sud (mismatch = 1 punt). Com que no hi ha lloc per a tothom (només hi ha $K$ llocs), el planificador ha d'omplir l'hotel només amb les reserves que volen Nord. Puntuació òptima: $2 \times K$. Si s'equivoqués i agafés algú de Sud, perdria punts. Aquest experiment demostra que el sistema entén el "cost d'oportunitat".

Hipòtesi: el planificador serà capaç de prioritzar les reserves que aporten més valor en situacions d'escassetat de recursos.

#### 3.2.2.3 Problema 3: L'Agent de Viatges Flexible

Demostrar que el sistema entén que l'orientació (preferència) és menys important que la capacitat (restricció dura), però que intenta satisfer totes dues quan pot. Hi ha $N$ reserves i $N$ habitacions. Totes les reserves tenen una preferència d'orientació que coincideix amb una habitació (match = 2 punts). Però algunes reserves tenen una capacitat que només encaixa amb una habitació de diferent orientació (mismatch = 1 punt). Per exemple, la reserva r1 necessita capacitat 4 i vol orientació Nord (habitació h1). Però l'habitació h1 té capacitat 2 (no serveix). L'única habitació amb capacitat 4 és h2, però té orientació Sud (mismatch). El planificador ha de triar entre no assignar r1 (0 punts) o assignar-la a h2 (1 punt). L'assignació òptima és sacrificar algunes preferències per satisfer totes les restriccions dures.

Hipòtesi: el planificador serà capaç de sacrificar preferències per maximitzar l'ocupació complint les restriccions dures.

## 3.3 Extensió 3

### 3.3.1 Domini

### 3.3.2 Problemes

#### 3.3.2.1 Problema 1

#### 3.3.2.2 Problema 2

## 3.4 Extensió 4

### 3.4.1 Domini

### 3.4.2 Problemes

#### 3.4.2.1 Problema 1

#### 3.4.2.2 Problema 2

## 4. Conclusions
