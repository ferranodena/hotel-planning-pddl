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
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 4 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 1 persones
    ;; h70: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
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
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h70)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h68)
    (compatible r2 h70)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h8)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h22)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h35)
    (compatible r3 h54)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h70)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
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
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h56)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h68)
    (compatible r5 h70)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
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
