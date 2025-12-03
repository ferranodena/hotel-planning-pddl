(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 4 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 3 persones
    ;; h83: 3 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 3 persones
    ;; h91: 2 persones
    ;; h92: 4 persones
    ;; h93: 3 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 4 persones
    ;; h102: 1 persones
    ;; h103: 4 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 4 persones
    ;; h114: 3 persones
    ;; h115: 2 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 3 persones
    ;; h120: 2 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 1 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 4 persones
    ;; h127: 4 persones
    ;; h128: 3 persones
    ;; h129: 2 persones
    ;; h130: 2 persones
    ;; h131: 2 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 4 persones
    ;; h139: 2 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 4 persones
    ;; h148: 3 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 2 persones
    ;; h152: 1 persones
    ;; h153: 4 persones
    ;; h154: 1 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 1 persones
    ;; h158: 2 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 4 persones
    ;; h162: 4 persones
    ;; h163: 4 persones
    ;; h164: 2 persones
    ;; h165: 3 persones
    ;; h166: 4 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 2 persones
    ;; h171: 3 persones
    ;; h172: 1 persones
    ;; h173: 2 persones
    ;; h174: 3 persones
    ;; h175: 1 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 3 persones
    ;; h180: 3 persones
    ;; h181: 4 persones
    ;; h182: 3 persones
    ;; h183: 3 persones
    ;; h184: 2 persones
    ;; h185: 2 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 2 persones
    ;; h190: 2 persones
    ;; h191: 4 persones
    ;; h192: 2 persones
    ;; h193: 2 persones
    ;; h194: 3 persones
    ;; h195: 4 persones
    ;; h196: 4 persones
    ;; h197: 3 persones
    ;; h198: 1 persones
    ;; h199: 1 persones
    ;; h200: 4 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 1 persones
    ;; h204: 3 persones
    ;; h205: 4 persones
    ;; h206: 3 persones
    ;; h207: 4 persones
    ;; h208: 1 persones
    ;; h209: 3 persones
    ;; h210: 3 persones
    ;; h211: 4 persones
    ;; h212: 1 persones
    ;; h213: 2 persones
    ;; h214: 1 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 2 persones
    ;; h218: 2 persones
    ;; h219: 3 persones
    ;; h220: 4 persones
    ;; h221: 1 persones
    ;; h222: 4 persones
    ;; h223: 3 persones
    ;; h224: 4 persones
    ;; h225: 4 persones
    ;; h226: 1 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 3 persones
    ;; h230: 2 persones
    ;; h231: 4 persones
    ;; h232: 3 persones
    ;; h233: 2 persones
    ;; h234: 2 persones
    ;; h235: 1 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 1 persones
    ;; h240: 4 persones
    ;; h241: 3 persones
    ;; h242: 1 persones
    ;; h243: 3 persones
    ;; h244: 3 persones
    ;; h245: 1 persones
    ;; h246: 3 persones
    ;; h247: 1 persones
    ;; h248: 1 persones
    ;; h249: 3 persones
    ;; h250: 2 persones
    ;; h251: 2 persones
    ;; h252: 1 persones
    ;; h253: 2 persones
    ;; h254: 3 persones
    ;; h255: 1 persones
    ;; h256: 4 persones
    ;; h257: 3 persones
    ;; h258: 3 persones
    ;; h259: 4 persones
    ;; h260: 1 persones
    ;; h261: 1 persones
    ;; h262: 1 persones
    ;; h263: 3 persones
    ;; h264: 1 persones
    ;; h265: 4 persones
    ;; h266: 1 persones
    ;; h267: 1 persones
    ;; h268: 3 persones
    ;; h269: 1 persones
    ;; h270: 1 persones
    ;; h271: 4 persones
    ;; h272: 1 persones
    ;; h273: 4 persones
    ;; h274: 4 persones
    ;; h275: 3 persones
    ;; h276: 4 persones
    ;; h277: 1 persones
    ;; h278: 3 persones
    ;; h279: 4 persones
    ;; h280: 2 persones
    ;; h281: 2 persones
    ;; h282: 1 persones
    ;; h283: 4 persones
    ;; h284: 2 persones
    ;; h285: 3 persones
    ;; h286: 2 persones
    ;; h287: 3 persones
    ;; h288: 3 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 4 persones
    ;; h292: 1 persones
    ;; h293: 3 persones
    ;; h294: 4 persones
    ;; h295: 1 persones
    ;; h296: 2 persones
    ;; h297: 4 persones
    ;; h298: 4 persones
    ;; h299: 3 persones
    ;; h300: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
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
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h251)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h256)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h262)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h265)
    (compatible r1 h266)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h270)
    (compatible r1 h271)
    (compatible r1 h272)
    (compatible r1 h273)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h296)
    (compatible r1 h297)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
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
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
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
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
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
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
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
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h107)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h153)
    (compatible r2 h155)
    (compatible r2 h156)
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
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h246)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h256)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h259)
    (compatible r2 h263)
    (compatible r2 h265)
    (compatible r2 h268)
    (compatible r2 h271)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h278)
    (compatible r2 h279)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h283)
    (compatible r2 h284)
    (compatible r2 h285)
    (compatible r2 h286)
    (compatible r2 h287)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h296)
    (compatible r2 h297)
    (compatible r2 h298)
    (compatible r2 h299)
    (compatible r2 h300)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h30)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h54)
    (compatible r3 h58)
    (compatible r3 h61)
    (compatible r3 h63)
    (compatible r3 h66)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h101)
    (compatible r3 h103)
    (compatible r3 h107)
    (compatible r3 h109)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h119)
    (compatible r3 h124)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h128)
    (compatible r3 h132)
    (compatible r3 h135)
    (compatible r3 h138)
    (compatible r3 h140)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h146)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h150)
    (compatible r3 h153)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h159)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h165)
    (compatible r3 h166)
    (compatible r3 h171)
    (compatible r3 h174)
    (compatible r3 h177)
    (compatible r3 h178)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h191)
    (compatible r3 h194)
    (compatible r3 h195)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h200)
    (compatible r3 h201)
    (compatible r3 h204)
    (compatible r3 h205)
    (compatible r3 h206)
    (compatible r3 h207)
    (compatible r3 h209)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h231)
    (compatible r3 h232)
    (compatible r3 h238)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h246)
    (compatible r3 h249)
    (compatible r3 h254)
    (compatible r3 h256)
    (compatible r3 h257)
    (compatible r3 h258)
    (compatible r3 h259)
    (compatible r3 h263)
    (compatible r3 h265)
    (compatible r3 h268)
    (compatible r3 h271)
    (compatible r3 h273)
    (compatible r3 h274)
    (compatible r3 h275)
    (compatible r3 h276)
    (compatible r3 h278)
    (compatible r3 h279)
    (compatible r3 h283)
    (compatible r3 h285)
    (compatible r3 h287)
    (compatible r3 h288)
    (compatible r3 h290)
    (compatible r3 h291)
    (compatible r3 h293)
    (compatible r3 h294)
    (compatible r3 h297)
    (compatible r3 h298)
    (compatible r3 h299)
    (compatible r3 h300)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h10)
    (compatible r4 h13)
    (compatible r4 h17)
    (compatible r4 h21)
    (compatible r4 h24)
    (compatible r4 h27)
    (compatible r4 h32)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h49)
    (compatible r4 h52)
    (compatible r4 h63)
    (compatible r4 h66)
    (compatible r4 h69)
    (compatible r4 h71)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h88)
    (compatible r4 h92)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h101)
    (compatible r4 h103)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h126)
    (compatible r4 h127)
    (compatible r4 h132)
    (compatible r4 h138)
    (compatible r4 h140)
    (compatible r4 h144)
    (compatible r4 h147)
    (compatible r4 h150)
    (compatible r4 h153)
    (compatible r4 h155)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h163)
    (compatible r4 h166)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h181)
    (compatible r4 h191)
    (compatible r4 h195)
    (compatible r4 h196)
    (compatible r4 h200)
    (compatible r4 h205)
    (compatible r4 h207)
    (compatible r4 h211)
    (compatible r4 h215)
    (compatible r4 h216)
    (compatible r4 h220)
    (compatible r4 h222)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h228)
    (compatible r4 h231)
    (compatible r4 h238)
    (compatible r4 h240)
    (compatible r4 h256)
    (compatible r4 h259)
    (compatible r4 h265)
    (compatible r4 h271)
    (compatible r4 h273)
    (compatible r4 h274)
    (compatible r4 h276)
    (compatible r4 h279)
    (compatible r4 h283)
    (compatible r4 h291)
    (compatible r4 h294)
    (compatible r4 h297)
    (compatible r4 h298)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h30)
    (compatible r5 h32)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h58)
    (compatible r5 h61)
    (compatible r5 h63)
    (compatible r5 h66)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h103)
    (compatible r5 h107)
    (compatible r5 h109)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h119)
    (compatible r5 h124)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h132)
    (compatible r5 h135)
    (compatible r5 h138)
    (compatible r5 h140)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h150)
    (compatible r5 h153)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h159)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h171)
    (compatible r5 h174)
    (compatible r5 h177)
    (compatible r5 h178)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
    (compatible r5 h191)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h200)
    (compatible r5 h201)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h206)
    (compatible r5 h207)
    (compatible r5 h209)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h219)
    (compatible r5 h220)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h225)
    (compatible r5 h228)
    (compatible r5 h229)
    (compatible r5 h231)
    (compatible r5 h232)
    (compatible r5 h238)
    (compatible r5 h240)
    (compatible r5 h241)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h246)
    (compatible r5 h249)
    (compatible r5 h254)
    (compatible r5 h256)
    (compatible r5 h257)
    (compatible r5 h258)
    (compatible r5 h259)
    (compatible r5 h263)
    (compatible r5 h265)
    (compatible r5 h268)
    (compatible r5 h271)
    (compatible r5 h273)
    (compatible r5 h274)
    (compatible r5 h275)
    (compatible r5 h276)
    (compatible r5 h278)
    (compatible r5 h279)
    (compatible r5 h283)
    (compatible r5 h285)
    (compatible r5 h287)
    (compatible r5 h288)
    (compatible r5 h290)
    (compatible r5 h291)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h297)
    (compatible r5 h298)
    (compatible r5 h299)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
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
