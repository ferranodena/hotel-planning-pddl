(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h15)
    (compatible r2 h24)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
