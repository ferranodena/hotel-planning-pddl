(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)

    ;; Reserva r3 (4 pax): 
    ;; ALERTA: r3 no té cap habitació compatible (massa gran)!

    ;; Reserva r4 (4 pax): 
    ;; ALERTA: r4 no té cap habitació compatible (massa gran)!

    ;; Reserva r5 (3 pax): 
    (compatible r5 h2)

    ;; Reserva r6 (3 pax): 
    (compatible r6 h2)

    ;; Reserva r7 (1 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (3 pax): 
    (compatible r9 h2)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h2)

    ;; Reserva r11 (4 pax): 
    ;; ALERTA: r11 no té cap habitació compatible (massa gran)!

    ;; Reserva r12 (1 pax): 
    (compatible r12 h1)
    (compatible r12 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d4)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r7 d3)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r10 d3)
    (dies-reserva r11 d1)
    (dies-reserva r11 d2)
    (dies-reserva r11 d3)
    (dies-reserva r12 d1)
    (dies-reserva r12 d2)
    (dies-reserva r12 d3)
    (dies-reserva r12 d4)
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
    (assignada r11)
    (assignada r12)
  ))
)
