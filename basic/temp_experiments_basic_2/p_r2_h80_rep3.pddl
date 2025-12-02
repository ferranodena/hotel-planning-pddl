(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 4 persones
    ;; h74: 4 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 3 persones
    ;; h80: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h79)
    (compatible r1 h80)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h17)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h37)
    (compatible r2 h49)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h62)
    (compatible r2 h69)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
