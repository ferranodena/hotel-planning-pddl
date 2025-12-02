(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 1 persones
    ;; h41: 1 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h28)
    (compatible r1 h33)
    (compatible r1 h42)
    (compatible r1 h46)
    (compatible r1 h48)

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

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
