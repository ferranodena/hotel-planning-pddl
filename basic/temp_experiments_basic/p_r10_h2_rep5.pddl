(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)

    ;; Reserva r6 (4 pax): 
    (compatible r6 h1)

    ;; Reserva r7 (2 pax): 
    (compatible r7 h1)

    ;; Reserva r8 (3 pax): 
    (compatible r8 h1)

    ;; Reserva r9 (4 pax): 
    (compatible r9 h1)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h1)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r4 d5)
    (dies-reserva r4 d6)
    (dies-reserva r4 d7)
    (dies-reserva r4 d8)
    (dies-reserva r4 d9)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
    (dies-reserva r5 d6)
    (dies-reserva r6 d6)
    (dies-reserva r6 d7)
    (dies-reserva r6 d8)
    (dies-reserva r7 d5)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r8 d7)
    (dies-reserva r9 d6)
    (dies-reserva r9 d7)
    (dies-reserva r9 d8)
    (dies-reserva r9 d9)
    (dies-reserva r10 d8)
    (dies-reserva r10 d9)
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
    (assignada r9)
    (assignada r10)
  ))
)
