(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h60)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h9)
    (compatible r2 h12)
    (compatible r2 h20)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h45)
    (compatible r2 h50)
    (compatible r2 h56)

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

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h9)
    (compatible r4 h12)
    (compatible r4 h20)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h45)
    (compatible r4 h50)
    (compatible r4 h56)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h17)
    (compatible r5 h20)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d1)
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
