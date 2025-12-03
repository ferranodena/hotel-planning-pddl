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
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 2 persones
    ;; h52: 2 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 1 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 3 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 4 persones
    ;; h90: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h11)
    (compatible r1 h15)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h32)
    (compatible r1 h36)
    (compatible r1 h48)
    (compatible r1 h55)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h75)
    (compatible r1 h83)
    (compatible r1 h88)
    (compatible r1 h89)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h5)
    (compatible r2 h11)
    (compatible r2 h15)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h32)
    (compatible r2 h36)
    (compatible r2 h48)
    (compatible r2 h55)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h75)
    (compatible r2 h83)
    (compatible r2 h88)
    (compatible r2 h89)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h5)
    (compatible r3 h7)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h18)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h25)
    (compatible r3 h27)
    (compatible r3 h30)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h41)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h55)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h64)
    (compatible r3 h70)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h81)
    (compatible r3 h83)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h90)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h5)
    (compatible r4 h7)
    (compatible r4 h11)
    (compatible r4 h13)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h25)
    (compatible r4 h27)
    (compatible r4 h30)
    (compatible r4 h32)
    (compatible r4 h34)
    (compatible r4 h36)
    (compatible r4 h38)
    (compatible r4 h41)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h55)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h64)
    (compatible r4 h70)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h81)
    (compatible r4 h83)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h18)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h81)
    (compatible r5 h83)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
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
