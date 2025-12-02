(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 2 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 4 persones
    ;; h48: 2 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 2 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 3 persones
    ;; h82: 3 persones
    ;; h83: 3 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 3 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 2 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 2 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 4 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 3 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 2 persones
    ;; h137: 4 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 4 persones
    ;; h141: 3 persones
    ;; h142: 1 persones
    ;; h143: 2 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 2 persones
    ;; h154: 1 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 4 persones
    ;; h158: 4 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 2 persones
    ;; h164: 4 persones
    ;; h165: 4 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 4 persones
    ;; h169: 4 persones
    ;; h170: 2 persones
    ;; h171: 1 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 3 persones
    ;; h178: 4 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 3 persones
    ;; h184: 2 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 3 persones
    ;; h188: 2 persones
    ;; h189: 3 persones
    ;; h190: 4 persones
    ;; h191: 2 persones
    ;; h192: 2 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h100)
    (compatible r1 h105)
    (compatible r1 h108)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h117)
    (compatible r1 h120)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h150)
    (compatible r1 h152)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h200)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h5)
    (compatible r2 h11)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h50)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h67)
    (compatible r2 h73)
    (compatible r2 h76)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h113)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h137)
    (compatible r2 h140)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h150)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h186)
    (compatible r2 h190)
    (compatible r2 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
