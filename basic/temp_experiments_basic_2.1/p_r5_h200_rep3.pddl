(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 2 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 4 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 4 persones
    ;; h88: 3 persones
    ;; h89: 3 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 3 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 3 persones
    ;; h101: 1 persones
    ;; h102: 3 persones
    ;; h103: 3 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 3 persones
    ;; h108: 4 persones
    ;; h109: 3 persones
    ;; h110: 3 persones
    ;; h111: 1 persones
    ;; h112: 4 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 1 persones
    ;; h116: 2 persones
    ;; h117: 4 persones
    ;; h118: 4 persones
    ;; h119: 3 persones
    ;; h120: 2 persones
    ;; h121: 3 persones
    ;; h122: 1 persones
    ;; h123: 1 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 4 persones
    ;; h127: 1 persones
    ;; h128: 3 persones
    ;; h129: 3 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 3 persones
    ;; h135: 4 persones
    ;; h136: 1 persones
    ;; h137: 3 persones
    ;; h138: 1 persones
    ;; h139: 4 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 2 persones
    ;; h153: 3 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 4 persones
    ;; h160: 3 persones
    ;; h161: 3 persones
    ;; h162: 2 persones
    ;; h163: 1 persones
    ;; h164: 1 persones
    ;; h165: 3 persones
    ;; h166: 3 persones
    ;; h167: 3 persones
    ;; h168: 4 persones
    ;; h169: 4 persones
    ;; h170: 4 persones
    ;; h171: 2 persones
    ;; h172: 3 persones
    ;; h173: 4 persones
    ;; h174: 2 persones
    ;; h175: 4 persones
    ;; h176: 1 persones
    ;; h177: 1 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 2 persones
    ;; h185: 1 persones
    ;; h186: 2 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 4 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 3 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h95)
    (compatible r1 h97)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h124)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h143)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h175)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h200)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h75)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h91)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h100)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h200)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
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
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
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
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h75)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h91)
    (compatible r3 h95)
    (compatible r3 h97)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h102)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h112)
    (compatible r3 h114)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h121)
    (compatible r3 h124)
    (compatible r3 h126)
    (compatible r3 h128)
    (compatible r3 h129)
    (compatible r3 h132)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h135)
    (compatible r3 h137)
    (compatible r3 h139)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h146)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h154)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h162)
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
    (compatible r3 h178)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h186)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h198)
    (compatible r3 h199)
    (compatible r3 h200)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h23)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h34)
    (compatible r4 h37)
    (compatible r4 h39)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h47)
    (compatible r4 h49)
    (compatible r4 h52)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h75)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h91)
    (compatible r4 h95)
    (compatible r4 h97)
    (compatible r4 h100)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h112)
    (compatible r4 h114)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h121)
    (compatible r4 h124)
    (compatible r4 h126)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h132)
    (compatible r4 h134)
    (compatible r4 h135)
    (compatible r4 h137)
    (compatible r4 h139)
    (compatible r4 h143)
    (compatible r4 h146)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h151)
    (compatible r4 h153)
    (compatible r4 h154)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h165)
    (compatible r4 h166)
    (compatible r4 h167)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h172)
    (compatible r4 h173)
    (compatible r4 h175)
    (compatible r4 h179)
    (compatible r4 h180)
    (compatible r4 h182)
    (compatible r4 h183)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h198)
    (compatible r4 h200)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
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
    (compatible r5 h19)
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
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
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
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
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
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h118)
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
    (compatible r5 h154)
    (compatible r5 h155)
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
    (compatible r5 h167)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h175)
    (compatible r5 h176)
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
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
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
