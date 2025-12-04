(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h16)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h3)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h19)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h19)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h3)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h13)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h19)

    ;; Reserva r6 (1 pax): 
    (compatible r6 h1)
    (compatible r6 h2)
    (compatible r6 h3)
    (compatible r6 h4)
    (compatible r6 h5)
    (compatible r6 h6)
    (compatible r6 h7)
    (compatible r6 h8)
    (compatible r6 h9)
    (compatible r6 h10)
    (compatible r6 h11)
    (compatible r6 h12)
    (compatible r6 h13)
    (compatible r6 h14)
    (compatible r6 h15)
    (compatible r6 h16)
    (compatible r6 h17)
    (compatible r6 h18)
    (compatible r6 h19)

    ;; Reserva r7 (2 pax): 
    (compatible r7 h2)
    (compatible r7 h3)
    (compatible r7 h6)
    (compatible r7 h7)
    (compatible r7 h8)
    (compatible r7 h9)
    (compatible r7 h10)
    (compatible r7 h11)
    (compatible r7 h13)
    (compatible r7 h14)
    (compatible r7 h15)
    (compatible r7 h16)
    (compatible r7 h17)
    (compatible r7 h19)

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
    (compatible r8 h19)

    ;; Reserva r9 (1 pax): 
    (compatible r9 h1)
    (compatible r9 h2)
    (compatible r9 h3)
    (compatible r9 h4)
    (compatible r9 h5)
    (compatible r9 h6)
    (compatible r9 h7)
    (compatible r9 h8)
    (compatible r9 h9)
    (compatible r9 h10)
    (compatible r9 h11)
    (compatible r9 h12)
    (compatible r9 h13)
    (compatible r9 h14)
    (compatible r9 h15)
    (compatible r9 h16)
    (compatible r9 h17)
    (compatible r9 h18)
    (compatible r9 h19)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h2)
    (compatible r10 h3)
    (compatible r10 h6)
    (compatible r10 h7)
    (compatible r10 h8)
    (compatible r10 h9)
    (compatible r10 h10)
    (compatible r10 h11)
    (compatible r10 h13)
    (compatible r10 h14)
    (compatible r10 h15)
    (compatible r10 h16)
    (compatible r10 h17)
    (compatible r10 h19)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d8)
    (dies-reserva r3 d9)
    (dies-reserva r3 d10)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r4 d6)
    (dies-reserva r4 d7)
    (dies-reserva r5 d7)
    (dies-reserva r5 d8)
    (dies-reserva r6 d9)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r9 d4)
    (dies-reserva r9 d5)
    (dies-reserva r9 d6)
    (dies-reserva r9 d7)
    (dies-reserva r9 d8)
    (dies-reserva r10 d5)
    (dies-reserva r10 d6)
    (dies-reserva r10 d7)
    (dies-reserva r10 d8)
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
