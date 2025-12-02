(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)

    ;; Reserva r2 (4 pax): 
    ;; ALERTA: r2 no té cap habitació compatible (massa gran)!

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)

    ;; Reserva r6 (3 pax): 
    (compatible r6 h1)

    ;; Reserva r7 (1 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (2 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (2 pax): 
    (compatible r9 h1)
    (compatible r9 h2)

    ;; Reserva r10 (4 pax): 
    ;; ALERTA: r10 no té cap habitació compatible (massa gran)!

    ;; Reserva r11 (2 pax): 
    (compatible r11 h1)
    (compatible r11 h2)

    ;; Reserva r12 (1 pax): 
    (compatible r12 h1)
    (compatible r12 h2)

    ;; Reserva r13 (1 pax): 
    (compatible r13 h1)
    (compatible r13 h2)

    ;; Reserva r14 (2 pax): 
    (compatible r14 h1)
    (compatible r14 h2)

    ;; Reserva r15 (4 pax): 
    ;; ALERTA: r15 no té cap habitació compatible (massa gran)!

    ;; Reserva r16 (1 pax): 
    (compatible r16 h1)
    (compatible r16 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r4 d6)
    (dies-reserva r4 d7)
    (dies-reserva r4 d8)
    (dies-reserva r5 d6)
    (dies-reserva r5 d7)
    (dies-reserva r5 d8)
    (dies-reserva r5 d9)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r6 d6)
    (dies-reserva r7 d2)
    (dies-reserva r7 d3)
    (dies-reserva r7 d4)
    (dies-reserva r7 d5)
    (dies-reserva r7 d6)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r8 d7)
    (dies-reserva r8 d8)
    (dies-reserva r9 d8)
    (dies-reserva r10 d6)
    (dies-reserva r11 d5)
    (dies-reserva r12 d3)
    (dies-reserva r12 d4)
    (dies-reserva r12 d5)
    (dies-reserva r12 d6)
    (dies-reserva r12 d7)
    (dies-reserva r13 d8)
    (dies-reserva r13 d9)
    (dies-reserva r13 d10)
    (dies-reserva r14 d4)
    (dies-reserva r14 d5)
    (dies-reserva r14 d6)
    (dies-reserva r14 d7)
    (dies-reserva r14 d8)
    (dies-reserva r15 d1)
    (dies-reserva r15 d2)
    (dies-reserva r15 d3)
    (dies-reserva r15 d4)
    (dies-reserva r15 d5)
    (dies-reserva r16 d6)
    (dies-reserva r16 d7)
    (dies-reserva r16 d8)
    (dies-reserva r16 d9)
    (dies-reserva r16 d10)
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
  ))
)
