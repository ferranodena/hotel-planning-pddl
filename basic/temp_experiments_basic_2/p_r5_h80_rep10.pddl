(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 1 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h77)
    (compatible r1 h79)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h9)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h42)
    (compatible r2 h55)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h68)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h79)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h9)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h21)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h33)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h42)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h48)
    (compatible r3 h50)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h68)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h77)
    (compatible r3 h79)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h33)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h6)
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
    (compatible r5 h21)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h33)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
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
