(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
