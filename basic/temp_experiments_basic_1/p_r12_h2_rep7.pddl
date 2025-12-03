(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (4 pax): 
    ;; ALERTA: r6 no té cap habitació compatible (massa gran)!

    ;; Reserva r7 (2 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (4 pax): 
    ;; ALERTA: r8 no té cap habitació compatible (massa gran)!

    ;; Reserva r9 (4 pax): 
    ;; ALERTA: r9 no té cap habitació compatible (massa gran)!

    ;; Reserva r10 (4 pax): 
    ;; ALERTA: r10 no té cap habitació compatible (massa gran)!

    ;; Reserva r11 (1 pax): 
    (compatible r11 h1)
    (compatible r11 h2)

    ;; Reserva r12 (3 pax): 
    (compatible r12 h1)
    (compatible r12 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r7 d1)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r10 d1)
    (dies-reserva r10 d2)
    (dies-reserva r10 d3)
    (dies-reserva r10 d4)
    (dies-reserva r10 d5)
    (dies-reserva r11 d1)
    (dies-reserva r11 d2)
    (dies-reserva r11 d3)
    (dies-reserva r11 d4)
    (dies-reserva r11 d5)
    (dies-reserva r12 d3)
    (dies-reserva r12 d4)
    (dies-reserva r12 d5)
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
