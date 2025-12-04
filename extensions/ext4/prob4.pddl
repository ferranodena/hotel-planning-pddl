(define (problem problema-extensio4-logic)
  (:domain hotel-extensio4-logic)
  (:requirements :typing :adl)

  (:objects 
    ;; Les teves reserves i habitacions reals
    r1 r2 r3 - reserva
    h1 h2 h3 - habitacio
    d1 d2 d3 d4 - dia
    
    ;; Objectes per simular els números de capacitat (fins al màxim necessari)
    n1 n2 n3 n4 - nombre
  )

  (:init
    ;; Dies que ocupa cada reserva
    (dies-reserva r1 d1) (dies-reserva r1 d2)
    (dies-reserva r2 d2) (dies-reserva r2 d3)
    (dies-reserva r3 d3) (dies-reserva r3 d4)

    ;; Capacitats de les habitacions
    (capacitat h1 n2)
    (capacitat h2 n4)
    (capacitat h3 n3)

    ;; Persones per reserva
    (persones r1 n2)
    (persones r2 n1)
    (persones r3 n3)

    ;; TABLA DE VERITAT: Menor o Igual (necessària per verificar si hi caben)
    ;; n1 <= tots
    (menor-o-igual n1 n1) 
    (menor-o-igual n1 n2) 
    (menor-o-igual n1 n3) 
    (menor-o-igual n1 n4)
    
    ;; n2 <= n2, n3, n4
    (menor-o-igual n2 n2) 
    (menor-o-igual n2 n3) 
    (menor-o-igual n2 n4)
    
    ;; n3 <= n3, n4
    (menor-o-igual n3 n3) 
    (menor-o-igual n3 n4)
    
    ;; n4 <= n4
    (menor-o-igual n4 n4)
  )

  ;; L'objectiu és simplement que totes estiguin processades.
  ;; Gràcies a l'estrctura del domini, el planificador intentarà assignar-les
  ;; a habitacions ja usades (camí curt) abans que obrir-ne de noves (camí llarg).
  (:goal (forall (?r - reserva) (processada ?r)))
)
