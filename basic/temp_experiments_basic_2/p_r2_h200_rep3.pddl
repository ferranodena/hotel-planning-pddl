(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 1 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 4 persones
    ;; h88: 2 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 4 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 3 persones
    ;; h107: 3 persones
    ;; h108: 1 persones
    ;; h109: 1 persones
    ;; h110: 3 persones
    ;; h111: 1 persones
    ;; h112: 1 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 4 persones
    ;; h124: 1 persones
    ;; h125: 3 persones
    ;; h126: 1 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 3 persones
    ;; h130: 2 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 2 persones
    ;; h137: 4 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 3 persones
    ;; h145: 1 persones
    ;; h146: 2 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 4 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 1 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 4 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 1 persones
    ;; h162: 4 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 4 persones
    ;; h166: 4 persones
    ;; h167: 4 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 1 persones
    ;; h176: 4 persones
    ;; h177: 2 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 3 persones
    ;; h181: 3 persones
    ;; h182: 1 persones
    ;; h183: 1 persones
    ;; h184: 1 persones
    ;; h185: 2 persones
    ;; h186: 2 persones
    ;; h187: 3 persones
    ;; h188: 4 persones
    ;; h189: 2 persones
    ;; h190: 4 persones
    ;; h191: 3 persones
    ;; h192: 1 persones
    ;; h193: 2 persones
    ;; h194: 3 persones
    ;; h195: 1 persones
    ;; h196: 2 persones
    ;; h197: 2 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h7)
    (compatible r1 h13)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h58)
    (compatible r1 h63)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h74)
    (compatible r1 h87)
    (compatible r1 h95)
    (compatible r1 h98)
    (compatible r1 h102)
    (compatible r1 h115)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h151)
    (compatible r1 h158)
    (compatible r1 h162)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h171)
    (compatible r1 h173)
    (compatible r1 h176)
    (compatible r1 h178)
    (compatible r1 h188)
    (compatible r1 h190)
    (compatible r1 h199)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h63)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h115)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h125)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h158)
    (compatible r2 h162)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h194)
    (compatible r2 h198)
    (compatible r2 h199)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
