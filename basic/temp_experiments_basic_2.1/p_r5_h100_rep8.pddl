(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 4 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 2 persones
    ;; h89: 2 persones
    ;; h90: 2 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 1 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 1 persones
    ;; h100: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h61)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h85)
    (compatible r1 h87)
    (compatible r1 h98)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h91)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h98)

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
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h98)
    (compatible r3 h99)
    (compatible r3 h100)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
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
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
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
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h11)
    (compatible r5 h15)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h20)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h30)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h47)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h59)
    (compatible r5 h61)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h74)
    (compatible r5 h77)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h87)
    (compatible r5 h91)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h98)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
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
