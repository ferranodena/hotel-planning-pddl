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
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 4 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 3 persones
    ;; h66: 3 persones
    ;; h67: 1 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 1 persones
    ;; h73: 3 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 2 persones
    ;; h89: 2 persones
    ;; h90: 4 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 4 persones
    ;; h95: 4 persones
    ;; h96: 1 persones
    ;; h97: 2 persones
    ;; h98: 4 persones
    ;; h99: 1 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 4 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 2 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 3 persones
    ;; h125: 4 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 4 persones
    ;; h131: 4 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 4 persones
    ;; h138: 3 persones
    ;; h139: 4 persones
    ;; h140: 2 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 4 persones
    ;; h152: 3 persones
    ;; h153: 3 persones
    ;; h154: 4 persones
    ;; h155: 2 persones
    ;; h156: 4 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 1 persones
    ;; h162: 1 persones
    ;; h163: 2 persones
    ;; h164: 4 persones
    ;; h165: 1 persones
    ;; h166: 2 persones
    ;; h167: 4 persones
    ;; h168: 4 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 3 persones
    ;; h172: 3 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 2 persones
    ;; h176: 1 persones
    ;; h177: 2 persones
    ;; h178: 4 persones
    ;; h179: 3 persones
    ;; h180: 1 persones
    ;; h181: 3 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 4 persones
    ;; h190: 2 persones
    ;; h191: 3 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 4 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 1 persones
    ;; h200: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h9)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h51)
    (compatible r1 h54)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h62)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h70)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h78)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h98)
    (compatible r1 h100)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h135)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h146)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h159)
    (compatible r1 h164)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h189)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h196)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
