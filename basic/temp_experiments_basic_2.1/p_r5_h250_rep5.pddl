(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 2 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 4 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 3 persones
    ;; h84: 1 persones
    ;; h85: 2 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 3 persones
    ;; h89: 4 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 4 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 4 persones
    ;; h105: 3 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 3 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 1 persones
    ;; h123: 2 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 1 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 3 persones
    ;; h139: 1 persones
    ;; h140: 3 persones
    ;; h141: 2 persones
    ;; h142: 4 persones
    ;; h143: 1 persones
    ;; h144: 3 persones
    ;; h145: 1 persones
    ;; h146: 1 persones
    ;; h147: 4 persones
    ;; h148: 1 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 3 persones
    ;; h152: 2 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 4 persones
    ;; h162: 3 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 3 persones
    ;; h166: 1 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 3 persones
    ;; h171: 4 persones
    ;; h172: 4 persones
    ;; h173: 4 persones
    ;; h174: 1 persones
    ;; h175: 1 persones
    ;; h176: 4 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 1 persones
    ;; h181: 2 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 2 persones
    ;; h185: 1 persones
    ;; h186: 3 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 4 persones
    ;; h190: 1 persones
    ;; h191: 3 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 4 persones
    ;; h195: 2 persones
    ;; h196: 3 persones
    ;; h197: 2 persones
    ;; h198: 1 persones
    ;; h199: 3 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 3 persones
    ;; h203: 4 persones
    ;; h204: 4 persones
    ;; h205: 1 persones
    ;; h206: 2 persones
    ;; h207: 1 persones
    ;; h208: 2 persones
    ;; h209: 4 persones
    ;; h210: 1 persones
    ;; h211: 2 persones
    ;; h212: 4 persones
    ;; h213: 1 persones
    ;; h214: 3 persones
    ;; h215: 3 persones
    ;; h216: 3 persones
    ;; h217: 2 persones
    ;; h218: 1 persones
    ;; h219: 4 persones
    ;; h220: 4 persones
    ;; h221: 1 persones
    ;; h222: 3 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 3 persones
    ;; h226: 1 persones
    ;; h227: 1 persones
    ;; h228: 2 persones
    ;; h229: 1 persones
    ;; h230: 3 persones
    ;; h231: 2 persones
    ;; h232: 1 persones
    ;; h233: 3 persones
    ;; h234: 4 persones
    ;; h235: 1 persones
    ;; h236: 3 persones
    ;; h237: 3 persones
    ;; h238: 2 persones
    ;; h239: 2 persones
    ;; h240: 2 persones
    ;; h241: 4 persones
    ;; h242: 2 persones
    ;; h243: 1 persones
    ;; h244: 2 persones
    ;; h245: 3 persones
    ;; h246: 3 persones
    ;; h247: 4 persones
    ;; h248: 2 persones
    ;; h249: 2 persones
    ;; h250: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h144)
    (compatible r1 h147)
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
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h228)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h248)
    (compatible r1 h249)

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

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h9)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h20)
    (compatible r3 h23)
    (compatible r3 h25)
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h36)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h43)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h55)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h60)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h75)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h83)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h97)
    (compatible r3 h101)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h111)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h120)
    (compatible r3 h121)
    (compatible r3 h125)
    (compatible r3 h132)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h140)
    (compatible r3 h142)
    (compatible r3 h144)
    (compatible r3 h147)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h153)
    (compatible r3 h154)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h159)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h165)
    (compatible r3 h169)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h172)
    (compatible r3 h173)
    (compatible r3 h176)
    (compatible r3 h177)
    (compatible r3 h178)
    (compatible r3 h186)
    (compatible r3 h187)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h196)
    (compatible r3 h199)
    (compatible r3 h202)
    (compatible r3 h203)
    (compatible r3 h204)
    (compatible r3 h209)
    (compatible r3 h212)
    (compatible r3 h214)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h230)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h236)
    (compatible r3 h237)
    (compatible r3 h241)
    (compatible r3 h245)
    (compatible r3 h246)
    (compatible r3 h247)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h5)
    (compatible r4 h15)
    (compatible r4 h20)
    (compatible r4 h29)
    (compatible r4 h33)
    (compatible r4 h40)
    (compatible r4 h43)
    (compatible r4 h47)
    (compatible r4 h55)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h75)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h89)
    (compatible r4 h95)
    (compatible r4 h104)
    (compatible r4 h107)
    (compatible r4 h111)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h117)
    (compatible r4 h121)
    (compatible r4 h132)
    (compatible r4 h134)
    (compatible r4 h142)
    (compatible r4 h147)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h159)
    (compatible r4 h161)
    (compatible r4 h169)
    (compatible r4 h171)
    (compatible r4 h172)
    (compatible r4 h173)
    (compatible r4 h176)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h187)
    (compatible r4 h189)
    (compatible r4 h194)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h209)
    (compatible r4 h212)
    (compatible r4 h219)
    (compatible r4 h220)
    (compatible r4 h223)
    (compatible r4 h234)
    (compatible r4 h241)
    (compatible r4 h247)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h5)
    (compatible r5 h15)
    (compatible r5 h20)
    (compatible r5 h29)
    (compatible r5 h33)
    (compatible r5 h40)
    (compatible r5 h43)
    (compatible r5 h47)
    (compatible r5 h55)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h75)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h89)
    (compatible r5 h95)
    (compatible r5 h104)
    (compatible r5 h107)
    (compatible r5 h111)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h117)
    (compatible r5 h121)
    (compatible r5 h132)
    (compatible r5 h134)
    (compatible r5 h142)
    (compatible r5 h147)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h159)
    (compatible r5 h161)
    (compatible r5 h169)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h176)
    (compatible r5 h177)
    (compatible r5 h178)
    (compatible r5 h187)
    (compatible r5 h189)
    (compatible r5 h194)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h209)
    (compatible r5 h212)
    (compatible r5 h219)
    (compatible r5 h220)
    (compatible r5 h223)
    (compatible r5 h234)
    (compatible r5 h241)
    (compatible r5 h247)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
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
