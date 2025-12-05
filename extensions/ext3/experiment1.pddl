(define (problem conflictes_ponderacio)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    ; 6 reserves
    r1 r2 r3 r4 r5 r6 - reserva
    ; 5 habitacions amb capacitats diverses
    h1 h2 h3 h4 h5 - habitacio
    ; 3 dies
    d1 d2 d3 - dia
  )

  (:init
    ;; Dies de cada reserva (hi ha solapament)
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d3)
    (dies-reserva r5 d3)
    (dies-reserva r6 d1)
    
    ;; Capacitat de les habitacions
    (= (capacitat h1) 1)
    (= (capacitat h2) 2)
    (= (capacitat h3) 2)
    (= (capacitat h4) 3)
    (= (capacitat h5) 1)

    ;; Persones per reserva
    (= (persones r1) 1)
    (= (persones r2) 2)
    (= (persones r3) 2)
    (= (persones r4) 1)
    (= (persones r5) 3)
    (= (persones r6) 1)

    ;; Funcions inicials
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric
    minimize
      (+ (* 1 (total-reserves-descartades))
         (total-places-descartades))
  )
)
