(define (problem basic) (:domain hotel)
(:objects 
r1 r2 r3 - reserva
h1 h2 h3 - habitacio
)

(:init
    ;; Predicats de reserva i habitacio
    (reserva r1) (reserva r2) (reserva r3)
    (habitacio h1) (habitacio h2) (habitacio h3)
    ;; Compatibilitat (can-fit)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r3 h3)
)

(:goal (and
      (assignada r1)
      (assignada r2)
      (assignada r3)
)

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
)