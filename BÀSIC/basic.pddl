(define (problem basic)
  (:domain hotel)

  (:objects 
    ;; Reserves
    r1 r2 r3 - reserva

    ;; Habitacions
    h1 h2 h3 - habitacio

    ;; Dies
    d1 d2 d3 d4 - dia
  )

  (:init
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r3 h3)

    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
  ))
)
