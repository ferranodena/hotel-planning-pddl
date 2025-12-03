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
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 4 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 4 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 4 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 1 persones
    ;; h102: 3 persones
    ;; h103: 3 persones
    ;; h104: 4 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 1 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 4 persones
    ;; h120: 4 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 3 persones
    ;; h124: 3 persones
    ;; h125: 2 persones
    ;; h126: 2 persones
    ;; h127: 4 persones
    ;; h128: 2 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 4 persones
    ;; h132: 3 persones
    ;; h133: 4 persones
    ;; h134: 4 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 4 persones
    ;; h144: 3 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 2 persones
    ;; h150: 1 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 2 persones
    ;; h156: 2 persones
    ;; h157: 4 persones
    ;; h158: 1 persones
    ;; h159: 1 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 2 persones
    ;; h163: 4 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 4 persones
    ;; h171: 3 persones
    ;; h172: 1 persones
    ;; h173: 2 persones
    ;; h174: 2 persones
    ;; h175: 3 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 2 persones
    ;; h180: 1 persones
    ;; h181: 4 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 4 persones
    ;; h191: 2 persones
    ;; h192: 1 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 2 persones
    ;; h196: 1 persones
    ;; h197: 2 persones
    ;; h198: 4 persones
    ;; h199: 1 persones
    ;; h200: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h87)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h106)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h116)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h127)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h157)
    (compatible r1 h161)
    (compatible r1 h163)
    (compatible r1 h167)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h190)
    (compatible r1 h198)

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

    ;; Reserva r3 (4 pax): 
    (compatible r3 h2)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h35)
    (compatible r3 h41)
    (compatible r3 h45)
    (compatible r3 h48)
    (compatible r3 h51)
    (compatible r3 h55)
    (compatible r3 h58)
    (compatible r3 h69)
    (compatible r3 h71)
    (compatible r3 h76)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h87)
    (compatible r3 h90)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h104)
    (compatible r3 h113)
    (compatible r3 h116)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h127)
    (compatible r3 h131)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h139)
    (compatible r3 h143)
    (compatible r3 h146)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h154)
    (compatible r3 h157)
    (compatible r3 h163)
    (compatible r3 h170)
    (compatible r3 h177)
    (compatible r3 h181)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h186)
    (compatible r3 h190)
    (compatible r3 h198)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h55)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h76)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h87)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h94)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h106)
    (compatible r4 h109)
    (compatible r4 h111)
    (compatible r4 h113)
    (compatible r4 h116)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h120)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h127)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h133)
    (compatible r4 h134)
    (compatible r4 h137)
    (compatible r4 h139)
    (compatible r4 h141)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h146)
    (compatible r4 h148)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h154)
    (compatible r4 h157)
    (compatible r4 h161)
    (compatible r4 h163)
    (compatible r4 h167)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h171)
    (compatible r4 h175)
    (compatible r4 h177)
    (compatible r4 h181)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h185)
    (compatible r4 h186)
    (compatible r4 h190)
    (compatible r4 h198)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h11)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h24)
    (compatible r5 h26)
    (compatible r5 h35)
    (compatible r5 h41)
    (compatible r5 h45)
    (compatible r5 h48)
    (compatible r5 h51)
    (compatible r5 h55)
    (compatible r5 h58)
    (compatible r5 h69)
    (compatible r5 h71)
    (compatible r5 h76)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h87)
    (compatible r5 h90)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h104)
    (compatible r5 h113)
    (compatible r5 h116)
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h127)
    (compatible r5 h131)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h139)
    (compatible r5 h143)
    (compatible r5 h146)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h154)
    (compatible r5 h157)
    (compatible r5 h163)
    (compatible r5 h170)
    (compatible r5 h177)
    (compatible r5 h181)
    (compatible r5 h183)
    (compatible r5 h184)
    (compatible r5 h186)
    (compatible r5 h190)
    (compatible r5 h198)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d2)
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
