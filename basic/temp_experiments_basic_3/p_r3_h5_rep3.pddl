(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 - reserva
    h1 h2 h3 h4 h5 - habitacio
    d1 d2 d3 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 3 persones
    ;; h5: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)

    ;; Reserva r2 (4 pax): 
    ;; ALERTA: r2 no té cap habitació compatible (massa gran)!

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h3)
    (compatible r3 h4)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
  ))
)
