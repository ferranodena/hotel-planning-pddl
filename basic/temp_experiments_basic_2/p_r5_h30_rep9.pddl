(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h22)
    (compatible r1 h30)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h22)
    (compatible r2 h30)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h2)
    (compatible r3 h4)
    (compatible r3 h7)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h19)
    (compatible r3 h22)
    (compatible r3 h30)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h2)
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
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h25)
    (compatible r4 h27)
    (compatible r4 h30)

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
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d3)
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
