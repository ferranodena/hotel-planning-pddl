(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 4 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h12)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h24)
    (compatible r1 h25)

    ;; Reserva r2 (2 pax): 
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

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
