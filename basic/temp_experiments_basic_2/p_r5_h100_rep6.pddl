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
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 2 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 3 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h7)
    (compatible r1 h11)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h54)
    (compatible r1 h57)
    (compatible r1 h67)
    (compatible r1 h77)
    (compatible r1 h80)
    (compatible r1 h89)
    (compatible r1 h90)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h7)
    (compatible r2 h11)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h67)
    (compatible r2 h77)
    (compatible r2 h80)
    (compatible r2 h89)
    (compatible r2 h90)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h7)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h31)
    (compatible r3 h33)
    (compatible r3 h35)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h50)
    (compatible r3 h52)
    (compatible r3 h54)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h65)
    (compatible r3 h67)
    (compatible r3 h69)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h80)
    (compatible r3 h87)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h95)
    (compatible r3 h97)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h7)
    (compatible r4 h11)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h27)
    (compatible r4 h29)
    (compatible r4 h31)
    (compatible r4 h33)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h54)
    (compatible r4 h57)
    (compatible r4 h67)
    (compatible r4 h77)
    (compatible r4 h80)
    (compatible r4 h89)
    (compatible r4 h90)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h7)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h29)
    (compatible r5 h31)
    (compatible r5 h33)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h65)
    (compatible r5 h67)
    (compatible r5 h69)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h80)
    (compatible r5 h87)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h95)
    (compatible r5 h97)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
