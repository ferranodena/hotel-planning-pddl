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
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 1 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h8)
    (compatible r1 h13)
    (compatible r1 h20)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h42)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h49)
    (compatible r1 h54)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h8)
    (compatible r2 h13)
    (compatible r2 h20)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h42)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h49)
    (compatible r2 h54)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h8)
    (compatible r3 h13)
    (compatible r3 h20)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h42)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h49)
    (compatible r3 h54)

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

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h5)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h16)
    (compatible r5 h18)
    (compatible r5 h20)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
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
    (compatible r5 h56)
    (compatible r5 h58)
    (compatible r5 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
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
