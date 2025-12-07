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
    (= (capacitat h1) 90)
    (= (capacitat h2) 30)
    (= (capacitat h3) 40)
    (= (capacitat h4) 50)
    (= (capacitat h5) 60)

    ;; Persones per reserva (dos grans, dues petites)
    (= (persones r1) 2)

    ;; Tots els solapaments al mateix dia -> màxim conflicte
    (dies-reserva r1 d1)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric minimize (+ (* 100 (total-reserves-descartades)) (total-places-descartades)))
)
