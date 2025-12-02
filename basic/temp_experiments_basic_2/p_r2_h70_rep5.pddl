(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 4 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h10)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h57)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h65)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h3)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h68)
    (compatible r2 h69)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
