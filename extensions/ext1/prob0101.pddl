(define (problem maximitzar-assignacions)
  (:domain hotel-extensio1)

  (:objects
    r-llarga r-curta1 r-curta2 - reserva
    h1 - habitacio
    d1 d2 d3 d4 - dia
  )

  (:init
    ;; --- Inicialització de Mètrica ---
    (= (total-descartades) 0)

    ;; --- Definició de l'Habitació ---
    (= (capacitat h1) 2) ;; Habitació doble

    ;; --- Definició de les Reserves ---
    
    ;; RESERVA LLARGA (Dies 1, 2, 3, 4) - 2 persones
    (= (persones r-llarga) 2)
    (dies-reserva r-llarga d1)
    (dies-reserva r-llarga d2)
    (dies-reserva r-llarga d3)
    (dies-reserva r-llarga d4)

    ;; RESERVA CURTA 1 (Dies 1, 2) - 2 persones
    (= (persones r-curta1) 2)
    (dies-reserva r-curta1 d1)
    (dies-reserva r-curta1 d2)

    ;; RESERVA CURTA 2 (Dies 3, 4) - 2 persones
    (= (persones r-curta2) 2)
    (dies-reserva r-curta2 d3)
    (dies-reserva r-curta2 d4)
  )

  (:goal (and
    ;; L'objectiu és que totes hagin estat tractades (assignades o descartades)
    (processada r-llarga)
    (processada r-curta1)
    (processada r-curta2)
  ))

  ;; --- MÈTRICA CLAU ---
  ;; Minimitzar les descartades equival a maximitzar les assignades
  (:metric minimize (total-descartades))
)
