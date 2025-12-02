(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 3 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 1 persones
    ;; h49: 1 persones
    ;; h50: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h16)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h50)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h50)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
