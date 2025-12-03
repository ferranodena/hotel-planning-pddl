(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h11)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h17)
    (compatible r3 h18)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h2)
    (compatible r4 h7)
    (compatible r4 h11)
    (compatible r4 h14)
    (compatible r4 h17)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h11)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h20)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
