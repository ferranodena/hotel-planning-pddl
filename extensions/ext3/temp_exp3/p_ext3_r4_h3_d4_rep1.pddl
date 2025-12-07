(define (problem ext3_auto_r4_h3_d4)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 - reserva
    h1 h2 h3 - habitacio
    d1 d2 d3 d4 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 1)
    (= (capacitat h2) 2)
    (= (capacitat h3) 2)

    (= (persones r1) 2)
    (= (persones r2) 1)
    (= (persones r3) 2)
    (= (persones r4) 3)

    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r3 d4)
    (dies-reserva r4 d3)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
