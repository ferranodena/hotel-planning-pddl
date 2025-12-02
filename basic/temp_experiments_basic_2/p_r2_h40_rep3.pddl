(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 3 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 4 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h15)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h37)

    ;; Calendari de reserves
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
