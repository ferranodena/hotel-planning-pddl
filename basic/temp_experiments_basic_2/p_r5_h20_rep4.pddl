(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 4 persones

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

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h4)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h17)
    (compatible r2 h20)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h9)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h20)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h20)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h9)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h20)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
