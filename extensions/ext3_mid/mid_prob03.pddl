(define (problem ext3_mid_8r_6h_12d_40)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 - reserva
    h1 h2 h3 h4 h5 h6 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    (= (capacitat h1) 7)
    (= (capacitat h2) 2)
    (= (capacitat h3) 2)
    (= (capacitat h4) 7)
    (= (capacitat h5) 4)
    (= (capacitat h6) 3)

    (= (persones r1) 2)
    (= (persones r2) 2)
    (= (persones r3) 1)
    (= (persones r4) 5)
    (= (persones r5) 1)
    (= (persones r6) 5)
    (= (persones r7) 4)
    (= (persones r8) 1)

    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d7)
    (dies-reserva r4 d8)
    (dies-reserva r4 d9)
    (dies-reserva r5 d5)
    (dies-reserva r5 d6)
    (dies-reserva r6 d5)
    (dies-reserva r6 d6)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
    (dies-reserva r7 d7)
    (dies-reserva r7 d8)
    (dies-reserva r7 d9)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
