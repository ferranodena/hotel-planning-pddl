(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h32)
    (compatible r1 h37)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h5)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h32)
    (compatible r2 h37)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
