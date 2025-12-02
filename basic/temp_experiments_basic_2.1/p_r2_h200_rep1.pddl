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
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 1 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 1 persones
    ;; h73: 2 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 2 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 3 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 4 persones
    ;; h99: 1 persones
    ;; h100: 4 persones
    ;; h101: 4 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 2 persones
    ;; h107: 1 persones
    ;; h108: 1 persones
    ;; h109: 4 persones
    ;; h110: 2 persones
    ;; h111: 4 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 4 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 4 persones
    ;; h131: 4 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 1 persones
    ;; h137: 3 persones
    ;; h138: 3 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 4 persones
    ;; h142: 1 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 4 persones
    ;; h148: 1 persones
    ;; h149: 4 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 4 persones
    ;; h153: 2 persones
    ;; h154: 2 persones
    ;; h155: 1 persones
    ;; h156: 1 persones
    ;; h157: 4 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 4 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 2 persones
    ;; h168: 3 persones
    ;; h169: 2 persones
    ;; h170: 4 persones
    ;; h171: 1 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 1 persones
    ;; h179: 3 persones
    ;; h180: 2 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 1 persones
    ;; h184: 2 persones
    ;; h185: 4 persones
    ;; h186: 3 persones
    ;; h187: 2 persones
    ;; h188: 2 persones
    ;; h189: 2 persones
    ;; h190: 2 persones
    ;; h191: 4 persones
    ;; h192: 2 persones
    ;; h193: 1 persones
    ;; h194: 3 persones
    ;; h195: 3 persones
    ;; h196: 1 persones
    ;; h197: 2 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
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
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
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
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
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
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
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
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
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

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h147)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h168)
    (compatible r2 h170)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h179)
    (compatible r2 h182)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h191)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
