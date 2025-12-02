(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 1 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 1 persones

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

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h5)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h46)
    (compatible r2 h49)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
