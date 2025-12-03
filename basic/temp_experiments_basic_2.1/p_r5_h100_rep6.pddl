(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 4 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 3 persones
    ;; h75: 1 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 3 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 1 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h10)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h33)
    (compatible r1 h39)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h81)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h88)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h98)
    (compatible r1 h99)

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
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
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
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h10)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h17)
    (compatible r3 h19)
    (compatible r3 h22)
    (compatible r3 h25)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h33)
    (compatible r3 h39)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h53)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h64)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h76)
    (compatible r3 h81)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h88)
    (compatible r3 h91)
    (compatible r3 h92)
    (compatible r3 h98)
    (compatible r3 h99)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h10)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h17)
    (compatible r4 h19)
    (compatible r4 h22)
    (compatible r4 h25)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h33)
    (compatible r4 h39)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h53)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h64)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h74)
    (compatible r4 h76)
    (compatible r4 h81)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h88)
    (compatible r4 h91)
    (compatible r4 h92)
    (compatible r4 h98)
    (compatible r4 h99)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
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
    (compatible r5 h74)
    (compatible r5 h76)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h88)
    (compatible r5 h91)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d2)
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
