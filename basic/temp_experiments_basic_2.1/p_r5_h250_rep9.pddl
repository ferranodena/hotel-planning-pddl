(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 4 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 1 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 3 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 4 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 3 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 4 persones
    ;; h94: 2 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 3 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 4 persones
    ;; h109: 2 persones
    ;; h110: 4 persones
    ;; h111: 4 persones
    ;; h112: 2 persones
    ;; h113: 3 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 1 persones
    ;; h126: 2 persones
    ;; h127: 4 persones
    ;; h128: 1 persones
    ;; h129: 3 persones
    ;; h130: 2 persones
    ;; h131: 4 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 1 persones
    ;; h135: 4 persones
    ;; h136: 3 persones
    ;; h137: 3 persones
    ;; h138: 4 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 4 persones
    ;; h152: 2 persones
    ;; h153: 2 persones
    ;; h154: 1 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 1 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 3 persones
    ;; h163: 1 persones
    ;; h164: 1 persones
    ;; h165: 4 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 1 persones
    ;; h170: 3 persones
    ;; h171: 3 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 3 persones
    ;; h175: 3 persones
    ;; h176: 4 persones
    ;; h177: 1 persones
    ;; h178: 4 persones
    ;; h179: 4 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 2 persones
    ;; h183: 1 persones
    ;; h184: 3 persones
    ;; h185: 1 persones
    ;; h186: 1 persones
    ;; h187: 3 persones
    ;; h188: 2 persones
    ;; h189: 4 persones
    ;; h190: 1 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 3 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 3 persones
    ;; h198: 4 persones
    ;; h199: 3 persones
    ;; h200: 2 persones
    ;; h201: 4 persones
    ;; h202: 4 persones
    ;; h203: 4 persones
    ;; h204: 4 persones
    ;; h205: 2 persones
    ;; h206: 1 persones
    ;; h207: 4 persones
    ;; h208: 1 persones
    ;; h209: 4 persones
    ;; h210: 3 persones
    ;; h211: 1 persones
    ;; h212: 2 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 4 persones
    ;; h216: 3 persones
    ;; h217: 2 persones
    ;; h218: 3 persones
    ;; h219: 2 persones
    ;; h220: 1 persones
    ;; h221: 3 persones
    ;; h222: 2 persones
    ;; h223: 2 persones
    ;; h224: 2 persones
    ;; h225: 1 persones
    ;; h226: 1 persones
    ;; h227: 4 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 3 persones
    ;; h231: 2 persones
    ;; h232: 1 persones
    ;; h233: 4 persones
    ;; h234: 1 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 4 persones
    ;; h238: 3 persones
    ;; h239: 1 persones
    ;; h240: 4 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 4 persones
    ;; h244: 4 persones
    ;; h245: 3 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 1 persones
    ;; h249: 2 persones
    ;; h250: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h68)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h88)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h114)
    (compatible r1 h121)
    (compatible r1 h123)
    (compatible r1 h127)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h135)
    (compatible r1 h138)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h151)
    (compatible r1 h156)
    (compatible r1 h159)
    (compatible r1 h165)
    (compatible r1 h176)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h189)
    (compatible r1 h193)
    (compatible r1 h198)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h207)
    (compatible r1 h209)
    (compatible r1 h215)
    (compatible r1 h227)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h237)
    (compatible r1 h240)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)

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
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)

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
    (compatible r3 h201)
    (compatible r3 h202)
    (compatible r3 h203)
    (compatible r3 h204)
    (compatible r3 h205)
    (compatible r3 h206)
    (compatible r3 h207)
    (compatible r3 h208)
    (compatible r3 h209)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h212)
    (compatible r3 h213)
    (compatible r3 h214)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h217)
    (compatible r3 h218)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h221)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h226)
    (compatible r3 h227)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h230)
    (compatible r3 h231)
    (compatible r3 h232)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h235)
    (compatible r3 h236)
    (compatible r3 h237)
    (compatible r3 h238)
    (compatible r3 h239)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h242)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h245)
    (compatible r3 h246)
    (compatible r3 h247)
    (compatible r3 h248)
    (compatible r3 h249)
    (compatible r3 h250)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h17)
    (compatible r4 h20)
    (compatible r4 h27)
    (compatible r4 h29)
    (compatible r4 h34)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h49)
    (compatible r4 h51)
    (compatible r4 h55)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h68)
    (compatible r4 h75)
    (compatible r4 h78)
    (compatible r4 h80)
    (compatible r4 h88)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h114)
    (compatible r4 h121)
    (compatible r4 h123)
    (compatible r4 h127)
    (compatible r4 h131)
    (compatible r4 h133)
    (compatible r4 h135)
    (compatible r4 h138)
    (compatible r4 h142)
    (compatible r4 h145)
    (compatible r4 h151)
    (compatible r4 h156)
    (compatible r4 h159)
    (compatible r4 h165)
    (compatible r4 h176)
    (compatible r4 h178)
    (compatible r4 h179)
    (compatible r4 h189)
    (compatible r4 h193)
    (compatible r4 h198)
    (compatible r4 h201)
    (compatible r4 h202)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h207)
    (compatible r4 h209)
    (compatible r4 h215)
    (compatible r4 h227)
    (compatible r4 h233)
    (compatible r4 h235)
    (compatible r4 h237)
    (compatible r4 h240)
    (compatible r4 h242)
    (compatible r4 h243)
    (compatible r4 h244)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h15)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h22)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h29)
    (compatible r5 h34)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
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
    (compatible r5 h63)
    (compatible r5 h65)
    (compatible r5 h68)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h78)
    (compatible r5 h80)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h91)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
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
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h133)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h140)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h158)
    (compatible r5 h159)
    (compatible r5 h160)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h167)
    (compatible r5 h168)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h175)
    (compatible r5 h176)
    (compatible r5 h178)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h182)
    (compatible r5 h184)
    (compatible r5 h187)
    (compatible r5 h188)
    (compatible r5 h189)
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
    (compatible r5 h201)
    (compatible r5 h202)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h207)
    (compatible r5 h209)
    (compatible r5 h210)
    (compatible r5 h212)
    (compatible r5 h213)
    (compatible r5 h214)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h218)
    (compatible r5 h219)
    (compatible r5 h221)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h227)
    (compatible r5 h229)
    (compatible r5 h230)
    (compatible r5 h231)
    (compatible r5 h233)
    (compatible r5 h235)
    (compatible r5 h237)
    (compatible r5 h238)
    (compatible r5 h240)
    (compatible r5 h242)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h245)
    (compatible r5 h246)
    (compatible r5 h247)
    (compatible r5 h249)
    (compatible r5 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
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
