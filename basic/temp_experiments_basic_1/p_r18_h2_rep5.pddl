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
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)

    ;; Reserva r3 (4 pax): 
    ;; ALERTA: r3 no té cap habitació compatible (massa gran)!

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (2 pax): 
    (compatible r6 h1)

    ;; Reserva r7 (1 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (2 pax): 
    (compatible r9 h1)

    ;; Reserva r10 (3 pax): 
    (compatible r10 h1)

    ;; Reserva r11 (1 pax): 
    (compatible r11 h1)
    (compatible r11 h2)

    ;; Reserva r12 (4 pax): 
    ;; ALERTA: r12 no té cap habitació compatible (massa gran)!

    ;; Reserva r13 (1 pax): 
    (compatible r13 h1)
    (compatible r13 h2)

    ;; Reserva r14 (2 pax): 
    (compatible r14 h1)

    ;; Reserva r15 (4 pax): 
    ;; ALERTA: r15 no té cap habitació compatible (massa gran)!

    ;; Reserva r16 (3 pax): 
    (compatible r16 h1)

    ;; Reserva r17 (1 pax): 
    (compatible r17 h1)
    (compatible r17 h2)

    ;; Reserva r18 (2 pax): 
    (compatible r18 h1)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
    (dies-reserva r6 d1)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r7 d1)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r8 d1)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r9 d1)
    (dies-reserva r9 d2)
    (dies-reserva r9 d3)
    (dies-reserva r9 d4)
    (dies-reserva r9 d5)
    (dies-reserva r10 d3)
    (dies-reserva r10 d4)
    (dies-reserva r10 d5)
    (dies-reserva r11 d1)
    (dies-reserva r11 d2)
    (dies-reserva r11 d3)
    (dies-reserva r11 d4)
    (dies-reserva r12 d5)
    (dies-reserva r13 d3)
    (dies-reserva r14 d1)
    (dies-reserva r14 d2)
    (dies-reserva r14 d3)
    (dies-reserva r14 d4)
    (dies-reserva r15 d1)
    (dies-reserva r16 d1)
    (dies-reserva r17 d2)
    (dies-reserva r17 d3)
    (dies-reserva r17 d4)
    (dies-reserva r17 d5)
    (dies-reserva r18 d2)
    (dies-reserva r18 d3)
    (dies-reserva r18 d4)
    (dies-reserva r18 d5)
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
