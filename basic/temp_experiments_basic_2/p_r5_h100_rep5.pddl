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
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 2 persones
    ;; h42: 2 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 3 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 1 persones
    ;; h89: 2 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 3 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 3 persones
    ;; h96: 2 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 2 persones
    ;; h100: 4 persones

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
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h12)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h54)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h95)
    (compatible r2 h98)
    (compatible r2 h100)

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

    ;; Reserva r4 (3 pax): 
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h5)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h12)
    (compatible r4 h15)
    (compatible r4 h17)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h40)
    (compatible r4 h49)
    (compatible r4 h51)
    (compatible r4 h54)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h90)
    (compatible r4 h92)
    (compatible r4 h95)
    (compatible r4 h98)
    (compatible r4 h100)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h9)
    (compatible r5 h12)
    (compatible r5 h24)
    (compatible r5 h27)
    (compatible r5 h32)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h40)
    (compatible r5 h51)
    (compatible r5 h54)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h67)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h84)
    (compatible r5 h90)
    (compatible r5 h100)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r5 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
