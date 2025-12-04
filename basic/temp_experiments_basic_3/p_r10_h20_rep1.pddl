(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 2 persones

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
    (compatible r1 h20)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h20)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h7)
    (compatible r3 h9)
    (compatible r3 h12)
    (compatible r3 h17)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h7)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h20)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h7)
    (compatible r5 h9)
    (compatible r5 h12)
    (compatible r5 h17)

    ;; Reserva r6 (3 pax): 
    (compatible r6 h7)
    (compatible r6 h9)
    (compatible r6 h11)
    (compatible r6 h12)
    (compatible r6 h13)
    (compatible r6 h15)
    (compatible r6 h17)
    (compatible r6 h18)

    ;; Reserva r7 (4 pax): 
    (compatible r7 h7)
    (compatible r7 h9)
    (compatible r7 h12)
    (compatible r7 h17)

    ;; Reserva r8 (2 pax): 
    (compatible r8 h2)
    (compatible r8 h3)
    (compatible r8 h4)
    (compatible r8 h7)
    (compatible r8 h9)
    (compatible r8 h10)
    (compatible r8 h11)
    (compatible r8 h12)
    (compatible r8 h13)
    (compatible r8 h14)
    (compatible r8 h15)
    (compatible r8 h17)
    (compatible r8 h18)
    (compatible r8 h20)

    ;; Reserva r9 (3 pax): 
    (compatible r9 h7)
    (compatible r9 h9)
    (compatible r9 h11)
    (compatible r9 h12)
    (compatible r9 h13)
    (compatible r9 h15)
    (compatible r9 h17)
    (compatible r9 h18)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h2)
    (compatible r10 h3)
    (compatible r10 h4)
    (compatible r10 h7)
    (compatible r10 h9)
    (compatible r10 h10)
    (compatible r10 h11)
    (compatible r10 h12)
    (compatible r10 h13)
    (compatible r10 h14)
    (compatible r10 h15)
    (compatible r10 h17)
    (compatible r10 h18)
    (compatible r10 h20)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d7)
    (dies-reserva r4 d8)
    (dies-reserva r4 d9)
    (dies-reserva r4 d10)
    (dies-reserva r5 d10)
    (dies-reserva r6 d5)
    (dies-reserva r6 d6)
    (dies-reserva r6 d7)
    (dies-reserva r6 d8)
    (dies-reserva r6 d9)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r8 d7)
    (dies-reserva r9 d6)
    (dies-reserva r9 d7)
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
