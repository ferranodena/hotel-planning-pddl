(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 3 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 2 persones
    ;; h63: 3 persones
    ;; h64: 4 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 4 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 1 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 3 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 4 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 4 persones
    ;; h105: 3 persones
    ;; h106: 3 persones
    ;; h107: 3 persones
    ;; h108: 4 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 3 persones
    ;; h114: 3 persones
    ;; h115: 4 persones
    ;; h116: 4 persones
    ;; h117: 2 persones
    ;; h118: 2 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 1 persones
    ;; h122: 2 persones
    ;; h123: 3 persones
    ;; h124: 1 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 2 persones
    ;; h129: 4 persones
    ;; h130: 2 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 4 persones
    ;; h147: 4 persones
    ;; h148: 4 persones
    ;; h149: 4 persones
    ;; h150: 4 persones
    ;; h151: 3 persones
    ;; h152: 1 persones
    ;; h153: 2 persones
    ;; h154: 4 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 3 persones
    ;; h161: 4 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 1 persones
    ;; h165: 4 persones
    ;; h166: 4 persones
    ;; h167: 4 persones
    ;; h168: 3 persones
    ;; h169: 2 persones
    ;; h170: 4 persones
    ;; h171: 2 persones
    ;; h172: 1 persones
    ;; h173: 3 persones
    ;; h174: 2 persones
    ;; h175: 1 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 4 persones
    ;; h179: 4 persones
    ;; h180: 3 persones
    ;; h181: 3 persones
    ;; h182: 4 persones
    ;; h183: 1 persones
    ;; h184: 4 persones
    ;; h185: 1 persones
    ;; h186: 4 persones
    ;; h187: 3 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 4 persones
    ;; h191: 3 persones
    ;; h192: 2 persones
    ;; h193: 4 persones
    ;; h194: 3 persones
    ;; h195: 2 persones
    ;; h196: 1 persones
    ;; h197: 1 persones
    ;; h198: 2 persones
    ;; h199: 4 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h6)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h33)
    (compatible r1 h43)
    (compatible r1 h50)
    (compatible r1 h55)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h68)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h82)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h108)
    (compatible r1 h112)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h129)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h161)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h170)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h182)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h190)
    (compatible r1 h193)
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

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h43)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h61)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h66)
    (compatible r3 h68)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h82)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h91)
    (compatible r3 h95)
    (compatible r3 h96)
    (compatible r3 h99)
    (compatible r3 h101)
    (compatible r3 h102)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h120)
    (compatible r3 h123)
    (compatible r3 h125)
    (compatible r3 h126)
    (compatible r3 h129)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h134)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h154)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h165)
    (compatible r3 h166)
    (compatible r3 h167)
    (compatible r3 h168)
    (compatible r3 h170)
    (compatible r3 h173)
    (compatible r3 h176)
    (compatible r3 h178)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h184)
    (compatible r3 h186)
    (compatible r3 h187)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h199)
    (compatible r3 h200)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h61)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h66)
    (compatible r4 h68)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h82)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h91)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h99)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h120)
    (compatible r4 h123)
    (compatible r4 h125)
    (compatible r4 h126)
    (compatible r4 h129)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h134)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h154)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h165)
    (compatible r4 h166)
    (compatible r4 h167)
    (compatible r4 h168)
    (compatible r4 h170)
    (compatible r4 h173)
    (compatible r4 h176)
    (compatible r4 h178)
    (compatible r4 h179)
    (compatible r4 h180)
    (compatible r4 h181)
    (compatible r4 h182)
    (compatible r4 h184)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h190)
    (compatible r4 h191)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h199)
    (compatible r4 h200)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h6)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h33)
    (compatible r5 h43)
    (compatible r5 h50)
    (compatible r5 h55)
    (compatible r5 h61)
    (compatible r5 h64)
    (compatible r5 h66)
    (compatible r5 h68)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h76)
    (compatible r5 h82)
    (compatible r5 h84)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h108)
    (compatible r5 h112)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h129)
    (compatible r5 h132)
    (compatible r5 h134)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h154)
    (compatible r5 h156)
    (compatible r5 h161)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h167)
    (compatible r5 h170)
    (compatible r5 h178)
    (compatible r5 h179)
    (compatible r5 h182)
    (compatible r5 h184)
    (compatible r5 h186)
    (compatible r5 h190)
    (compatible r5 h193)
    (compatible r5 h199)
    (compatible r5 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
