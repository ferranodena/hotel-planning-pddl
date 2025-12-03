(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h28)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h49)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h28)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h49)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h9)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h28)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h46)
    (compatible r3 h48)
    (compatible r3 h49)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h11)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)

    ;; Reserva r5 (1 pax): 
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
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
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
    (compatible r5 h49)
    (compatible r5 h50)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d3)
    (dies-reserva r4 d2)
    (dies-reserva r5 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
