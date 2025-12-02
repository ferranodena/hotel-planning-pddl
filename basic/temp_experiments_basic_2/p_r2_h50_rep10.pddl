(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 3 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 2 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 1 persones
    ;; h49: 1 persones
    ;; h50: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h8)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h28)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h44)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h28)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h44)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
