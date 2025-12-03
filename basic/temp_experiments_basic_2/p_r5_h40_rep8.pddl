(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 4 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h14)
    (compatible r1 h30)
    (compatible r1 h35)
    (compatible r1 h39)
    (compatible r1 h40)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h18)
    (compatible r2 h22)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h16)
    (compatible r3 h18)
    (compatible r3 h20)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h33)
    (compatible r3 h35)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h40)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h14)
    (compatible r4 h30)
    (compatible r4 h35)
    (compatible r4 h39)
    (compatible r4 h40)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h14)
    (compatible r5 h30)
    (compatible r5 h35)
    (compatible r5 h39)
    (compatible r5 h40)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
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
