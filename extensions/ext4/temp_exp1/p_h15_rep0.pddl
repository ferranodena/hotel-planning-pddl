(define (problem problema-extensio4-logic)
  (:domain hotel-extensio4-logic)
  (:requirements :typing :adl)

  (:objects 
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 - dia

    ;; Objectes per simular els números de capacitat
    n1 n2 n3 n4 - nombre
  )

  (:init
    ;; Dies que ocupa cada reserva
    (dies-reserva r1 d12)
    (dies-reserva r1 d13)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r3 d8)
    (dies-reserva r3 d9)
    (dies-reserva r3 d10)
    (dies-reserva r3 d11)
    (dies-reserva r4 d21)
    (dies-reserva r4 d22)
    (dies-reserva r4 d23)
    (dies-reserva r4 d24)
    (dies-reserva r5 d11)
    (dies-reserva r5 d12)

    ;; Capacitats de les habitacions
    (capacitat h1 n4)
    (capacitat h2 n2)
    (capacitat h3 n1)
    (capacitat h4 n3)
    (capacitat h5 n2)
    (capacitat h6 n3)
    (capacitat h7 n4)
    (capacitat h8 n4)
    (capacitat h9 n2)
    (capacitat h10 n2)
    (capacitat h11 n1)
    (capacitat h12 n1)
    (capacitat h13 n3)
    (capacitat h14 n3)
    (capacitat h15 n1)

    ;; Persones per reserva
    (persones r1 n1)
    (persones r2 n2)
    (persones r3 n2)
    (persones r4 n3)
    (persones r5 n1)

    ;; TABLA DE VERITAT: Menor o Igual
    (menor-o-igual n1 n1) (menor-o-igual n1 n2) (menor-o-igual n1 n3) (menor-o-igual n1 n4)
    (menor-o-igual n2 n2) (menor-o-igual n2 n3) (menor-o-igual n2 n4)
    (menor-o-igual n3 n3) (menor-o-igual n3 n4)
    (menor-o-igual n4 n4)
  )

  ;; L'objectiu és que totes les reserves estiguin processades.
  (:goal (forall (?r - reserva) (processada ?r)))
)
