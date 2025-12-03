(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h7)
    (compatible r1 h18)
    (compatible r1 h28)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h57)
    (compatible r1 h66)
    (compatible r1 h77)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h80)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h7)
    (compatible r3 h18)
    (compatible r3 h28)
    (compatible r3 h33)
    (compatible r3 h36)
    (compatible r3 h39)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h47)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h57)
    (compatible r3 h66)
    (compatible r3 h77)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h22)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h36)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h49)
    (compatible r4 h51)
    (compatible r4 h54)
    (compatible r4 h57)
    (compatible r4 h59)
    (compatible r4 h61)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h73)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h80)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h51)
    (compatible r5 h54)
    (compatible r5 h57)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h80)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
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
