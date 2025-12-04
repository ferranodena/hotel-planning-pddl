(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 - habitacio
    d1 d2 d3 d4 d5 d6 d7 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h13)
    (compatible r1 h14)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h13)
    (compatible r2 h14)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h13)
    (compatible r4 h14)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h13)
    (compatible r5 h14)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h1)
    (compatible r6 h3)
    (compatible r6 h4)
    (compatible r6 h5)
    (compatible r6 h6)
    (compatible r6 h7)
    (compatible r6 h8)
    (compatible r6 h10)
    (compatible r6 h12)
    (compatible r6 h13)
    (compatible r6 h14)

    ;; Reserva r7 (4 pax): 
    (compatible r7 h1)
    (compatible r7 h13)
    (compatible r7 h14)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d4)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
    (assignada r6)
    (assignada r7)
  ))
)
