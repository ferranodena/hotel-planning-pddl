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
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)

    ;; Capacitats de les habitacions
    (capacitat h1 n3)
    (capacitat h2 n3)
    (capacitat h3 n2)
    (capacitat h4 n4)
    (capacitat h5 n1)
    (capacitat h6 n1)
    (capacitat h7 n1)
    (capacitat h8 n1)
    (capacitat h9 n4)
    (capacitat h10 n4)
    (capacitat h11 n4)
    (capacitat h12 n3)
    (capacitat h13 n1)
    (capacitat h14 n1)
    (capacitat h15 n4)
    (capacitat h16 n1)
    (capacitat h17 n4)
    (capacitat h18 n4)
    (capacitat h19 n2)
    (capacitat h20 n3)
    (capacitat h21 n1)
    (capacitat h22 n2)
    (capacitat h23 n2)
    (capacitat h24 n4)
    (capacitat h25 n2)
    (capacitat h26 n3)
    (capacitat h27 n1)
    (capacitat h28 n1)
    (capacitat h29 n1)
    (capacitat h30 n3)
    (capacitat h31 n1)
    (capacitat h32 n1)
    (capacitat h33 n4)
    (capacitat h34 n4)
    (capacitat h35 n2)
    (capacitat h36 n1)
    (capacitat h37 n4)
    (capacitat h38 n4)
    (capacitat h39 n3)
    (capacitat h40 n3)

    ;; Persones per reserva
    (persones r1 n3)
    (persones r2 n3)

    ;; TABLA DE VERITAT: Menor o Igual
    (menor-o-igual n1 n1) (menor-o-igual n1 n2) (menor-o-igual n1 n3) (menor-o-igual n1 n4)
    (menor-o-igual n2 n2) (menor-o-igual n2 n3) (menor-o-igual n2 n4)
    (menor-o-igual n3 n3) (menor-o-igual n3 n4)
    (menor-o-igual n4 n4)
  )

  ;; L'objectiu és que totes les reserves estiguin processades.
  (:goal (forall (?r - reserva) (processada ?r)))
)
