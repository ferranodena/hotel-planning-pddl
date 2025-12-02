(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 1 persones
    ;; h20: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h20)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h13)
    (compatible r2 h14)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
