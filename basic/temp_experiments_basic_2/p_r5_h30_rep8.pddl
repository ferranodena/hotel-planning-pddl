(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 2 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 1 persones

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

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
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
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h5)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h28)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h5)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h28)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h5)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h28)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d3)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
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
