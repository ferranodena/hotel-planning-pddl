(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h14)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h13)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
