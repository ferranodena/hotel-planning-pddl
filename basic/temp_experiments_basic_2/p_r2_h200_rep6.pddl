(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 4 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 3 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 4 persones
    ;; h87: 2 persones
    ;; h88: 3 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 1 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 4 persones
    ;; h100: 1 persones
    ;; h101: 1 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 1 persones
    ;; h108: 3 persones
    ;; h109: 4 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 1 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 1 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 4 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 4 persones
    ;; h127: 1 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 4 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 2 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 4 persones
    ;; h144: 2 persones
    ;; h145: 3 persones
    ;; h146: 2 persones
    ;; h147: 4 persones
    ;; h148: 2 persones
    ;; h149: 4 persones
    ;; h150: 1 persones
    ;; h151: 2 persones
    ;; h152: 2 persones
    ;; h153: 3 persones
    ;; h154: 2 persones
    ;; h155: 4 persones
    ;; h156: 1 persones
    ;; h157: 3 persones
    ;; h158: 1 persones
    ;; h159: 3 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 2 persones
    ;; h163: 1 persones
    ;; h164: 1 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 2 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 2 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 2 persones
    ;; h178: 4 persones
    ;; h179: 4 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 3 persones
    ;; h183: 3 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 1 persones
    ;; h187: 2 persones
    ;; h188: 3 persones
    ;; h189: 2 persones
    ;; h190: 1 persones
    ;; h191: 4 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 3 persones
    ;; h195: 4 persones
    ;; h196: 3 persones
    ;; h197: 4 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h11)
    (compatible r1 h16)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h24)
    (compatible r1 h30)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h55)
    (compatible r1 h59)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h109)
    (compatible r1 h112)
    (compatible r1 h121)
    (compatible r1 h123)
    (compatible r1 h126)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h143)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h155)
    (compatible r1 h175)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h191)
    (compatible r1 h195)
    (compatible r1 h197)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h11)
    (compatible r2 h16)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h24)
    (compatible r2 h30)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h55)
    (compatible r2 h59)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h109)
    (compatible r2 h112)
    (compatible r2 h121)
    (compatible r2 h123)
    (compatible r2 h126)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h143)
    (compatible r2 h147)
    (compatible r2 h149)
    (compatible r2 h155)
    (compatible r2 h175)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h191)
    (compatible r2 h195)
    (compatible r2 h197)

    ;; Calendari de reserves
    (dies-reserva r1 d9)
    (dies-reserva r2 d6)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
