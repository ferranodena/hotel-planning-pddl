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
- [4. Conclusions](#4-conclusions)

<div class="page-break"></div>

## 1. Introducció

<div class="page-break"></div>

## 2. Objectius i metodologia

<div class="page-break"></div>

## 3. Disseny del domini i dels problemes

## 3.0 Extensió bàsica

### 3.0.1 Domini

Només hi ha una acció: assignar habitacio

### 3.0.2 Problemes

#### 3.0.2.1 Problema 1: Poques habitacions, moltes reserves

En aquest experiment volem avaluar la capacitat del planificador per prioritzar i seleccionar el millor subconjunt de reserves quan els recursos són extremadament limitats. Per fer-ho, mantindrem fix el nombre d'habitacions (``n=2``) i incrementarem progressivament el nombre de reserves candidates (5, 10, 15, 20...). Això força el sistema a gestionar un escenari d'alta competència on la majoria de reserves s'han de descartar. S'espera observar:

1. **Comportament Intel·ligent:** El planificador haurà de triar les combinacions de reserves que maximitzin l'ocupació total (evitant forats temporals), en lloc d'agafar simplement les primeres de la llista.
2. **Escalabilitat:** S'espera un creixement no lineal (ràpid) del temps d'execució, ja que l'espai de cerca per trobar la combinació òptima creix combinatorialment a mesura que afegim més reserves solapades."

Per tant, plantegem el següent parell d'hipòtesis per a aquest experiment:

Respecte al comportament del planificador en aquest escenari d'alta competència:

- $H_0$: El planificador no és capaç de maximitzar l'ocupació total en situacions d'escassetat de recursos, seleccionant reserves de manera aleatòria o greedy.
- $H_1$: El planificador és capaç de maximitzar l'ocupació total, seleccionant reserves de manera intel·ligent per evitar forats temporals.

Hipòtesi sobre l'escalabilitat del planificador:

- $H_0$: El temps d'execució del planificador creix linealment amb el nombre de reserves, indicant una gestió eficient de l'espai de cerca.
- $H_1$: El temps d'execució del planificador creix de manera no lineal (ràpid) amb el nombre de reserves, indicant un augment combinatorial de l'espai de cerca.

Generem doncs diversos problemes amb 2 habitacions i un nombre creixent de reserves (5, 10, 15, 20, 25) amb el nostre generador de problemes. Provem d'executar-los amb el planificador i mesurem el temps d'execució i les habitacions assignades amb èxit per a cada cas. Generem la quantitat de reserves de manera aleatòria completament, per la qual cosa els resultats poden variar lleugerament entre execucions. Executem cada problema diverses vegades i prenem la mitjana per obtenir resultats més fiables. Com que l'assignació és greedy, esperem que el nombre d'assignacions sigui proper al màxim possible (2 habitacions * nombre de reserves que caben sense solapament), però lògicament aquests casos seran difícils en termes generals exactament degut a l'atzar en la generació de reserves. Per tant esperem que el nombre d'assignacions sigui baix, i que hi hagi molts conflictes entre reserves, per tant que el planificador no convergeixi. Tot i així, el temps d'execució hauria de ser creixent, ja que el planificador haurà d'explorar moltes possibilitats per trobar la millor assignació possible, tot i que aquesta no sigui possible en aquest domini.

Pel que fa a la quantitat de reserves assignades, obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/1.png" alt="Gràfic de reserves assignades en l'extensió bàsica">
    <div class="caption">Figura 1: Reserves assignades en l'extensió bàsica</div>
  </div>
</div>

Pel que fa al temps d'execució, obtenim els següents resultats:

<div class="image-row">
  <div class="image-column">
    <img src="./figures/basic/2.png" alt="Gràfic de temps d'execució en l'extensió bàsica">
    <div class="caption">Figura 2: Temps d'execució en l'extensió bàsica</div>
  </div>
</div>

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


## 3.1 Extensió 1

### 3.1.1 Domini

S'elimina el predicat compatible i totes les referències a aquest en les accions, ja que es considerarà que les reserves compatibles seran les que la capacitat de l'habitació sigui suficient per a les persones de la reserva.

### 3.1.2 Problemes

#### 3.1.2.1 Problema 1: Dilema de l'optimització

Aquest problema demostra que el planificador és intel·ligent: ha de preferir assignar dues reserves curtes en lloc d'una reserva llarga si ocupen la mateixa habitació, ja qeu l'objectiu és maximitzar les assignacions.

Hipòtesi: el planificador serà capaç de maximitzar les assignacions, és a dir, demostra un comportament intel·ligent.

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

## 4. Conclusions
