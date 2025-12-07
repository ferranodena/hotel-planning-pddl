(define (problem ext3_auto_r3_h2_d3)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 - reserva
    h1 h2 - habitacio
    d1 d2 d3 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 1)
    (= (capacitat h2) 2)

    (= (persones r1) 1)
    (= (persones r2) 2)
    (= (persones r3) 1)

    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r3 d1)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
