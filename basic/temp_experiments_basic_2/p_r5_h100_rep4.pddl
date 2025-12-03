(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 2 persones
    ;; h27: 4 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 2 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 4 persones
    ;; h81: 3 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 1 persones
    ;; h99: 3 persones
    ;; h100: 3 persones

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
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h54)
    (compatible r2 h58)
    (compatible r2 h63)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h75)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h96)
    (compatible r2 h99)
    (compatible r2 h100)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h3)
    (compatible r3 h13)
    (compatible r3 h16)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h33)
    (compatible r3 h43)
    (compatible r3 h45)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h54)
    (compatible r3 h58)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h75)
    (compatible r3 h80)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h91)
    (compatible r3 h96)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h24)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h37)
    (compatible r4 h39)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h54)
    (compatible r4 h58)
    (compatible r4 h63)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h75)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h91)
    (compatible r4 h92)
    (compatible r4 h96)
    (compatible r4 h99)
    (compatible r4 h100)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h24)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h37)
    (compatible r5 h39)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h54)
    (compatible r5 h58)
    (compatible r5 h63)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h75)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h91)
    (compatible r5 h92)
    (compatible r5 h96)
    (compatible r5 h99)
    (compatible r5 h100)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
