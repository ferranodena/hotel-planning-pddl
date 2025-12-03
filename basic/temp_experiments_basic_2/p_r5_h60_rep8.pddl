(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 3 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 4 persones
    ;; h60: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h43)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h59)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h17)
    (compatible r3 h19)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h45)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h31)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h52)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h17)
    (compatible r5 h19)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
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
