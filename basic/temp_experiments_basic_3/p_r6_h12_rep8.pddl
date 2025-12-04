(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 - habitacio
    d1 d2 d3 d4 d5 d6 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h6)
    (compatible r1 h12)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h3)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h10)
    (compatible r2 h12)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h3)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h10)
    (compatible r3 h12)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h3)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h10)
    (compatible r4 h12)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)

    ;; Reserva r6 (4 pax): 
    (compatible r6 h3)
    (compatible r6 h6)
    (compatible r6 h12)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
    (dies-reserva r6 d6)
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
