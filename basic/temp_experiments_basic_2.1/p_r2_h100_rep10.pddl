(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 2 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 2 persones
    ;; h74: 4 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 3 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 1 persones
    ;; h91: 4 persones
    ;; h92: 2 persones
    ;; h93: 3 persones
    ;; h94: 1 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 1 persones
    ;; h98: 1 persones
    ;; h99: 3 persones
    ;; h100: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h93)
    (compatible r1 h99)
    (compatible r1 h100)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h16)
    (compatible r2 h21)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h45)
    (compatible r2 h48)
    (compatible r2 h51)
    (compatible r2 h54)
    (compatible r2 h65)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h82)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h91)
    (compatible r2 h100)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
