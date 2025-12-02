(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)

    ;; Reserva r3 (3 pax): 
    ;; ALERTA: r3 no té cap habitació compatible (massa gran)!

    ;; Reserva r4 (3 pax): 
    ;; ALERTA: r4 no té cap habitació compatible (massa gran)!

    ;; Reserva r5 (4 pax): 
    ;; ALERTA: r5 no té cap habitació compatible (massa gran)!

    ;; Reserva r6 (4 pax): 
    ;; ALERTA: r6 no té cap habitació compatible (massa gran)!

    ;; Reserva r7 (2 pax): 
    (compatible r7 h1)

    ;; Reserva r8 (2 pax): 
    (compatible r8 h1)

    ;; Reserva r9 (4 pax): 
    ;; ALERTA: r9 no té cap habitació compatible (massa gran)!

    ;; Reserva r10 (2 pax): 
    (compatible r10 h1)

    ;; Reserva r11 (3 pax): 
    ;; ALERTA: r11 no té cap habitació compatible (massa gran)!

    ;; Reserva r12 (2 pax): 
    (compatible r12 h1)

    ;; Reserva r13 (1 pax): 
    (compatible r13 h1)
    (compatible r13 h2)

    ;; Reserva r14 (1 pax): 
    (compatible r14 h1)
    (compatible r14 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d4)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r3 d8)
    (dies-reserva r3 d9)
    (dies-reserva r4 d6)
    (dies-reserva r4 d7)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r6 d7)
    (dies-reserva r6 d8)
    (dies-reserva r6 d9)
    (dies-reserva r6 d10)
    (dies-reserva r7 d7)
    (dies-reserva r7 d8)
    (dies-reserva r8 d8)
    (dies-reserva r8 d9)
    (dies-reserva r8 d10)
    (dies-reserva r9 d1)
    (dies-reserva r9 d2)
    (dies-reserva r9 d3)
    (dies-reserva r10 d8)
    (dies-reserva r10 d9)
    (dies-reserva r11 d7)
    (dies-reserva r11 d8)
    (dies-reserva r11 d9)
    (dies-reserva r11 d10)
    (dies-reserva r12 d1)
    (dies-reserva r12 d2)
    (dies-reserva r13 d7)
    (dies-reserva r13 d8)
    (dies-reserva r14 d7)
    (dies-reserva r14 d8)
    (dies-reserva r14 d9)
    (dies-reserva r14 d10)
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
    (assignada r13)
    (assignada r14)
  ))
)
