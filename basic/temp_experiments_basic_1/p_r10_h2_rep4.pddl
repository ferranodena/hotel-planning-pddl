(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)

    ;; Reserva r3 (3 pax): 
    ;; ALERTA: r3 no té cap habitació compatible (massa gran)!

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h2)

    ;; Reserva r7 (3 pax): 
    ;; ALERTA: r7 no té cap habitació compatible (massa gran)!

    ;; Reserva r8 (2 pax): 
    (compatible r8 h2)

    ;; Reserva r9 (1 pax): 
    (compatible r9 h1)
    (compatible r9 h2)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r4 d2)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r10 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
    (assignada r6)
    (assignada r7)
    (assignada r8)
    (assignada r9)
    (assignada r10)
  ))
)
