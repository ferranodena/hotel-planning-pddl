(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h19)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h19)

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
    (compatible r5 h19)

    ;; Reserva r6 (4 pax): 
    (compatible r6 h8)
    (compatible r6 h14)
    (compatible r6 h16)
    (compatible r6 h17)
    (compatible r6 h19)

    ;; Reserva r7 (4 pax): 
    (compatible r7 h8)
    (compatible r7 h14)
    (compatible r7 h16)
    (compatible r7 h17)
    (compatible r7 h19)

    ;; Reserva r8 (4 pax): 
    (compatible r8 h8)
    (compatible r8 h14)
    (compatible r8 h16)
    (compatible r8 h17)
    (compatible r8 h19)

    ;; Reserva r9 (2 pax): 
    (compatible r9 h1)
    (compatible r9 h3)
    (compatible r9 h5)
    (compatible r9 h6)
    (compatible r9 h7)
    (compatible r9 h8)
    (compatible r9 h10)
    (compatible r9 h12)
    (compatible r9 h13)
    (compatible r9 h14)
    (compatible r9 h16)
    (compatible r9 h17)
    (compatible r9 h19)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h1)
    (compatible r10 h3)
    (compatible r10 h5)
    (compatible r10 h6)
    (compatible r10 h7)
    (compatible r10 h8)
    (compatible r10 h10)
    (compatible r10 h12)
    (compatible r10 h13)
    (compatible r10 h14)
    (compatible r10 h16)
    (compatible r10 h17)
    (compatible r10 h19)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d9)
    (dies-reserva r5 d5)
    (dies-reserva r5 d6)
    (dies-reserva r5 d7)
    (dies-reserva r5 d8)
    (dies-reserva r5 d9)
    (dies-reserva r6 d9)
    (dies-reserva r6 d10)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r8 d7)
    (dies-reserva r8 d8)
    (dies-reserva r8 d9)
    (dies-reserva r9 d5)
    (dies-reserva r9 d6)
    (dies-reserva r9 d7)
    (dies-reserva r10 d6)
    (dies-reserva r10 d7)
    (dies-reserva r10 d8)
    (dies-reserva r10 d9)
    (dies-reserva r10 d10)
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
