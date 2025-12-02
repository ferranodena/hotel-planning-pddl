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
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h30)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
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
