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
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 2 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 2 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 1 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 3 persones
    ;; h78: 1 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 2 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 4 persones
    ;; h109: 2 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 2 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 1 persones
    ;; h121: 4 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 4 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 3 persones
    ;; h133: 2 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 4 persones
    ;; h138: 1 persones
    ;; h139: 3 persones
    ;; h140: 3 persones
    ;; h141: 3 persones
    ;; h142: 4 persones
    ;; h143: 1 persones
    ;; h144: 3 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 1 persones
    ;; h150: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h59)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h70)
    (compatible r1 h77)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h84)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h106)
    (compatible r1 h108)
    (compatible r1 h112)
    (compatible r1 h115)
    (compatible r1 h118)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h127)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h144)
    (compatible r1 h145)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h13)
    (compatible r2 h17)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h44)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h59)
    (compatible r2 h70)
    (compatible r2 h84)
    (compatible r2 h91)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h108)
    (compatible r2 h121)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h134)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h142)
    (compatible r2 h145)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
