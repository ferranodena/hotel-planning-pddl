(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 1 persones
    ;; h41: 2 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 2 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 1 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 2 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 4 persones
    ;; h85: 2 persones
    ;; h86: 3 persones
    ;; h87: 2 persones
    ;; h88: 2 persones
    ;; h89: 1 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 4 persones
    ;; h98: 3 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 1 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 1 persones
    ;; h110: 4 persones
    ;; h111: 3 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 1 persones
    ;; h116: 3 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 2 persones
    ;; h134: 2 persones
    ;; h135: 4 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 2 persones
    ;; h140: 2 persones
    ;; h141: 3 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 1 persones
    ;; h146: 1 persones
    ;; h147: 4 persones
    ;; h148: 1 persones
    ;; h149: 4 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 2 persones
    ;; h153: 3 persones
    ;; h154: 1 persones
    ;; h155: 4 persones
    ;; h156: 2 persones
    ;; h157: 1 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 1 persones
    ;; h165: 1 persones
    ;; h166: 2 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 1 persones
    ;; h171: 4 persones
    ;; h172: 4 persones
    ;; h173: 1 persones
    ;; h174: 3 persones
    ;; h175: 2 persones
    ;; h176: 1 persones
    ;; h177: 4 persones
    ;; h178: 2 persones
    ;; h179: 3 persones
    ;; h180: 1 persones
    ;; h181: 3 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 4 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 1 persones
    ;; h190: 1 persones
    ;; h191: 3 persones
    ;; h192: 4 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 4 persones
    ;; h198: 4 persones
    ;; h199: 3 persones
    ;; h200: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h105)
    (compatible r1 h107)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h116)
    (compatible r1 h118)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h161)
    (compatible r1 h163)
    (compatible r1 h166)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h13)
    (compatible r2 h19)
    (compatible r2 h27)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h45)
    (compatible r2 h49)
    (compatible r2 h54)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h71)
    (compatible r2 h84)
    (compatible r2 h90)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h113)
    (compatible r2 h130)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h147)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h155)
    (compatible r2 h159)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h177)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h197)
    (compatible r2 h198)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
