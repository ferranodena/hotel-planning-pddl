(define (problem problema-extensio1) (:domain hotel-extensio1)
  
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects 
    r1 r2 r3 - reserva
    h1 h2 h3 - habitacio
    d1 d2 d3 d4 - dia
  )

  (:init

    (dies-reserva r1 d1) 
    (dies-reserva r1 d2)
    (dies-reserva r2 d2) 
    (dies-reserva r2 d3)
    (dies-reserva r3 d3) 
    (dies-reserva r3 d4)

    (= (total-assignades) 0)
    
    (= (capacitat h1) 2)
    (= (capacitat h2) 4)
    (= (capacitat h3) 3)

    ;; Persones per reserva
    (= (persones r1) 2)
    (= (persones r2) 1)
    (= (persones r3) 3)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric 
    maximize (total-assignades))
)
