(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)

    ;; Reserva r6 (3 pax): 
    (compatible r6 h1)

    ;; Reserva r7 (3 pax): 
    (compatible r7 h1)

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d3)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
    (assignada r6)
    (assignada r7)
    (assignada r8)
  ))
)
