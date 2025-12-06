(define (problem ext3_solapaments)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 - reserva
    h1 h2 - habitacio
    d1 d2 d3 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    ;; Capacitats habitacions
    (= (capacitat h1) 2)
    (= (capacitat h2) 3)

    ;; Persones per reserva
    (= (persones r1) 2)
    (= (persones r2) 1)
    (= (persones r3) 3)
    (= (persones r4) 2)

    ;; Dies de cada reserva amb molts solapaments
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  ;; Mètrica amb pes alt per reserves descartades
  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
