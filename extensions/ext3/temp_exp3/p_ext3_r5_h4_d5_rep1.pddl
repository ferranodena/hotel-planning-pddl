(define (problem ext3_auto_r5_h4_d5)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 1)
    (= (capacitat h2) 2)
    (= (capacitat h3) 2)
    (= (capacitat h4) 3)

    (= (persones r1) 1)
    (= (persones r2) 2)
    (= (persones r3) 3)
    (= (persones r4) 1)
    (= (persones r5) 2)

    (dies-reserva r1 d1)
    (dies-reserva r2 d4)
    (dies-reserva r3 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d5)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
