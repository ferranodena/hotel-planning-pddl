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
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 1 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h24)
    (compatible r1 h31)
    (compatible r1 h41)
    (compatible r1 h46)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h46)
    (compatible r2 h49)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h8)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h24)
    (compatible r3 h27)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h41)
    (compatible r3 h43)
    (compatible r3 h46)
    (compatible r3 h49)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h49)
    (compatible r4 h50)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h24)
    (compatible r5 h31)
    (compatible r5 h41)
    (compatible r5 h46)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
