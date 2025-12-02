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
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 3 persones
    ;; h41: 2 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h20)
    (compatible r1 h26)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h59)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h56)
    (compatible r2 h59)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
