(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 4 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 1 persones
    ;; h89: 4 persones
    ;; h90: 3 persones
    ;; h91: 2 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 3 persones
    ;; h96: 1 persones
    ;; h97: 4 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 1 persones

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
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h20)
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
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h63)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h77)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h98)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
