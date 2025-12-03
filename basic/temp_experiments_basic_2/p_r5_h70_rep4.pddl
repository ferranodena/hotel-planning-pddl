(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 3 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 1 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 3 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 2 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h63)
    (compatible r1 h67)
    (compatible r1 h69)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h63)
    (compatible r2 h67)
    (compatible r2 h69)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h6)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h20)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h53)
    (compatible r3 h56)
    (compatible r3 h58)
    (compatible r3 h63)
    (compatible r3 h67)
    (compatible r3 h69)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h6)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h20)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h53)
    (compatible r4 h56)
    (compatible r4 h58)
    (compatible r4 h63)
    (compatible r4 h67)
    (compatible r4 h69)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h65)
    (compatible r5 h67)
    (compatible r5 h69)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
