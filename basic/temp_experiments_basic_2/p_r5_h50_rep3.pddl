(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h8)
    (compatible r1 h11)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h18)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h50)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h50)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h8)
    (compatible r3 h11)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h18)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h34)
    (compatible r3 h36)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h45)
    (compatible r3 h47)
    (compatible r3 h50)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h8)
    (compatible r5 h11)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h18)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h34)
    (compatible r5 h36)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h47)
    (compatible r5 h50)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
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
