(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h15)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d1)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
