(define (problem ext3_auto_r10_h8_d8)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 1)
    (= (capacitat h2) 3)
    (= (capacitat h3) 2)
    (= (capacitat h4) 5)
    (= (capacitat h5) 3)
    (= (capacitat h6) 2)
    (= (capacitat h7) 4)
    (= (capacitat h8) 3)

    (= (persones r1) 4)
    (= (persones r2) 2)
    (= (persones r3) 2)
    (= (persones r4) 1)
    (= (persones r5) 2)
    (= (persones r6) 2)
    (= (persones r7) 2)
    (= (persones r8) 4)
    (= (persones r9) 4)
    (= (persones r10) 2)

    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d8)
    (dies-reserva r4 d5)
    (dies-reserva r5 d3)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r7 d3)
    (dies-reserva r8 d7)
    (dies-reserva r9 d8)
    (dies-reserva r10 d4)
    (dies-reserva r10 d5)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
