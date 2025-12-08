(define (problem problema-extensio4-logic)
  (:domain hotel-extensio4-logic)
  (:requirements :typing :adl)

  (:objects 
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 - dia

    ;; Objectes per simular els números de capacitat
    n1 n2 n3 n4 - nombre
  )

  (:init
    ;; Dies que ocupa cada reserva
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d17)
    (dies-reserva r2 d18)
    (dies-reserva r2 d19)
    (dies-reserva r2 d20)
    (dies-reserva r2 d21)
    (dies-reserva r2 d22)
    (dies-reserva r3 d21)
    (dies-reserva r3 d22)
    (dies-reserva r3 d23)
    (dies-reserva r3 d24)
    (dies-reserva r3 d25)
    (dies-reserva r3 d26)
    (dies-reserva r4 d12)
    (dies-reserva r4 d13)
    (dies-reserva r4 d14)
    (dies-reserva r4 d15)
    (dies-reserva r4 d16)
    (dies-reserva r5 d23)
    (dies-reserva r5 d24)

    ;; Capacitats de les habitacions
    (capacitat h1 n2)
    (capacitat h2 n1)
    (capacitat h3 n3)
    (capacitat h4 n1)
    (capacitat h5 n4)

    ;; Persones per reserva
    (persones r1 n2)
    (persones r2 n3)
    (persones r3 n3)
    (persones r4 n4)
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
