(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 3 persones
    ;; h46: 2 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 1 persones
    ;; h85: 4 persones
    ;; h86: 3 persones
    ;; h87: 1 persones
    ;; h88: 1 persones
    ;; h89: 1 persones
    ;; h90: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
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
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h60)
    (compatible r1 h61)
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
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h90)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h6)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h20)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h47)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h75)
    (compatible r2 h78)
    (compatible r2 h81)
    (compatible r2 h85)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h6)
    (compatible r3 h15)
    (compatible r3 h17)
    (compatible r3 h20)
    (compatible r3 h25)
    (compatible r3 h27)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h47)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h75)
    (compatible r3 h78)
    (compatible r3 h81)
    (compatible r3 h85)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h6)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h20)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h32)
    (compatible r4 h34)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h45)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h50)
    (compatible r4 h52)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h75)
    (compatible r4 h78)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h85)
    (compatible r4 h86)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h6)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h20)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h30)
    (compatible r5 h32)
    (compatible r5 h34)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h45)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h75)
    (compatible r5 h78)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h85)
    (compatible r5 h86)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
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
