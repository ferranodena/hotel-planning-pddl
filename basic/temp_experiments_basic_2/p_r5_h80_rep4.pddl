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
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 1 persones
    ;; h14: 2 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 3 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 2 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 2 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h44)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h72)
    (compatible r1 h77)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h44)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h67)
    (compatible r2 h72)
    (compatible r2 h77)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h11)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h24)
    (compatible r3 h28)
    (compatible r3 h31)
    (compatible r3 h38)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h44)
    (compatible r3 h47)
    (compatible r3 h53)
    (compatible r3 h55)
    (compatible r3 h67)
    (compatible r3 h72)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h28)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h36)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h44)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h53)
    (compatible r4 h55)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h67)
    (compatible r4 h72)
    (compatible r4 h77)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h11)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h24)
    (compatible r5 h28)
    (compatible r5 h31)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h44)
    (compatible r5 h47)
    (compatible r5 h53)
    (compatible r5 h55)
    (compatible r5 h67)
    (compatible r5 h72)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
