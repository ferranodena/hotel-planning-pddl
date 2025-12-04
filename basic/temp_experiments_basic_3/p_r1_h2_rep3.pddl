(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 - reserva
    h1 h2 - habitacio
    d1 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    ;; ALERTA: r1 no té cap habitació compatible (massa gran)!

    ;; Calendari de reserves
    (dies-reserva r1 d1)
  )

  (:goal (and
    (assignada r1)
  ))
)
