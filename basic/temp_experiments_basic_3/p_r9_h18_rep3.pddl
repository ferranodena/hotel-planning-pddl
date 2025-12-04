(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h6)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h15)
    (compatible r2 h16)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h4)
    (compatible r3 h6)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h15)
    (compatible r4 h16)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h1)
    (compatible r6 h3)
    (compatible r6 h4)
    (compatible r6 h5)
    (compatible r6 h6)
    (compatible r6 h7)
    (compatible r6 h8)
    (compatible r6 h10)
    (compatible r6 h11)
    (compatible r6 h15)
    (compatible r6 h16)

    ;; Reserva r7 (3 pax): 
    (compatible r7 h1)
    (compatible r7 h4)
    (compatible r7 h6)

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)
    (compatible r8 h3)
    (compatible r8 h4)
    (compatible r8 h5)
    (compatible r8 h6)
    (compatible r8 h7)
    (compatible r8 h8)
    (compatible r8 h9)
    (compatible r8 h10)
    (compatible r8 h11)
    (compatible r8 h12)
    (compatible r8 h13)
    (compatible r8 h14)
    (compatible r8 h15)
    (compatible r8 h16)
    (compatible r8 h17)
    (compatible r8 h18)

    ;; Reserva r9 (3 pax): 
    (compatible r9 h1)
    (compatible r9 h4)
    (compatible r9 h6)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
    (dies-reserva r5 d6)
    (dies-reserva r5 d7)
    (dies-reserva r5 d8)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r7 d7)
    (dies-reserva r7 d8)
    (dies-reserva r8 d7)
    (dies-reserva r8 d8)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r9 d5)
    (dies-reserva r9 d6)
    (dies-reserva r9 d7)
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
  ))
)
