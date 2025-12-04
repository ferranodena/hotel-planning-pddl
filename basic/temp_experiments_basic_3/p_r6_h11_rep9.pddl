(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 - habitacio
    d1 d2 d3 d4 d5 d6 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h5)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h5)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h5)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h1)
    (compatible r6 h3)
    (compatible r6 h4)
    (compatible r6 h5)
    (compatible r6 h8)
    (compatible r6 h9)
    (compatible r6 h10)
    (compatible r6 h11)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r4 d5)
    (dies-reserva r4 d6)
    (dies-reserva r5 d4)
    (dies-reserva r6 d1)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
    (assignada r6)
  ))
)
