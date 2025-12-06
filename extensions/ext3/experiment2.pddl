(define (problem ext3_petit_pes_influeix)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 r2 r3 r4 - reserva
    h1 h2 - habitacio
    d1 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    ;; Capacitats habitacions
    (= (capacitat h1) 3)
    (= (capacitat h2) 3)

    ;; Persones per reserva (dos grans, dues petites)
    (= (persones r1) 3)
    (= (persones r2) 3)
    (= (persones r3) 1)
    (= (persones r4) 1)

    ;; Tots els solapaments al mateix dia -> màxim conflicte
    (dies-reserva r1 d1)
    (dies-reserva r2 d1)
    (dies-reserva r3 d1)
    (dies-reserva r4 d1)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 1 (total-reserves-descartades)) (total-places-descartades)))
)
