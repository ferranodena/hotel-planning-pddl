(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 1 persones
    ;; h41: 2 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
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
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
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
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h7)
    (compatible r2 h12)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h31)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h47)
    (compatible r2 h56)
    (compatible r2 h60)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h58)
    (compatible r3 h60)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h58)
    (compatible r4 h60)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h3)
    (compatible r5 h7)
    (compatible r5 h12)
    (compatible r5 h16)
    (compatible r5 h19)
    (compatible r5 h23)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h31)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h47)
    (compatible r5 h56)
    (compatible r5 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
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
