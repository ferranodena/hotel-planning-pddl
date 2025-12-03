(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 1 persones
    ;; h50: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h47)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h9)
    (compatible r3 h21)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h33)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h42)
    (compatible r3 h43)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h9)
    (compatible r4 h21)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h33)
    (compatible r4 h36)
    (compatible r4 h38)
    (compatible r4 h42)
    (compatible r4 h43)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h47)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
