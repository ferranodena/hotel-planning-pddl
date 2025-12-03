(define (problem problema-extensio4)
  (:domain hotel-extensio4)

  (:requirements :typing :negative-preconditions :adl :fluents)

  (:objects 
    r1 r2 r3 - reserva
    h1 h2 h3 - habitacio
    d1 d2 d3 d4 - dia
  )

  (:init
    ;; Dies de cada reserva
    (dies-reserva r1 d1) 
    (dies-reserva r1 d2)

    (dies-reserva r2 d2) 
    (dies-reserva r2 d3)

    (dies-reserva r3 d3) 
    (dies-reserva r3 d4)

    ;; Capacitats
    (= (capacitat h1) 2)
    (= (capacitat h2) 4)
    (= (capacitat h3) 3)

    ;; Persones
    (= (persones r1) 2)
    (= (persones r2) 1)
    (= (persones r3) 3)

    ;; Inicialització de comptadors
    (= (total-assignades) 0)
    (= (total-desperdici) 0)
    (= (total-habitacions-usades) 0) 
  )

  (:goal (and 
    (assignada r1) 
    (assignada r2)
    (assignada r3)
  ))

  ;; Jerarquía:
  ;; 1. Maximitzar assignades (Pes 1,000,000) -> Volem assignar tant com es pugui
  ;; 2. Minimitzar habitacions usades (Pes 1,000) -> Preferim concentrar reserves en poques habitacions
  ;; 3. Minimitzar desperdici (Pes 1) -> Si empatem en habitacions, triem la que ajusti millor la capacitat
  ;; 
  ;; Fórmula: (Assignades * 1M) - (Habitacions * 1k) - (Desperdici)
  (:metric 
    maximize 
      (- (- (* 1000000 (total-assignades))
            (* 1000 (total-habitacions-usades)))
         (total-desperdici))
  )
)
