(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 1 persones
    ;; h51: 2 persones
    ;; h52: 4 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 3 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 3 persones
    ;; h77: 3 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h6)
    (compatible r1 h9)
    (compatible r1 h13)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h24)
    (compatible r1 h32)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h47)
    (compatible r1 h52)
    (compatible r1 h58)
    (compatible r1 h62)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h78)
    (compatible r1 h83)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h62)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h88)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
