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
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 4 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 1 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 1 persones
    ;; h104: 2 persones
    ;; h105: 3 persones
    ;; h106: 4 persones
    ;; h107: 4 persones
    ;; h108: 3 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 1 persones
    ;; h113: 4 persones
    ;; h114: 2 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 4 persones
    ;; h120: 1 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 1 persones
    ;; h124: 3 persones
    ;; h125: 2 persones
    ;; h126: 4 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 3 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 2 persones
    ;; h143: 2 persones
    ;; h144: 4 persones
    ;; h145: 1 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 4 persones
    ;; h151: 2 persones
    ;; h152: 2 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 2 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 1 persones
    ;; h159: 2 persones
    ;; h160: 1 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 4 persones
    ;; h166: 1 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 2 persones
    ;; h170: 1 persones
    ;; h171: 1 persones
    ;; h172: 3 persones
    ;; h173: 1 persones
    ;; h174: 4 persones
    ;; h175: 1 persones
    ;; h176: 1 persones
    ;; h177: 3 persones
    ;; h178: 2 persones
    ;; h179: 3 persones
    ;; h180: 3 persones
    ;; h181: 4 persones
    ;; h182: 4 persones
    ;; h183: 3 persones
    ;; h184: 2 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 1 persones
    ;; h190: 3 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 1 persones
    ;; h199: 4 persones
    ;; h200: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h30)
    (compatible r1 h35)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h64)
    (compatible r1 h70)
    (compatible r1 h75)
    (compatible r1 h83)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h97)
    (compatible r1 h100)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h113)
    (compatible r1 h117)
    (compatible r1 h119)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h140)
    (compatible r1 h144)
    (compatible r1 h150)
    (compatible r1 h154)
    (compatible r1 h165)
    (compatible r1 h168)
    (compatible r1 h174)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h185)
    (compatible r1 h187)
    (compatible r1 h194)
    (compatible r1 h199)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
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
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h159)
    (compatible r2 h161)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h172)
    (compatible r2 h174)
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
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h199)

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

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h100)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h122)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h126)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h134)
    (compatible r4 h135)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h154)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h159)
    (compatible r4 h161)
    (compatible r4 h164)
    (compatible r4 h165)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h172)
    (compatible r4 h174)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h179)
    (compatible r4 h180)
    (compatible r4 h181)
    (compatible r4 h182)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h185)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h188)
    (compatible r4 h190)
    (compatible r4 h191)
    (compatible r4 h192)
    (compatible r4 h194)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h199)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h118)
    (compatible r5 h119)
    (compatible r5 h122)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h154)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h159)
    (compatible r5 h161)
    (compatible r5 h164)
    (compatible r5 h165)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h172)
    (compatible r5 h174)
    (compatible r5 h177)
    (compatible r5 h178)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
    (compatible r5 h184)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h188)
    (compatible r5 h190)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h194)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h199)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
