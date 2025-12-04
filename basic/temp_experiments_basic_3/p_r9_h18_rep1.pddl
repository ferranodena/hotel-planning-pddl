(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h18)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)

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
    (compatible r4 h18)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h18)

    ;; Reserva r6 (4 pax): 
    (compatible r6 h3)
    (compatible r6 h4)
    (compatible r6 h6)
    (compatible r6 h14)
    (compatible r6 h16)
    (compatible r6 h18)

    ;; Reserva r7 (4 pax): 
    (compatible r7 h3)
    (compatible r7 h4)
    (compatible r7 h6)
    (compatible r7 h14)
    (compatible r7 h16)
    (compatible r7 h18)

    ;; Reserva r8 (4 pax): 
    (compatible r8 h3)
    (compatible r8 h4)
    (compatible r8 h6)
    (compatible r8 h14)
    (compatible r8 h16)
    (compatible r8 h18)

    ;; Reserva r9 (4 pax): 
    (compatible r9 h3)
    (compatible r9 h4)
    (compatible r9 h6)
    (compatible r9 h14)
    (compatible r9 h16)
    (compatible r9 h18)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r3 d6)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r4 d6)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r6 d1)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r7 d8)
    (dies-reserva r7 d9)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r8 d7)
    (dies-reserva r9 d3)
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
