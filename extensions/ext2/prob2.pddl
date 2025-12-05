(define (problem problema-extensio2) (:domain hotel-extensio2)
  
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects 
    r1 r2 r3 - reserva
    h1 h2 h3 - habitacio
    d1 d2 d3 d4 - dia
    n s e o - orientacio
  )

  (:init

    (orientada h1 n) 
    (orientada h2 s) 
    (orientada h3 e)

    (dies-reserva r1 d1) 
    (dies-reserva r1 d2)
    (dies-reserva r2 d2) 
    (dies-reserva r2 d3)
    (dies-reserva r3 d3) 
    (dies-reserva r3 d4)

    (vol-orientacio r1 n)
    (vol-orientacio r2 s)
    (vol-orientacio r3 n)

    (= (total-descartades) 0)
    
    (= (capacitat h1) 2)
    (= (capacitat h2) 4)
    (= (capacitat h3) 3)

    (= (persones r1) 2)
    (= (persones r2) 1)
    (= (persones r3) 3)
  )

  (:goal (forall (?r - reserva) (processada ?r)))

  (:metric 
    minimize (total-descartades))
)
