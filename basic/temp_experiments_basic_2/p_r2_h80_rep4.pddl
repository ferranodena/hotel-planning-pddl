(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 1 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 2 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 3 persones
    ;; h80: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h47)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h79)
    (compatible r1 h80)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h7)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h43)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h80)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
