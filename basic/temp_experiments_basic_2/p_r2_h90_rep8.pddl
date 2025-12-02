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
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 3 persones
    ;; h76: 3 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h26)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h22)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h50)
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
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
