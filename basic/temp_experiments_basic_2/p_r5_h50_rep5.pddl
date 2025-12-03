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
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
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

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
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
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h23)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h44)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h23)
    (compatible r4 h25)
    (compatible r4 h29)
    (compatible r4 h35)
    (compatible r4 h39)
    (compatible r4 h41)
    (compatible r4 h47)
    (compatible r4 h49)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h14)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h23)
    (compatible r5 h25)
    (compatible r5 h29)
    (compatible r5 h35)
    (compatible r5 h39)
    (compatible r5 h41)
    (compatible r5 h47)
    (compatible r5 h49)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
