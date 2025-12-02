(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
