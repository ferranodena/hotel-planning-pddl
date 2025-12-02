(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
