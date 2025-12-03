(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h2)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (4 pax): 
    (compatible r6 h1)
    (compatible r6 h2)

    ;; Reserva r7 (3 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (3 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (2 pax): 
    (compatible r9 h1)
    (compatible r9 h2)

    ;; Reserva r10 (1 pax): 
    (compatible r10 h1)
    (compatible r10 h2)

    ;; Reserva r11 (3 pax): 
    (compatible r11 h1)
    (compatible r11 h2)

    ;; Reserva r12 (3 pax): 
    (compatible r12 h1)
    (compatible r12 h2)

    ;; Reserva r13 (1 pax): 
    (compatible r13 h1)
    (compatible r13 h2)

    ;; Reserva r14 (3 pax): 
    (compatible r14 h1)
    (compatible r14 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d5)
    (dies-reserva r6 d1)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r7 d1)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r9 d2)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r9 d5)
    (dies-reserva r10 d1)
    (dies-reserva r10 d2)
    (dies-reserva r10 d3)
    (dies-reserva r10 d4)
    (dies-reserva r11 d3)
    (dies-reserva r12 d2)
    (dies-reserva r12 d3)
    (dies-reserva r12 d4)
    (dies-reserva r13 d1)
    (dies-reserva r13 d2)
    (dies-reserva r14 d1)
    (dies-reserva r14 d2)
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
    (assignada r11)
    (assignada r12)
    (assignada r13)
    (assignada r14)
  ))
)
