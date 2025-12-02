(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 - reserva
    h1 h2 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)

    ;; Reserva r6 (3 pax): 
    (compatible r6 h1)

    ;; Reserva r7 (4 pax): 
    ;; ALERTA: r7 no té cap habitació compatible (massa gran)!

    ;; Reserva r8 (1 pax): 
    (compatible r8 h1)
    (compatible r8 h2)

    ;; Reserva r9 (4 pax): 
    ;; ALERTA: r9 no té cap habitació compatible (massa gran)!

    ;; Reserva r10 (2 pax): 
    (compatible r10 h1)

    ;; Reserva r11 (1 pax): 
    (compatible r11 h1)
    (compatible r11 h2)

    ;; Reserva r12 (2 pax): 
    (compatible r12 h1)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r4 d6)
    (dies-reserva r5 d7)
    (dies-reserva r6 d5)
    (dies-reserva r6 d6)
    (dies-reserva r6 d7)
    (dies-reserva r6 d8)
    (dies-reserva r7 d6)
    (dies-reserva r7 d7)
    (dies-reserva r7 d8)
    (dies-reserva r7 d9)
    (dies-reserva r7 d10)
    (dies-reserva r8 d6)
    (dies-reserva r8 d7)
    (dies-reserva r8 d8)
    (dies-reserva r8 d9)
    (dies-reserva r8 d10)
    (dies-reserva r9 d6)
    (dies-reserva r10 d5)
    (dies-reserva r10 d6)
    (dies-reserva r10 d7)
    (dies-reserva r10 d8)
    (dies-reserva r10 d9)
    (dies-reserva r11 d6)
    (dies-reserva r11 d7)
    (dies-reserva r11 d8)
    (dies-reserva r11 d9)
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
