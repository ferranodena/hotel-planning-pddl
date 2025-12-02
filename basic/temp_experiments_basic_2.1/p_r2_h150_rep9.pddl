(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 3 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 2 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 3 persones
    ;; h83: 3 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 2 persones
    ;; h89: 2 persones
    ;; h90: 2 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 4 persones
    ;; h95: 3 persones
    ;; h96: 1 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 2 persones
    ;; h101: 3 persones
    ;; h102: 3 persones
    ;; h103: 2 persones
    ;; h104: 2 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 3 persones
    ;; h112: 3 persones
    ;; h113: 3 persones
    ;; h114: 3 persones
    ;; h115: 1 persones
    ;; h116: 3 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 3 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 3 persones
    ;; h123: 2 persones
    ;; h124: 2 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 1 persones
    ;; h132: 3 persones
    ;; h133: 3 persones
    ;; h134: 1 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 4 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 4 persones
    ;; h145: 2 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 1 persones
    ;; h150: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h14)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h74)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h107)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h116)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h138)
    (compatible r1 h144)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h9)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h20)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h116)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h130)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h138)
    (compatible r2 h144)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
