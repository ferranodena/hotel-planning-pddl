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
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 1 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 3 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 1 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 2 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 2 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 4 persones
    ;; h80: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h7)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h35)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h48)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h60)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h69)
    (compatible r1 h73)
    (compatible r1 h79)

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
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
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
