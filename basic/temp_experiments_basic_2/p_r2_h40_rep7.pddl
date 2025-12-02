(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 4 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h34)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h34)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
