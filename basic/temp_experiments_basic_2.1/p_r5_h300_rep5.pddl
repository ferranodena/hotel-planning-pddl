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
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 2 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 2 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 2 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 1 persones
    ;; h74: 2 persones
    ;; h75: 2 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 3 persones
    ;; h88: 4 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 2 persones
    ;; h101: 1 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 2 persones
    ;; h114: 2 persones
    ;; h115: 2 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 3 persones
    ;; h125: 3 persones
    ;; h126: 2 persones
    ;; h127: 4 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 3 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 4 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 3 persones
    ;; h145: 1 persones
    ;; h146: 1 persones
    ;; h147: 2 persones
    ;; h148: 4 persones
    ;; h149: 1 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 1 persones
    ;; h154: 3 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 1 persones
    ;; h162: 2 persones
    ;; h163: 2 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 4 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 1 persones
    ;; h170: 4 persones
    ;; h171: 2 persones
    ;; h172: 1 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 4 persones
    ;; h176: 4 persones
    ;; h177: 3 persones
    ;; h178: 1 persones
    ;; h179: 3 persones
    ;; h180: 2 persones
    ;; h181: 3 persones
    ;; h182: 4 persones
    ;; h183: 1 persones
    ;; h184: 4 persones
    ;; h185: 4 persones
    ;; h186: 3 persones
    ;; h187: 1 persones
    ;; h188: 3 persones
    ;; h189: 4 persones
    ;; h190: 1 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 2 persones
    ;; h195: 1 persones
    ;; h196: 1 persones
    ;; h197: 2 persones
    ;; h198: 2 persones
    ;; h199: 2 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 1 persones
    ;; h203: 1 persones
    ;; h204: 2 persones
    ;; h205: 1 persones
    ;; h206: 1 persones
    ;; h207: 1 persones
    ;; h208: 2 persones
    ;; h209: 1 persones
    ;; h210: 2 persones
    ;; h211: 4 persones
    ;; h212: 3 persones
    ;; h213: 4 persones
    ;; h214: 1 persones
    ;; h215: 1 persones
    ;; h216: 4 persones
    ;; h217: 4 persones
    ;; h218: 3 persones
    ;; h219: 1 persones
    ;; h220: 2 persones
    ;; h221: 2 persones
    ;; h222: 1 persones
    ;; h223: 4 persones
    ;; h224: 4 persones
    ;; h225: 3 persones
    ;; h226: 1 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 3 persones
    ;; h230: 3 persones
    ;; h231: 1 persones
    ;; h232: 2 persones
    ;; h233: 3 persones
    ;; h234: 4 persones
    ;; h235: 1 persones
    ;; h236: 4 persones
    ;; h237: 4 persones
    ;; h238: 4 persones
    ;; h239: 1 persones
    ;; h240: 4 persones
    ;; h241: 3 persones
    ;; h242: 4 persones
    ;; h243: 4 persones
    ;; h244: 4 persones
    ;; h245: 2 persones
    ;; h246: 2 persones
    ;; h247: 1 persones
    ;; h248: 3 persones
    ;; h249: 3 persones
    ;; h250: 3 persones
    ;; h251: 4 persones
    ;; h252: 4 persones
    ;; h253: 4 persones
    ;; h254: 3 persones
    ;; h255: 2 persones
    ;; h256: 3 persones
    ;; h257: 2 persones
    ;; h258: 3 persones
    ;; h259: 4 persones
    ;; h260: 4 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 3 persones
    ;; h264: 1 persones
    ;; h265: 1 persones
    ;; h266: 3 persones
    ;; h267: 1 persones
    ;; h268: 4 persones
    ;; h269: 3 persones
    ;; h270: 3 persones
    ;; h271: 2 persones
    ;; h272: 3 persones
    ;; h273: 4 persones
    ;; h274: 2 persones
    ;; h275: 2 persones
    ;; h276: 1 persones
    ;; h277: 4 persones
    ;; h278: 4 persones
    ;; h279: 1 persones
    ;; h280: 4 persones
    ;; h281: 2 persones
    ;; h282: 3 persones
    ;; h283: 1 persones
    ;; h284: 1 persones
    ;; h285: 4 persones
    ;; h286: 4 persones
    ;; h287: 2 persones
    ;; h288: 4 persones
    ;; h289: 4 persones
    ;; h290: 1 persones
    ;; h291: 4 persones
    ;; h292: 2 persones
    ;; h293: 4 persones
    ;; h294: 2 persones
    ;; h295: 4 persones
    ;; h296: 2 persones
    ;; h297: 1 persones
    ;; h298: 4 persones
    ;; h299: 4 persones
    ;; h300: 2 persones

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

    ;; Reserva r2 (4 pax): 
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h24)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h43)
    (compatible r2 h50)
    (compatible r2 h54)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h102)
    (compatible r2 h123)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h133)
    (compatible r2 h136)
    (compatible r2 h141)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h156)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h170)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h182)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h189)
    (compatible r2 h192)
    (compatible r2 h211)
    (compatible r2 h213)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h228)
    (compatible r2 h234)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h240)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h268)
    (compatible r2 h273)
    (compatible r2 h277)
    (compatible r2 h278)
    (compatible r2 h280)
    (compatible r2 h285)
    (compatible r2 h286)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h291)
    (compatible r2 h293)
    (compatible r2 h295)
    (compatible r2 h298)
    (compatible r2 h299)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
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
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h58)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h82)
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
    (compatible r3 h100)
    (compatible r3 h102)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h107)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h111)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h118)
    (compatible r3 h120)
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
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h154)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h166)
    (compatible r3 h168)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h173)
    (compatible r3 h174)
    (compatible r3 h175)
    (compatible r3 h176)
    (compatible r3 h177)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h184)
    (compatible r3 h185)
    (compatible r3 h186)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h194)
    (compatible r3 h197)
    (compatible r3 h198)
    (compatible r3 h199)
    (compatible r3 h200)
    (compatible r3 h204)
    (compatible r3 h208)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h212)
    (compatible r3 h213)
    (compatible r3 h216)
    (compatible r3 h217)
    (compatible r3 h218)
    (compatible r3 h220)
    (compatible r3 h221)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h227)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h230)
    (compatible r3 h232)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h236)
    (compatible r3 h237)
    (compatible r3 h238)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h242)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h245)
    (compatible r3 h246)
    (compatible r3 h248)
    (compatible r3 h249)
    (compatible r3 h250)
    (compatible r3 h251)
    (compatible r3 h252)
    (compatible r3 h253)
    (compatible r3 h254)
    (compatible r3 h255)
    (compatible r3 h256)
    (compatible r3 h257)
    (compatible r3 h258)
    (compatible r3 h259)
    (compatible r3 h260)
    (compatible r3 h261)
    (compatible r3 h262)
    (compatible r3 h263)
    (compatible r3 h266)
    (compatible r3 h268)
    (compatible r3 h269)
    (compatible r3 h270)
    (compatible r3 h271)
    (compatible r3 h272)
    (compatible r3 h273)
    (compatible r3 h274)
    (compatible r3 h275)
    (compatible r3 h277)
    (compatible r3 h278)
    (compatible r3 h280)
    (compatible r3 h281)
    (compatible r3 h282)
    (compatible r3 h285)
    (compatible r3 h286)
    (compatible r3 h287)
    (compatible r3 h288)
    (compatible r3 h289)
    (compatible r3 h291)
    (compatible r3 h292)
    (compatible r3 h293)
    (compatible r3 h294)
    (compatible r3 h295)
    (compatible r3 h296)
    (compatible r3 h298)
    (compatible r3 h299)
    (compatible r3 h300)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
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
    (compatible r4 h19)
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
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h120)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h126)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h133)
    (compatible r4 h134)
    (compatible r4 h135)
    (compatible r4 h136)
    (compatible r4 h137)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h150)
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
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h165)
    (compatible r4 h166)
    (compatible r4 h167)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h171)
    (compatible r4 h172)
    (compatible r4 h173)
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
    (compatible r4 h191)
    (compatible r4 h192)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h195)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h198)
    (compatible r4 h199)
    (compatible r4 h200)
    (compatible r4 h201)
    (compatible r4 h202)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h205)
    (compatible r4 h206)
    (compatible r4 h207)
    (compatible r4 h208)
    (compatible r4 h209)
    (compatible r4 h210)
    (compatible r4 h211)
    (compatible r4 h212)
    (compatible r4 h213)
    (compatible r4 h214)
    (compatible r4 h215)
    (compatible r4 h216)
    (compatible r4 h217)
    (compatible r4 h218)
    (compatible r4 h219)
    (compatible r4 h220)
    (compatible r4 h221)
    (compatible r4 h222)
    (compatible r4 h223)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h226)
    (compatible r4 h227)
    (compatible r4 h228)
    (compatible r4 h229)
    (compatible r4 h230)
    (compatible r4 h231)
    (compatible r4 h232)
    (compatible r4 h233)
    (compatible r4 h234)
    (compatible r4 h235)
    (compatible r4 h236)
    (compatible r4 h237)
    (compatible r4 h238)
    (compatible r4 h239)
    (compatible r4 h240)
    (compatible r4 h241)
    (compatible r4 h242)
    (compatible r4 h243)
    (compatible r4 h244)
    (compatible r4 h245)
    (compatible r4 h246)
    (compatible r4 h247)
    (compatible r4 h248)
    (compatible r4 h249)
    (compatible r4 h250)
    (compatible r4 h251)
    (compatible r4 h252)
    (compatible r4 h253)
    (compatible r4 h254)
    (compatible r4 h255)
    (compatible r4 h256)
    (compatible r4 h257)
    (compatible r4 h258)
    (compatible r4 h259)
    (compatible r4 h260)
    (compatible r4 h261)
    (compatible r4 h262)
    (compatible r4 h263)
    (compatible r4 h264)
    (compatible r4 h265)
    (compatible r4 h266)
    (compatible r4 h267)
    (compatible r4 h268)
    (compatible r4 h269)
    (compatible r4 h270)
    (compatible r4 h271)
    (compatible r4 h272)
    (compatible r4 h273)
    (compatible r4 h274)
    (compatible r4 h275)
    (compatible r4 h276)
    (compatible r4 h277)
    (compatible r4 h278)
    (compatible r4 h279)
    (compatible r4 h280)
    (compatible r4 h281)
    (compatible r4 h282)
    (compatible r4 h283)
    (compatible r4 h284)
    (compatible r4 h285)
    (compatible r4 h286)
    (compatible r4 h287)
    (compatible r4 h288)
    (compatible r4 h289)
    (compatible r4 h290)
    (compatible r4 h291)
    (compatible r4 h292)
    (compatible r4 h293)
    (compatible r4 h294)
    (compatible r4 h295)
    (compatible r4 h296)
    (compatible r4 h297)
    (compatible r4 h298)
    (compatible r4 h299)
    (compatible r4 h300)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
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
    (compatible r5 h27)
    (compatible r5 h29)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h82)
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
    (compatible r5 h100)
    (compatible r5 h102)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h107)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h118)
    (compatible r5 h120)
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
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h154)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h159)
    (compatible r5 h160)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h166)
    (compatible r5 h168)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h175)
    (compatible r5 h176)
    (compatible r5 h177)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h184)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h188)
    (compatible r5 h189)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h194)
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h200)
    (compatible r5 h204)
    (compatible r5 h208)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h212)
    (compatible r5 h213)
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h218)
    (compatible r5 h220)
    (compatible r5 h221)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h225)
    (compatible r5 h227)
    (compatible r5 h228)
    (compatible r5 h229)
    (compatible r5 h230)
    (compatible r5 h232)
    (compatible r5 h233)
    (compatible r5 h234)
    (compatible r5 h236)
    (compatible r5 h237)
    (compatible r5 h238)
    (compatible r5 h240)
    (compatible r5 h241)
    (compatible r5 h242)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h245)
    (compatible r5 h246)
    (compatible r5 h248)
    (compatible r5 h249)
    (compatible r5 h250)
    (compatible r5 h251)
    (compatible r5 h252)
    (compatible r5 h253)
    (compatible r5 h254)
    (compatible r5 h255)
    (compatible r5 h256)
    (compatible r5 h257)
    (compatible r5 h258)
    (compatible r5 h259)
    (compatible r5 h260)
    (compatible r5 h261)
    (compatible r5 h262)
    (compatible r5 h263)
    (compatible r5 h266)
    (compatible r5 h268)
    (compatible r5 h269)
    (compatible r5 h270)
    (compatible r5 h271)
    (compatible r5 h272)
    (compatible r5 h273)
    (compatible r5 h274)
    (compatible r5 h275)
    (compatible r5 h277)
    (compatible r5 h278)
    (compatible r5 h280)
    (compatible r5 h281)
    (compatible r5 h282)
    (compatible r5 h285)
    (compatible r5 h286)
    (compatible r5 h287)
    (compatible r5 h288)
    (compatible r5 h289)
    (compatible r5 h291)
    (compatible r5 h292)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h295)
    (compatible r5 h296)
    (compatible r5 h298)
    (compatible r5 h299)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d5)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d3)
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
