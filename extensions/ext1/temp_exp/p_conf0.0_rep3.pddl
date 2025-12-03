(define (problem ext1_conflicte_0)
  (:domain hotel-extensio1)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    (= (total-descartades) 0)

    (= (capacitat h1) 4)
    (= (capacitat h2) 4)

    (= (persones r1) 2)
    (= (persones r2) 2)
    (= (persones r3) 2)
    (= (persones r4) 2)
    (= (persones r5) 2)

    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
  )

  (:goal (forall (?r - reserva) (processada ?r)))
  (:metric minimize (total-descartades))
)
