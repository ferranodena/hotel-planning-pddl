(define (problem problema-extensio4-logic)
  (:domain hotel-extensio4-logic)
  (:requirements :typing :adl)

  (:objects 
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 - dia

    ;; Objectes per simular els números de capacitat
    n1 n2 n3 n4 - nombre
  )

  (:init
    ;; Dies que ocupa cada reserva
    (dies-reserva r1 d12)
    (dies-reserva r1 d13)
    (dies-reserva r1 d14)
    (dies-reserva r2 d13)
    (dies-reserva r2 d14)
    (dies-reserva r2 d15)
    (dies-reserva r2 d16)
    (dies-reserva r2 d17)
    (dies-reserva r2 d18)

    ;; Capacitats de les habitacions
    (capacitat h1 n1)
    (capacitat h2 n4)
    (capacitat h3 n3)
    (capacitat h4 n2)
    (capacitat h5 n1)
    (capacitat h6 n2)
    (capacitat h7 n4)
    (capacitat h8 n1)
    (capacitat h9 n1)
    (capacitat h10 n1)
    (capacitat h11 n3)
    (capacitat h12 n2)
    (capacitat h13 n2)
    (capacitat h14 n3)
    (capacitat h15 n1)
    (capacitat h16 n4)
    (capacitat h17 n1)
    (capacitat h18 n4)
    (capacitat h19 n4)
    (capacitat h20 n4)
    (capacitat h21 n4)
    (capacitat h22 n3)
    (capacitat h23 n4)
    (capacitat h24 n1)
    (capacitat h25 n3)
    (capacitat h26 n1)
    (capacitat h27 n3)
    (capacitat h28 n1)
    (capacitat h29 n2)
    (capacitat h30 n4)
    (capacitat h31 n4)
    (capacitat h32 n4)
    (capacitat h33 n2)
    (capacitat h34 n2)
    (capacitat h35 n2)
    (capacitat h36 n3)
    (capacitat h37 n3)
    (capacitat h38 n4)
    (capacitat h39 n3)
    (capacitat h40 n4)

    ;; Persones per reserva
    (persones r1 n1)
    (persones r2 n2)

    ;; TABLA DE VERITAT: Menor o Igual
    (menor-o-igual n1 n1) (menor-o-igual n1 n2) (menor-o-igual n1 n3) (menor-o-igual n1 n4)
    (menor-o-igual n2 n2) (menor-o-igual n2 n3) (menor-o-igual n2 n4)
    (menor-o-igual n3 n3) (menor-o-igual n3 n4)
    (menor-o-igual n4 n4)
  )

  ;; L'objectiu és que totes les reserves estiguin processades.
  (:goal (forall (?r - reserva) (processada ?r)))
)
