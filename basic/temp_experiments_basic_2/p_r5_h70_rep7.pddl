(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
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
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 3 persones
    ;; h61: 4 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h22)
    (compatible r2 h32)
    (compatible r2 h36)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h55)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h69)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
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

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h3)
    (compatible r5 h16)
    (compatible r5 h19)
    (compatible r5 h22)
    (compatible r5 h32)
    (compatible r5 h36)
    (compatible r5 h40)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h49)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h55)
    (compatible r5 h58)
    (compatible r5 h61)
    (compatible r5 h69)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
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
