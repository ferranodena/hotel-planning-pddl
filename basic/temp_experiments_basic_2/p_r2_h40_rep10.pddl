(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h9)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h26)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h9)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h26)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
