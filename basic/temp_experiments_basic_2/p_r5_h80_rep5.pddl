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
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 1 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 1 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h15)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h47)
    (compatible r1 h54)
    (compatible r1 h57)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h72)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h29)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h41)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h68)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h75)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h29)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h41)
    (compatible r3 h45)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h50)
    (compatible r3 h52)
    (compatible r3 h54)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h59)
    (compatible r3 h62)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h68)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h75)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h15)
    (compatible r4 h20)
    (compatible r4 h22)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h47)
    (compatible r4 h54)
    (compatible r4 h57)
    (compatible r4 h62)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h68)
    (compatible r4 h72)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h15)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h29)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h41)
    (compatible r5 h45)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h59)
    (compatible r5 h62)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h68)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h75)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
