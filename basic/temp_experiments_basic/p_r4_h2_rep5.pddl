(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d7)
    (dies-reserva r3 d8)
    (dies-reserva r3 d9)
    (dies-reserva r3 d10)
    (dies-reserva r4 d6)
    (dies-reserva r4 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
  ))
)
