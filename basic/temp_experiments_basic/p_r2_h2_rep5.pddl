(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
