(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Reserva r2 (2 pax): 
    ;; ALERTA: r2 no té cap habitació compatible (massa gran)!

    ;; Reserva r3 (3 pax): 
    ;; ALERTA: r3 no té cap habitació compatible (massa gran)!

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (3 pax): 
    ;; ALERTA: r5 no té cap habitació compatible (massa gran)!

    ;; Reserva r6 (1 pax): 
    (compatible r6 h1)
    (compatible r6 h2)

    ;; Reserva r7 (2 pax): 
    ;; ALERTA: r7 no té cap habitació compatible (massa gran)!

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (3 pax): 
    ;; ALERTA: r9 no té cap habitació compatible (massa gran)!

    ;; Reserva r10 (4 pax): 
    ;; ALERTA: r10 no té cap habitació compatible (massa gran)!

    ;; Reserva r11 (3 pax): 
    ;; ALERTA: r11 no té cap habitació compatible (massa gran)!

    ;; Reserva r12 (2 pax): 
    ;; ALERTA: r12 no té cap habitació compatible (massa gran)!

    ;; Reserva r13 (2 pax): 
    ;; ALERTA: r13 no té cap habitació compatible (massa gran)!

    ;; Reserva r14 (2 pax): 
    ;; ALERTA: r14 no té cap habitació compatible (massa gran)!

    ;; Reserva r15 (1 pax): 
    (compatible r15 h1)
    (compatible r15 h2)

    ;; Reserva r16 (4 pax): 
    ;; ALERTA: r16 no té cap habitació compatible (massa gran)!

    ;; Reserva r17 (4 pax): 
    ;; ALERTA: r17 no té cap habitació compatible (massa gran)!

    ;; Reserva r18 (1 pax): 
    (compatible r18 h1)
    (compatible r18 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d1)
    (dies-reserva r6 d2)
    (dies-reserva r7 d2)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r9 d1)
    (dies-reserva r10 d1)
    (dies-reserva r10 d2)
    (dies-reserva r10 d3)
    (dies-reserva r10 d4)
    (dies-reserva r11 d4)
    (dies-reserva r12 d3)
    (dies-reserva r12 d4)
    (dies-reserva r13 d4)
    (dies-reserva r13 d5)
    (dies-reserva r14 d1)
    (dies-reserva r14 d2)
    (dies-reserva r14 d3)
    (dies-reserva r14 d4)
    (dies-reserva r15 d2)
    (dies-reserva r16 d2)
    (dies-reserva r16 d3)
    (dies-reserva r16 d4)
    (dies-reserva r17 d1)
    (dies-reserva r17 d2)
    (dies-reserva r17 d3)
    (dies-reserva r17 d4)
    (dies-reserva r17 d5)
    (dies-reserva r18 d1)
    (dies-reserva r18 d2)
    (dies-reserva r18 d3)
    (dies-reserva r18 d4)
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
    (assignada r15)
    (assignada r16)
    (assignada r17)
    (assignada r18)
  ))
)
