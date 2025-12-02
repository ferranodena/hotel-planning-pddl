(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 2 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 3 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 1 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 4 persones
    ;; h80: 2 persones
    ;; h81: 4 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 2 persones
    ;; h91: 2 persones
    ;; h92: 1 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 2 persones
    ;; h98: 4 persones
    ;; h99: 1 persones
    ;; h100: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h4)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h98)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h9)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h26)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h42)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h56)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h77)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h96)
    (compatible r2 h98)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
