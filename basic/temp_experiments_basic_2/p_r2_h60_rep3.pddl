(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 4 persones
    ;; h60: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h22)
    (compatible r1 h30)
    (compatible r1 h34)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h52)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
