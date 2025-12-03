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
    ;; Reserva r1 (2 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Reserva r2 (2 pax): 
    ;; ALERTA: r2 no té cap habitació compatible (massa gran)!

    ;; Reserva r3 (2 pax): 
    ;; ALERTA: r3 no té cap habitació compatible (massa gran)!

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (2 pax): 
    ;; ALERTA: r5 no té cap habitació compatible (massa gran)!

    ;; Reserva r6 (3 pax): 
    ;; ALERTA: r6 no té cap habitació compatible (massa gran)!

    ;; Reserva r7 (4 pax): 
    ;; ALERTA: r7 no té cap habitació compatible (massa gran)!

    ;; Reserva r8 (2 pax): 
    ;; ALERTA: r8 no té cap habitació compatible (massa gran)!

    ;; Reserva r9 (4 pax): 
    ;; ALERTA: r9 no té cap habitació compatible (massa gran)!

    ;; Reserva r10 (2 pax): 
    ;; ALERTA: r10 no té cap habitació compatible (massa gran)!

    ;; Reserva r11 (4 pax): 
    ;; ALERTA: r11 no té cap habitació compatible (massa gran)!

    ;; Reserva r12 (4 pax): 
    ;; ALERTA: r12 no té cap habitació compatible (massa gran)!

    ;; Reserva r13 (1 pax): 
    (compatible r13 h1)
    (compatible r13 h2)

    ;; Reserva r14 (1 pax): 
    (compatible r14 h1)
    (compatible r14 h2)

    ;; Reserva r15 (3 pax): 
    ;; ALERTA: r15 no té cap habitació compatible (massa gran)!

    ;; Reserva r16 (2 pax): 
    ;; ALERTA: r16 no té cap habitació compatible (massa gran)!

    ;; Reserva r17 (4 pax): 
    ;; ALERTA: r17 no té cap habitació compatible (massa gran)!

    ;; Reserva r18 (4 pax): 
    ;; ALERTA: r18 no té cap habitació compatible (massa gran)!

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r6 d1)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r9 d2)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r10 d2)
    (dies-reserva r10 d3)
    (dies-reserva r11 d1)
    (dies-reserva r11 d2)
    (dies-reserva r11 d3)
    (dies-reserva r12 d1)
    (dies-reserva r13 d4)
    (dies-reserva r13 d5)
    (dies-reserva r14 d1)
    (dies-reserva r14 d2)
    (dies-reserva r14 d3)
    (dies-reserva r14 d4)
    (dies-reserva r14 d5)
    (dies-reserva r15 d4)
    (dies-reserva r15 d5)
    (dies-reserva r16 d1)
    (dies-reserva r16 d2)
    (dies-reserva r16 d3)
    (dies-reserva r16 d4)
    (dies-reserva r16 d5)
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
