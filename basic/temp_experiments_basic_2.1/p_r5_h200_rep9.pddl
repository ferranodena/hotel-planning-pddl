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
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 4 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 3 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 2 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 4 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 1 persones
    ;; h112: 1 persones
    ;; h113: 3 persones
    ;; h114: 4 persones
    ;; h115: 1 persones
    ;; h116: 2 persones
    ;; h117: 2 persones
    ;; h118: 4 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 1 persones
    ;; h122: 1 persones
    ;; h123: 3 persones
    ;; h124: 4 persones
    ;; h125: 4 persones
    ;; h126: 2 persones
    ;; h127: 1 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 1 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 3 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 4 persones
    ;; h150: 2 persones
    ;; h151: 3 persones
    ;; h152: 4 persones
    ;; h153: 4 persones
    ;; h154: 3 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 2 persones
    ;; h160: 4 persones
    ;; h161: 3 persones
    ;; h162: 4 persones
    ;; h163: 2 persones
    ;; h164: 3 persones
    ;; h165: 3 persones
    ;; h166: 2 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 3 persones
    ;; h170: 3 persones
    ;; h171: 2 persones
    ;; h172: 1 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 1 persones
    ;; h179: 3 persones
    ;; h180: 3 persones
    ;; h181: 2 persones
    ;; h182: 3 persones
    ;; h183: 3 persones
    ;; h184: 1 persones
    ;; h185: 3 persones
    ;; h186: 3 persones
    ;; h187: 4 persones
    ;; h188: 4 persones
    ;; h189: 2 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 4 persones
    ;; h195: 2 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 2 persones
    ;; h199: 3 persones
    ;; h200: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h55)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h89)
    (compatible r1 h98)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h114)
    (compatible r1 h118)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h130)
    (compatible r1 h136)
    (compatible r1 h146)
    (compatible r1 h149)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h160)
    (compatible r1 h162)
    (compatible r1 h168)
    (compatible r1 h174)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h190)
    (compatible r1 h194)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
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
    (compatible r2 h75)
    (compatible r2 h76)
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
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
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
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h198)
    (compatible r2 h199)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h14)
    (compatible r3 h16)
    (compatible r3 h25)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h33)
    (compatible r3 h35)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h55)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h80)
    (compatible r3 h82)
    (compatible r3 h89)
    (compatible r3 h98)
    (compatible r3 h102)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h114)
    (compatible r3 h118)
    (compatible r3 h124)
    (compatible r3 h125)
    (compatible r3 h130)
    (compatible r3 h136)
    (compatible r3 h146)
    (compatible r3 h149)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h160)
    (compatible r3 h162)
    (compatible r3 h168)
    (compatible r3 h174)
    (compatible r3 h187)
    (compatible r3 h188)
    (compatible r3 h190)
    (compatible r3 h194)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h10)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h23)
    (compatible r4 h25)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h35)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h51)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h59)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h82)
    (compatible r4 h85)
    (compatible r4 h89)
    (compatible r4 h96)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h102)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h109)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h118)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h130)
    (compatible r4 h133)
    (compatible r4 h136)
    (compatible r4 h139)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h149)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h153)
    (compatible r4 h154)
    (compatible r4 h158)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h164)
    (compatible r4 h165)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h174)
    (compatible r4 h176)
    (compatible r4 h179)
    (compatible r4 h180)
    (compatible r4 h182)
    (compatible r4 h183)
    (compatible r4 h185)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h188)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h199)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h19)
    (compatible r5 h23)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h91)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h118)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
    (compatible r5 h154)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h159)
    (compatible r5 h160)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h175)
    (compatible r5 h176)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h188)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h198)
    (compatible r5 h199)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
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
