(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 3 persones
    ;; h67: 2 persones
    ;; h68: 4 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 4 persones
    ;; h80: 2 persones
    ;; h81: 4 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 3 persones
    ;; h88: 1 persones
    ;; h89: 4 persones
    ;; h90: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h6)
    (compatible r1 h10)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h28)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h49)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h62)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h86)
    (compatible r1 h89)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h66)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h89)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
