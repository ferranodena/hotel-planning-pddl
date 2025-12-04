(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h15)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)

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

    ;; Reserva r4 (4 pax): 
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h1)
    (compatible r6 h5)
    (compatible r6 h7)
    (compatible r6 h8)
    (compatible r6 h10)
    (compatible r6 h11)
    (compatible r6 h12)
    (compatible r6 h15)

    ;; Reserva r7 (3 pax): 
    (compatible r7 h5)
    (compatible r7 h7)
    (compatible r7 h8)
    (compatible r7 h10)

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

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d3)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r8 d2)
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
