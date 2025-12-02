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
    ;; h3: 2 persones
    ;; h4: 3 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 3 persones
    ;; h60: 4 persones
    ;; h61: 4 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 4 persones
    ;; h67: 2 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 4 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 4 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 4 persones
    ;; h88: 2 persones
    ;; h89: 2 persones
    ;; h90: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h83)
    (compatible r1 h87)
    (compatible r1 h90)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h7)
    (compatible r2 h10)
    (compatible r2 h15)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h46)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h64)
    (compatible r2 h66)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h73)
    (compatible r2 h78)
    (compatible r2 h87)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
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
