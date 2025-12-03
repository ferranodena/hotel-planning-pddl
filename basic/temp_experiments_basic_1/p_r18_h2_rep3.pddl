(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 - reserva
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

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (1 pax): 
    (compatible r6 h1)
    (compatible r6 h2)

    ;; Reserva r7 (2 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (2 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (2 pax): 
    (compatible r9 h1)
    (compatible r9 h2)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h1)
    (compatible r10 h2)

    ;; Reserva r11 (4 pax): 
    ;; ALERTA: r11 no té cap habitació compatible (massa gran)!

    ;; Reserva r12 (3 pax): 
    (compatible r12 h1)
    (compatible r12 h2)

    ;; Reserva r13 (4 pax): 
    ;; ALERTA: r13 no té cap habitació compatible (massa gran)!

    ;; Reserva r14 (4 pax): 
    ;; ALERTA: r14 no té cap habitació compatible (massa gran)!

    ;; Reserva r15 (1 pax): 
    (compatible r15 h1)
    (compatible r15 h2)

    ;; Reserva r16 (3 pax): 
    (compatible r16 h1)
    (compatible r16 h2)

    ;; Reserva r17 (2 pax): 
    (compatible r17 h1)
    (compatible r17 h2)

    ;; Reserva r18 (2 pax): 
    (compatible r18 h1)
    (compatible r18 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d2)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r7 d5)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r9 d2)
    (dies-reserva r10 d3)
    (dies-reserva r10 d4)
    (dies-reserva r11 d3)
    (dies-reserva r11 d4)
    (dies-reserva r11 d5)
    (dies-reserva r12 d1)
    (dies-reserva r12 d2)
    (dies-reserva r13 d4)
    (dies-reserva r13 d5)
    (dies-reserva r14 d1)
    (dies-reserva r15 d1)
    (dies-reserva r16 d3)
    (dies-reserva r16 d4)
    (dies-reserva r16 d5)
    (dies-reserva r17 d2)
    (dies-reserva r17 d3)
    (dies-reserva r17 d4)
    (dies-reserva r17 d5)
    (dies-reserva r18 d1)
    (dies-reserva r18 d2)
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
