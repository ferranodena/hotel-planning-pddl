(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h18)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
