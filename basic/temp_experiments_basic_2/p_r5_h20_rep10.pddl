(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h8)
    (compatible r1 h12)
    (compatible r1 h16)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h16)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h2)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h4)
    (compatible r4 h6)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h20)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
