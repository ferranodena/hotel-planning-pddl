(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 4 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 2 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 3 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h80)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h4)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h53)
    (compatible r2 h59)
    (compatible r2 h68)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h80)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
