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
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 2 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 2 persones
    ;; h45: 3 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 2 persones
    ;; h53: 1 persones
    ;; h54: 2 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 3 persones
    ;; h94: 1 persones
    ;; h95: 4 persones
    ;; h96: 4 persones
    ;; h97: 2 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 2 persones
    ;; h101: 3 persones
    ;; h102: 1 persones
    ;; h103: 1 persones
    ;; h104: 4 persones
    ;; h105: 4 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 1 persones
    ;; h113: 3 persones
    ;; h114: 2 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 4 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 1 persones
    ;; h124: 2 persones
    ;; h125: 4 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 2 persones
    ;; h129: 3 persones
    ;; h130: 3 persones
    ;; h131: 2 persones
    ;; h132: 3 persones
    ;; h133: 3 persones
    ;; h134: 1 persones
    ;; h135: 4 persones
    ;; h136: 4 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 1 persones
    ;; h152: 2 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 2 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 3 persones
    ;; h159: 1 persones
    ;; h160: 1 persones
    ;; h161: 1 persones
    ;; h162: 4 persones
    ;; h163: 4 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 1 persones
    ;; h167: 1 persones
    ;; h168: 3 persones
    ;; h169: 1 persones
    ;; h170: 1 persones
    ;; h171: 2 persones
    ;; h172: 3 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 2 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 4 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 3 persones
    ;; h185: 1 persones
    ;; h186: 1 persones
    ;; h187: 3 persones
    ;; h188: 4 persones
    ;; h189: 4 persones
    ;; h190: 2 persones
    ;; h191: 3 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 4 persones
    ;; h195: 3 persones
    ;; h196: 1 persones
    ;; h197: 4 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h168)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h197)
    (compatible r1 h199)
    (compatible r1 h200)

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
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
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
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
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
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
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
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
