(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)

    ;; Reserva r2 (3 pax): 
    ;; ALERTA: r2 no té cap habitació compatible (massa gran)!

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (4 pax): 
    ;; ALERTA: r4 no té cap habitació compatible (massa gran)!

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h1)
    (compatible r6 h2)

    ;; Reserva r7 (2 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (3 pax): 
    ;; ALERTA: r8 no té cap habitació compatible (massa gran)!

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d5)
    (dies-reserva r6 d3)
    (dies-reserva r7 d1)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
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
  ))
)
