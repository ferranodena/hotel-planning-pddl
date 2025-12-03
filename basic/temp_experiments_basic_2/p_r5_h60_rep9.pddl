(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 1 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h4)
    (compatible r3 h10)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h22)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h40)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h51)
    (compatible r3 h52)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h4)
    (compatible r4 h10)
    (compatible r4 h13)
    (compatible r4 h15)
    (compatible r4 h22)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h40)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h51)
    (compatible r4 h52)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h34)
    (compatible r5 h40)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
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
