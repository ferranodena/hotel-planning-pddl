(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h14)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
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

    ;; Reserva r6 (2 pax): 
    (compatible r6 h3)
    (compatible r6 h4)
    (compatible r6 h5)
    (compatible r6 h6)
    (compatible r6 h8)
    (compatible r6 h9)
    (compatible r6 h10)
    (compatible r6 h11)
    (compatible r6 h12)
    (compatible r6 h13)
    (compatible r6 h14)
    (compatible r6 h16)

    ;; Reserva r7 (3 pax): 
    (compatible r7 h3)
    (compatible r7 h5)
    (compatible r7 h9)
    (compatible r7 h10)
    (compatible r7 h11)
    (compatible r7 h12)
    (compatible r7 h13)
    (compatible r7 h14)

    ;; Reserva r8 (3 pax): 
    (compatible r8 h3)
    (compatible r8 h5)
    (compatible r8 h9)
    (compatible r8 h10)
    (compatible r8 h11)
    (compatible r8 h12)
    (compatible r8 h13)
    (compatible r8 h14)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r6 d4)
    (dies-reserva r7 d4)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
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
