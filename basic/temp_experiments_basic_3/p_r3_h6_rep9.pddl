(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 - reserva
    h1 h2 h3 h4 h5 h6 - habitacio
    d1 d2 d3 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h5)
    (compatible r2 h6)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h5)
    (compatible r3 h6)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
  ))
)
