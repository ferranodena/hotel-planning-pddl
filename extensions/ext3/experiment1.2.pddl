(define (problem ext3_petit_pes_influeix)
  (:domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects
    r1 - reserva
    h1 h2 h3 h4 h5 - habitacio
    d1 - dia
  )

  (:init
    (= (total-reserves-descartades) 0)
    (= (total-places-descartades) 0)

    ;; Capacitats habitacions
    (= (capacitat h1) 2)
    (= (capacitat h2) 3)
    (= (capacitat h3) 4)
    (= (capacitat h4) 5)
    (= (capacitat h5) 6)

    ;; Persones per reserva (dos grans, dues petites)
    (= (persones r1) 2)

    ;; Tots els solapaments al mateix dia -> màxim conflicte
    (dies-reserva r1 d1)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 1 (total-reserves-descartades)) (total-places-descartades)))
)
