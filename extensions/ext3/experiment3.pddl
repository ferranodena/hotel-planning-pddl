(define (problem ext3_no_trivial)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Comptadors
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    ;; Capacitats d’habitacions (variades expressament)
    (= (capacitat h1) 2)
    (= (capacitat h2) 3)
    (= (capacitat h3) 6)
    (= (capacitat h4) 2)

    ;; Persones per reserva (variat)
    (= (persones r1) 2)
    (= (persones r2) 3)
    (= (persones r3) 4)
    (= (persones r4) 2)
    (= (persones r5) 5)

    ;; Dies de cada reserva (amb solapaments)
    ;; r1: d1 d2
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)

    ;; r2: d2 d3
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)

    ;; r3: d1 d2 d3
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)

    ;; r4: d3 d4
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)

    ;; r5: d1 d4 d5
    (dies-reserva r5 d1)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
  )

  ;; Totes les reserves han de quedar processades
  (:goal
    (forall (?r - reserva) (processada ?r))
  )

  ;; Mètrica: prioritat a no descartar, després a no desaprofitar places
  (:metric minimize
    (+ (* 100 (total-reserves-descartades))
       (total-places-descartades))
  )
)
