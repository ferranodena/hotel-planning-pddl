(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 3 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h29)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h29)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
