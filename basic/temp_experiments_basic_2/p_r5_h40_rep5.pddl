(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h38)

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
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h8)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h23)
    (compatible r3 h38)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h27)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h34)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h34)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
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
