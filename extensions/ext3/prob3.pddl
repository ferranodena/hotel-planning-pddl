(define (problem problema-extensio3)
  (:domain hotel-extensio3)

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

    ;; Capacitats de les habitacions
    (= (capacitat h1) 2)
    (= (capacitat h2) 4)
    (= (capacitat h3) 3)

    ;; Persones per reserva
    (= (persones r1) 2)
    (= (persones r2) 1)
    (= (persones r3) 3)

    ;; Funcions numèriques inicials
    (= (total-habitacions-descartades) 0)
    (= (total-places-descartades) 0)
  )

  ;; Goal: volem que totes les reserves estiguin assignades o descartades,
  ;; però a l’extensió 3 només exigim que les assignades estiguin marcades.
  ;; El goal natural és només que no hi hagi inconsistències:
  (:goal (and (forall (?r - reserva) (processada ?r))
         ))

  ;; Extensió 3: maximitzar assignacions i minimitzar desperdici
  ;; Prioritat absoluta: assignacions → factor 1000
  ;; Segon criteri: minimitzar desperdici
  (:metric 
    minimize
      (+ (* 1000 (total-habitacions-descartades))
         (total-places-descartades))
  )
)
