(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 3 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 4 persones
    ;; h61: 4 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 1 persones
    ;; h73: 3 persones
    ;; h74: 4 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 1 persones
    ;; h79: 3 persones
    ;; h80: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h79)
    (compatible r1 h80)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h17)
    (compatible r2 h22)
    (compatible r2 h25)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h45)
    (compatible r2 h48)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h74)
    (compatible r2 h75)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h17)
    (compatible r3 h22)
    (compatible r3 h25)
    (compatible r3 h28)
    (compatible r3 h31)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h45)
    (compatible r3 h48)
    (compatible r3 h58)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h67)
    (compatible r3 h69)
    (compatible r3 h71)
    (compatible r3 h74)
    (compatible r3 h75)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h17)
    (compatible r4 h22)
    (compatible r4 h25)
    (compatible r4 h28)
    (compatible r4 h31)
    (compatible r4 h37)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h45)
    (compatible r4 h48)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h67)
    (compatible r4 h69)
    (compatible r4 h71)
    (compatible r4 h74)
    (compatible r4 h75)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h17)
    (compatible r5 h22)
    (compatible r5 h25)
    (compatible r5 h28)
    (compatible r5 h31)
    (compatible r5 h37)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h45)
    (compatible r5 h48)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h67)
    (compatible r5 h69)
    (compatible r5 h71)
    (compatible r5 h74)
    (compatible r5 h75)

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
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
