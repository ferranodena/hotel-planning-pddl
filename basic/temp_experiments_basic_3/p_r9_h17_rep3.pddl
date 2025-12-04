(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h4)
    (compatible r5 h10)
    (compatible r5 h14)

    ;; Reserva r6 (4 pax): 
    (compatible r6 h4)
    (compatible r6 h10)
    (compatible r6 h14)

    ;; Reserva r7 (2 pax): 
    (compatible r7 h3)
    (compatible r7 h4)
    (compatible r7 h6)
    (compatible r7 h8)
    (compatible r7 h10)
    (compatible r7 h11)
    (compatible r7 h13)
    (compatible r7 h14)
    (compatible r7 h15)
    (compatible r7 h16)
    (compatible r7 h17)

    ;; Reserva r8 (3 pax): 
    (compatible r8 h4)
    (compatible r8 h6)
    (compatible r8 h8)
    (compatible r8 h10)
    (compatible r8 h11)
    (compatible r8 h14)

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

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d6)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
    (dies-reserva r5 d6)
    (dies-reserva r6 d5)
    (dies-reserva r6 d6)
    (dies-reserva r6 d7)
    (dies-reserva r6 d8)
    (dies-reserva r7 d6)
    (dies-reserva r7 d7)
    (dies-reserva r7 d8)
    (dies-reserva r7 d9)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r9 d2)
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
