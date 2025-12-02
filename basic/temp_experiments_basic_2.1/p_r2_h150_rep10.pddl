(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 4 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 3 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 3 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 1 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 4 persones
    ;; h79: 4 persones
    ;; h80: 1 persones
    ;; h81: 4 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 2 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 2 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 2 persones
    ;; h93: 4 persones
    ;; h94: 3 persones
    ;; h95: 4 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 2 persones
    ;; h104: 4 persones
    ;; h105: 2 persones
    ;; h106: 2 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 3 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 3 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 2 persones
    ;; h124: 1 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 4 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 2 persones
    ;; h140: 3 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h4)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h23)
    (compatible r1 h27)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h64)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h90)
    (compatible r1 h93)
    (compatible r1 h95)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h112)
    (compatible r1 h117)
    (compatible r1 h131)
    (compatible r1 h136)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h4)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h23)
    (compatible r2 h27)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h64)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h90)
    (compatible r2 h93)
    (compatible r2 h95)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h112)
    (compatible r2 h117)
    (compatible r2 h131)
    (compatible r2 h136)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
