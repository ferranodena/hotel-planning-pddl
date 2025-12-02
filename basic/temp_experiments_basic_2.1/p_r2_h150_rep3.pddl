(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 1 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 3 persones
    ;; h87: 2 persones
    ;; h88: 3 persones
    ;; h89: 4 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 4 persones
    ;; h94: 1 persones
    ;; h95: 4 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 3 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 1 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 2 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 4 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 3 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 2 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 3 persones
    ;; h137: 4 persones
    ;; h138: 1 persones
    ;; h139: 3 persones
    ;; h140: 3 persones
    ;; h141: 3 persones
    ;; h142: 1 persones
    ;; h143: 2 persones
    ;; h144: 3 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 1 persones
    ;; h148: 4 persones
    ;; h149: 1 persones
    ;; h150: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h82)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h93)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h104)
    (compatible r1 h106)
    (compatible r1 h108)
    (compatible r1 h110)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h144)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h150)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h12)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h28)
    (compatible r2 h34)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h82)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h89)
    (compatible r2 h93)
    (compatible r2 h95)
    (compatible r2 h100)
    (compatible r2 h116)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h128)
    (compatible r2 h132)
    (compatible r2 h137)
    (compatible r2 h148)
    (compatible r2 h150)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
