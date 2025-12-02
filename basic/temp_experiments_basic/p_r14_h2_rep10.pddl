(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h2)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)

    ;; Reserva r6 (4 pax): 
    ;; ALERTA: r6 no té cap habitació compatible (massa gran)!

    ;; Reserva r7 (1 pax): 
    (compatible r7 h1)
    (compatible r7 h2)

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (1 pax): 
    (compatible r9 h1)
    (compatible r9 h2)

    ;; Reserva r10 (2 pax): 
    (compatible r10 h2)

    ;; Reserva r11 (1 pax): 
    (compatible r11 h1)
    (compatible r11 h2)

    ;; Reserva r12 (2 pax): 
    (compatible r12 h2)

    ;; Reserva r13 (4 pax): 
    ;; ALERTA: r13 no té cap habitació compatible (massa gran)!

    ;; Reserva r14 (3 pax): 
    (compatible r14 h2)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r3 d5)
    (dies-reserva r3 d6)
    (dies-reserva r3 d7)
    (dies-reserva r3 d8)
    (dies-reserva r4 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r6 d2)
    (dies-reserva r6 d3)
    (dies-reserva r6 d4)
    (dies-reserva r6 d5)
    (dies-reserva r6 d6)
    (dies-reserva r7 d8)
    (dies-reserva r7 d9)
    (dies-reserva r7 d10)
    (dies-reserva r8 d2)
    (dies-reserva r8 d3)
    (dies-reserva r8 d4)
    (dies-reserva r8 d5)
    (dies-reserva r8 d6)
    (dies-reserva r9 d8)
    (dies-reserva r10 d2)
    (dies-reserva r10 d3)
    (dies-reserva r10 d4)
    (dies-reserva r10 d5)
    (dies-reserva r10 d6)
    (dies-reserva r11 d6)
    (dies-reserva r11 d7)
    (dies-reserva r11 d8)
    (dies-reserva r11 d9)
    (dies-reserva r11 d10)
    (dies-reserva r12 d4)
    (dies-reserva r12 d5)
    (dies-reserva r12 d6)
    (dies-reserva r12 d7)
    (dies-reserva r12 d8)
    (dies-reserva r13 d1)
    (dies-reserva r13 d2)
    (dies-reserva r13 d3)
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
