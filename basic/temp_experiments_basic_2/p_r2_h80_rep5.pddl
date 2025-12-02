(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 1 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 3 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 2 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 4 persones
    ;; h79: 2 persones
    ;; h80: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h27)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h69)
    (compatible r1 h72)
    (compatible r1 h77)
    (compatible r1 h78)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h77)
    (compatible r2 h78)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
