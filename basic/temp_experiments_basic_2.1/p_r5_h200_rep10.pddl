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
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 4 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 2 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 2 persones
    ;; h80: 1 persones
    ;; h81: 3 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 4 persones
    ;; h87: 2 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 4 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 2 persones
    ;; h109: 4 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 4 persones
    ;; h115: 1 persones
    ;; h116: 2 persones
    ;; h117: 2 persones
    ;; h118: 1 persones
    ;; h119: 1 persones
    ;; h120: 4 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 2 persones
    ;; h124: 2 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 3 persones
    ;; h129: 3 persones
    ;; h130: 3 persones
    ;; h131: 4 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 3 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 4 persones
    ;; h149: 2 persones
    ;; h150: 1 persones
    ;; h151: 2 persones
    ;; h152: 2 persones
    ;; h153: 2 persones
    ;; h154: 3 persones
    ;; h155: 3 persones
    ;; h156: 3 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 3 persones
    ;; h161: 3 persones
    ;; h162: 4 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 2 persones
    ;; h168: 4 persones
    ;; h169: 4 persones
    ;; h170: 3 persones
    ;; h171: 2 persones
    ;; h172: 3 persones
    ;; h173: 1 persones
    ;; h174: 4 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 2 persones
    ;; h178: 3 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 3 persones
    ;; h182: 2 persones
    ;; h183: 3 persones
    ;; h184: 4 persones
    ;; h185: 3 persones
    ;; h186: 2 persones
    ;; h187: 2 persones
    ;; h188: 2 persones
    ;; h189: 3 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 1 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 4 persones
    ;; h196: 1 persones
    ;; h197: 4 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h17)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h58)
    (compatible r1 h62)
    (compatible r1 h66)
    (compatible r1 h72)
    (compatible r1 h78)
    (compatible r1 h82)
    (compatible r1 h86)
    (compatible r1 h101)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h125)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h157)
    (compatible r1 h159)
    (compatible r1 h162)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h184)
    (compatible r1 h190)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h197)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
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
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
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
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
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
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h17)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h33)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h58)
    (compatible r3 h62)
    (compatible r3 h66)
    (compatible r3 h72)
    (compatible r3 h78)
    (compatible r3 h82)
    (compatible r3 h86)
    (compatible r3 h101)
    (compatible r3 h107)
    (compatible r3 h109)
    (compatible r3 h111)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h120)
    (compatible r3 h122)
    (compatible r3 h125)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h134)
    (compatible r3 h146)
    (compatible r3 h148)
    (compatible r3 h157)
    (compatible r3 h159)
    (compatible r3 h162)
    (compatible r3 h168)
    (compatible r3 h169)
    (compatible r3 h174)
    (compatible r3 h175)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h184)
    (compatible r3 h190)
    (compatible r3 h194)
    (compatible r3 h195)
    (compatible r3 h197)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h92)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h111)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h120)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h134)
    (compatible r4 h135)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h153)
    (compatible r4 h154)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h164)
    (compatible r4 h165)
    (compatible r4 h166)
    (compatible r4 h167)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h171)
    (compatible r4 h172)
    (compatible r4 h174)
    (compatible r4 h175)
    (compatible r4 h176)
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
    (compatible r4 h189)
    (compatible r4 h190)
    (compatible r4 h194)
    (compatible r4 h195)
    (compatible r4 h197)
    (compatible r4 h198)
    (compatible r4 h199)
    (compatible r4 h200)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
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
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h92)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h120)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
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
    (compatible r5 h164)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h167)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h172)
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
    (compatible r5 h194)
    (compatible r5 h195)
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
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
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
