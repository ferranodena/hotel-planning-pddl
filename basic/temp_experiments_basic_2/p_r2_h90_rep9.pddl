(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 1 persones
    ;; h65: 3 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 2 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 1 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 3 persones
    ;; h90: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
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
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h73)
    (compatible r2 h75)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h89)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
