(define (problem prob-intercanvi-creuat) 
  (:domain hotel-extensio2)
  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects 
    r1 r2 r3 - reserva
    h1 h2 - habitacio
    d1 d2 d3 - dia
    n s e o - orientacio
  )

  (:init
    (orientada h1 e) 
    (orientada h2 n) 

    (vol-orientacio r1 n)
    (vol-orientacio r2 s)
    (vol-orientacio r3 e)

    (dies-reserva r1 d1) (dies-reserva r1 d2)
    (dies-reserva r2 d1) (dies-reserva r2 d2)
    (dies-reserva r3 d1) (dies-reserva r3 d2)


    (= (total-descartades) 0)
    
    (= (capacitat h1) 2)
    (= (capacitat h2) 2)
    (= (persones r1) 2)
    (= (persones r2) 2)
    (= (persones r3) 4)
  )

  (:goal (forall (?r - reserva) (processada ?r)))
  (:metric minimize (total-descartades))
)
