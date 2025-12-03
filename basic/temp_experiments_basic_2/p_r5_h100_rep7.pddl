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
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 3 persones
    ;; h33: 3 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 4 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 3 persones
    ;; h67: 2 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 3 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 2 persones
    ;; h92: 3 persones
    ;; h93: 4 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 3 persones
    ;; h100: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h42)
    (compatible r1 h45)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h97)
    (compatible r1 h99)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h19)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h37)
    (compatible r2 h45)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h58)
    (compatible r2 h63)
    (compatible r2 h68)
    (compatible r2 h71)
    (compatible r2 h76)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h93)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h42)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
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
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h84)
    (compatible r3 h86)
    (compatible r3 h88)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h99)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h2)
    (compatible r4 h5)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h26)
    (compatible r4 h29)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h42)
    (compatible r4 h45)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h66)
    (compatible r4 h68)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h84)
    (compatible r4 h86)
    (compatible r4 h88)
    (compatible r4 h90)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h97)
    (compatible r4 h99)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h2)
    (compatible r5 h5)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h26)
    (compatible r5 h29)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h42)
    (compatible r5 h45)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h66)
    (compatible r5 h68)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h84)
    (compatible r5 h86)
    (compatible r5 h88)
    (compatible r5 h90)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h97)
    (compatible r5 h99)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r5 d1)
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
