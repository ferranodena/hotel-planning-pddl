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
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 2 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 4 persones
    ;; h81: 3 persones
    ;; h82: 3 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 4 persones
    ;; h89: 1 persones
    ;; h90: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h75)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h5)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h25)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h64)
    (compatible r2 h70)
    (compatible r2 h75)
    (compatible r2 h80)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h88)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h7)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h23)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h47)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h57)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h68)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h78)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h90)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h2)
    (compatible r4 h5)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h17)
    (compatible r4 h25)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h49)
    (compatible r4 h52)
    (compatible r4 h64)
    (compatible r4 h70)
    (compatible r4 h75)
    (compatible r4 h80)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h88)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
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
