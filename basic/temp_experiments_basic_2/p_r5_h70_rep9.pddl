(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 1 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 3 persones
    ;; h63: 2 persones
    ;; h64: 4 persones
    ;; h65: 1 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h39)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h68)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h39)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h47)
    (compatible r2 h50)
    (compatible r2 h53)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h67)
    (compatible r2 h68)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h19)
    (compatible r3 h21)
    (compatible r3 h23)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h50)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h19)
    (compatible r4 h23)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h34)
    (compatible r4 h39)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h47)
    (compatible r4 h50)
    (compatible r4 h53)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h64)
    (compatible r4 h67)
    (compatible r4 h68)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h19)
    (compatible r5 h23)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h34)
    (compatible r5 h39)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h47)
    (compatible r5 h50)
    (compatible r5 h53)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h64)
    (compatible r5 h67)
    (compatible r5 h68)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
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
