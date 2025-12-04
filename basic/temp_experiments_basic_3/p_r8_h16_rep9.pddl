(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 1 persones

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

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h15)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h2)
    (compatible r3 h3)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h2)
    (compatible r4 h3)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h3)

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

    ;; Reserva r7 (3 pax): 
    (compatible r7 h2)
    (compatible r7 h3)
    (compatible r7 h5)
    (compatible r7 h6)
    (compatible r7 h15)

    ;; Reserva r8 (2 pax): 
    (compatible r8 h1)
    (compatible r8 h2)
    (compatible r8 h3)
    (compatible r8 h5)
    (compatible r8 h6)
    (compatible r8 h8)
    (compatible r8 h9)
    (compatible r8 h11)
    (compatible r8 h15)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d5)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
    (dies-reserva r7 d7)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
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
