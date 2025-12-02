(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 1 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 4 persones
    ;; h88: 3 persones
    ;; h89: 4 persones
    ;; h90: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h30)
    (compatible r1 h34)
    (compatible r1 h38)
    (compatible r1 h41)
    (compatible r1 h44)
    (compatible r1 h48)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h75)
    (compatible r1 h82)
    (compatible r1 h87)
    (compatible r1 h89)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
