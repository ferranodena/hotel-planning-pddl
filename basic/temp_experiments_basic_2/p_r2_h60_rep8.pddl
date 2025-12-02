(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 1 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d6)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
