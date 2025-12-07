(define (problem ext3_auto_r6_h5_d6)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 r6 - reserva
    h1 h2 h3 h4 h5 - habitacio
    d1 d2 d3 d4 d5 d6 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 1)
    (= (capacitat h2) 3)
    (= (capacitat h3) 2)
    (= (capacitat h4) 5)
    (= (capacitat h5) 3)

    (= (persones r1) 4)
    (= (persones r2) 4)
    (= (persones r3) 1)
    (= (persones r4) 2)
    (= (persones r5) 2)
    (= (persones r6) 4)

    (dies-reserva r1 d3)
    (dies-reserva r2 d6)
    (dies-reserva r3 d6)
    (dies-reserva r4 d6)
    (dies-reserva r5 d5)
    (dies-reserva r6 d5)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
