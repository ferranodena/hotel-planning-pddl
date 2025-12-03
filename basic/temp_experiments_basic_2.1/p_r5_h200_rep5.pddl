(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 2 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 4 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 4 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 4 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 3 persones
    ;; h104: 2 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 3 persones
    ;; h115: 1 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 4 persones
    ;; h131: 3 persones
    ;; h132: 2 persones
    ;; h133: 1 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 4 persones
    ;; h148: 1 persones
    ;; h149: 3 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 1 persones
    ;; h155: 4 persones
    ;; h156: 4 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 3 persones
    ;; h160: 3 persones
    ;; h161: 1 persones
    ;; h162: 2 persones
    ;; h163: 4 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 1 persones
    ;; h167: 4 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 2 persones
    ;; h176: 1 persones
    ;; h177: 4 persones
    ;; h178: 3 persones
    ;; h179: 1 persones
    ;; h180: 1 persones
    ;; h181: 3 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 4 persones
    ;; h190: 1 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 2 persones
    ;; h194: 3 persones
    ;; h195: 4 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 3 persones
    ;; h199: 1 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h4)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h37)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h66)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h103)
    (compatible r1 h105)
    (compatible r1 h108)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h126)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h192)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h200)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h4)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h66)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h126)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h200)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h98)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h101)
    (compatible r3 h102)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h111)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h121)
    (compatible r3 h122)
    (compatible r3 h123)
    (compatible r3 h124)
    (compatible r3 h125)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h128)
    (compatible r3 h129)
    (compatible r3 h130)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h135)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h154)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h165)
    (compatible r3 h166)
    (compatible r3 h167)
    (compatible r3 h168)
    (compatible r3 h169)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h172)
    (compatible r3 h173)
    (compatible r3 h174)
    (compatible r3 h175)
    (compatible r3 h176)
    (compatible r3 h177)
    (compatible r3 h178)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h185)
    (compatible r3 h186)
    (compatible r3 h187)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h195)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h198)
    (compatible r3 h199)
    (compatible r3 h200)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h4)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h37)
    (compatible r4 h40)
    (compatible r4 h44)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h49)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h66)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h76)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h103)
    (compatible r4 h105)
    (compatible r4 h108)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h126)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h139)
    (compatible r4 h141)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h149)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h167)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h171)
    (compatible r4 h173)
    (compatible r4 h174)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h181)
    (compatible r4 h182)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h185)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h188)
    (compatible r4 h189)
    (compatible r4 h192)
    (compatible r4 h194)
    (compatible r4 h195)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h198)
    (compatible r4 h200)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h1)
    (compatible r5 h4)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h66)
    (compatible r5 h70)
    (compatible r5 h76)
    (compatible r5 h90)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h99)
    (compatible r5 h105)
    (compatible r5 h113)
    (compatible r5 h117)
    (compatible r5 h130)
    (compatible r5 h147)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h163)
    (compatible r5 h167)
    (compatible r5 h171)
    (compatible r5 h173)
    (compatible r5 h177)
    (compatible r5 h183)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h189)
    (compatible r5 h195)
    (compatible r5 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
