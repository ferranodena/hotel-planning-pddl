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
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 2 persones
    ;; h69: 3 persones
    ;; h70: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h9)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h17)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h65)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
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
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h65)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
