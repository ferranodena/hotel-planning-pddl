(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 1 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 4 persones
    ;; h85: 2 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 2 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 1 persones
    ;; h113: 4 persones
    ;; h114: 2 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 1 persones
    ;; h118: 3 persones
    ;; h119: 3 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 2 persones
    ;; h123: 3 persones
    ;; h124: 4 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 2 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 4 persones
    ;; h138: 4 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 4 persones
    ;; h143: 2 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 1 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 3 persones
    ;; h154: 4 persones
    ;; h155: 2 persones
    ;; h156: 3 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 1 persones
    ;; h160: 3 persones
    ;; h161: 2 persones
    ;; h162: 2 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 4 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 2 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 2 persones
    ;; h175: 1 persones
    ;; h176: 2 persones
    ;; h177: 3 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 1 persones
    ;; h182: 4 persones
    ;; h183: 3 persones
    ;; h184: 4 persones
    ;; h185: 3 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 2 persones
    ;; h189: 1 persones
    ;; h190: 2 persones
    ;; h191: 1 persones
    ;; h192: 3 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 3 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 2 persones
    ;; h206: 4 persones
    ;; h207: 3 persones
    ;; h208: 2 persones
    ;; h209: 4 persones
    ;; h210: 1 persones
    ;; h211: 1 persones
    ;; h212: 1 persones
    ;; h213: 3 persones
    ;; h214: 4 persones
    ;; h215: 1 persones
    ;; h216: 2 persones
    ;; h217: 1 persones
    ;; h218: 3 persones
    ;; h219: 3 persones
    ;; h220: 2 persones
    ;; h221: 3 persones
    ;; h222: 4 persones
    ;; h223: 1 persones
    ;; h224: 1 persones
    ;; h225: 4 persones
    ;; h226: 2 persones
    ;; h227: 2 persones
    ;; h228: 3 persones
    ;; h229: 1 persones
    ;; h230: 2 persones
    ;; h231: 4 persones
    ;; h232: 2 persones
    ;; h233: 1 persones
    ;; h234: 3 persones
    ;; h235: 3 persones
    ;; h236: 3 persones
    ;; h237: 3 persones
    ;; h238: 4 persones
    ;; h239: 3 persones
    ;; h240: 3 persones
    ;; h241: 3 persones
    ;; h242: 3 persones
    ;; h243: 3 persones
    ;; h244: 2 persones
    ;; h245: 1 persones
    ;; h246: 4 persones
    ;; h247: 1 persones
    ;; h248: 1 persones
    ;; h249: 2 persones
    ;; h250: 4 persones
    ;; h251: 4 persones
    ;; h252: 3 persones
    ;; h253: 3 persones
    ;; h254: 3 persones
    ;; h255: 4 persones
    ;; h256: 3 persones
    ;; h257: 1 persones
    ;; h258: 1 persones
    ;; h259: 1 persones
    ;; h260: 3 persones
    ;; h261: 4 persones
    ;; h262: 3 persones
    ;; h263: 4 persones
    ;; h264: 1 persones
    ;; h265: 3 persones
    ;; h266: 2 persones
    ;; h267: 4 persones
    ;; h268: 4 persones
    ;; h269: 2 persones
    ;; h270: 4 persones
    ;; h271: 1 persones
    ;; h272: 1 persones
    ;; h273: 2 persones
    ;; h274: 4 persones
    ;; h275: 4 persones
    ;; h276: 2 persones
    ;; h277: 1 persones
    ;; h278: 2 persones
    ;; h279: 3 persones
    ;; h280: 1 persones
    ;; h281: 4 persones
    ;; h282: 4 persones
    ;; h283: 4 persones
    ;; h284: 3 persones
    ;; h285: 1 persones
    ;; h286: 3 persones
    ;; h287: 3 persones
    ;; h288: 4 persones
    ;; h289: 1 persones
    ;; h290: 3 persones
    ;; h291: 4 persones
    ;; h292: 1 persones
    ;; h293: 3 persones
    ;; h294: 2 persones
    ;; h295: 2 persones
    ;; h296: 2 persones
    ;; h297: 4 persones
    ;; h298: 2 persones
    ;; h299: 4 persones
    ;; h300: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h75)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h98)
    (compatible r1 h102)
    (compatible r1 h107)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h116)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h128)
    (compatible r1 h133)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h142)
    (compatible r1 h154)
    (compatible r1 h157)
    (compatible r1 h166)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h184)
    (compatible r1 h194)
    (compatible r1 h199)
    (compatible r1 h206)
    (compatible r1 h209)
    (compatible r1 h214)
    (compatible r1 h222)
    (compatible r1 h225)
    (compatible r1 h231)
    (compatible r1 h238)
    (compatible r1 h246)
    (compatible r1 h250)
    (compatible r1 h251)
    (compatible r1 h255)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h270)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h283)
    (compatible r1 h288)
    (compatible r1 h291)
    (compatible r1 h297)
    (compatible r1 h299)

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
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h256)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h265)
    (compatible r2 h266)
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h270)
    (compatible r2 h271)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h277)
    (compatible r2 h278)
    (compatible r2 h279)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h282)
    (compatible r2 h283)
    (compatible r2 h284)
    (compatible r2 h285)
    (compatible r2 h286)
    (compatible r2 h287)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h292)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h297)
    (compatible r2 h298)
    (compatible r2 h299)
    (compatible r2 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
