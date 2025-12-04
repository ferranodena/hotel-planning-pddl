(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 - reserva
    h1 - habitacio
    d1 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
  )

  (:goal (and
    (assignada r1)
  ))
)
