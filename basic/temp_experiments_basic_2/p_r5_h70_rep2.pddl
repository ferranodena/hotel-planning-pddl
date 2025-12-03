(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h10)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h45)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h69)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h10)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h45)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h69)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h7)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h33)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h52)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h62)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h67)
    (compatible r4 h69)
    (compatible r4 h70)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h10)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h33)
    (compatible r5 h36)
    (compatible r5 h40)
    (compatible r5 h42)
    (compatible r5 h45)
    (compatible r5 h50)
    (compatible r5 h52)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h65)
    (compatible r5 h67)
    (compatible r5 h69)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
