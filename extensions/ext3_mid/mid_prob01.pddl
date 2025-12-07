(define (problem ext3_mid_5r_4h_7d_20)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 - habitacio
    d1 d2 d3 d4 d5 d6 d7 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 7)
    (= (capacitat h2) 2)
    (= (capacitat h3) 2)
    (= (capacitat h4) 7)

    (= (persones r1) 3)
    (= (persones r2) 2)
    (= (persones r3) 2)
    (= (persones r4) 2)
    (= (persones r5) 1)

    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d5)
    (dies-reserva r5 d6)
    (dies-reserva r5 d7)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
