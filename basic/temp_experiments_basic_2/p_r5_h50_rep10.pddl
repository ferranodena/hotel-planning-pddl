(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h46)
    (compatible r1 h50)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h46)
    (compatible r2 h50)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h2)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h19)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h26)
    (compatible r3 h29)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h37)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h46)
    (compatible r3 h50)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h6)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h13)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h26)
    (compatible r4 h28)
    (compatible r4 h29)
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
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h9)
    (compatible r5 h11)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h21)
    (compatible r5 h29)
    (compatible r5 h41)
    (compatible r5 h50)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d4)
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
