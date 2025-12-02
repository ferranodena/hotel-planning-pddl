(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 2 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 2 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 3 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 4 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 2 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 4 persones
    ;; h93: 4 persones
    ;; h94: 1 persones
    ;; h95: 1 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 4 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 3 persones
    ;; h114: 1 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 1 persones
    ;; h120: 2 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 1 persones
    ;; h126: 2 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 2 persones
    ;; h131: 2 persones
    ;; h132: 2 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 2 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 3 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 3 persones
    ;; h156: 3 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 2 persones
    ;; h160: 4 persones
    ;; h161: 1 persones
    ;; h162: 2 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 4 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 4 persones
    ;; h174: 2 persones
    ;; h175: 3 persones
    ;; h176: 3 persones
    ;; h177: 2 persones
    ;; h178: 3 persones
    ;; h179: 2 persones
    ;; h180: 4 persones
    ;; h181: 3 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 1 persones
    ;; h188: 3 persones
    ;; h189: 1 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 3 persones
    ;; h193: 1 persones
    ;; h194: 1 persones
    ;; h195: 3 persones
    ;; h196: 1 persones
    ;; h197: 3 persones
    ;; h198: 2 persones
    ;; h199: 1 persones
    ;; h200: 3 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 3 persones
    ;; h204: 1 persones
    ;; h205: 3 persones
    ;; h206: 2 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 2 persones
    ;; h210: 1 persones
    ;; h211: 4 persones
    ;; h212: 3 persones
    ;; h213: 1 persones
    ;; h214: 3 persones
    ;; h215: 1 persones
    ;; h216: 2 persones
    ;; h217: 3 persones
    ;; h218: 3 persones
    ;; h219: 1 persones
    ;; h220: 4 persones
    ;; h221: 2 persones
    ;; h222: 1 persones
    ;; h223: 3 persones
    ;; h224: 3 persones
    ;; h225: 4 persones
    ;; h226: 2 persones
    ;; h227: 4 persones
    ;; h228: 2 persones
    ;; h229: 1 persones
    ;; h230: 4 persones
    ;; h231: 1 persones
    ;; h232: 1 persones
    ;; h233: 3 persones
    ;; h234: 2 persones
    ;; h235: 2 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 3 persones
    ;; h240: 3 persones
    ;; h241: 2 persones
    ;; h242: 1 persones
    ;; h243: 3 persones
    ;; h244: 1 persones
    ;; h245: 1 persones
    ;; h246: 3 persones
    ;; h247: 3 persones
    ;; h248: 3 persones
    ;; h249: 1 persones
    ;; h250: 3 persones
    ;; h251: 4 persones
    ;; h252: 1 persones
    ;; h253: 2 persones
    ;; h254: 3 persones
    ;; h255: 3 persones
    ;; h256: 3 persones
    ;; h257: 1 persones
    ;; h258: 2 persones
    ;; h259: 3 persones
    ;; h260: 4 persones
    ;; h261: 1 persones
    ;; h262: 4 persones
    ;; h263: 4 persones
    ;; h264: 1 persones
    ;; h265: 3 persones
    ;; h266: 1 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 1 persones
    ;; h270: 1 persones
    ;; h271: 4 persones
    ;; h272: 1 persones
    ;; h273: 1 persones
    ;; h274: 2 persones
    ;; h275: 4 persones
    ;; h276: 4 persones
    ;; h277: 2 persones
    ;; h278: 2 persones
    ;; h279: 2 persones
    ;; h280: 1 persones
    ;; h281: 2 persones
    ;; h282: 4 persones
    ;; h283: 2 persones
    ;; h284: 2 persones
    ;; h285: 4 persones
    ;; h286: 1 persones
    ;; h287: 3 persones
    ;; h288: 1 persones
    ;; h289: 1 persones
    ;; h290: 4 persones
    ;; h291: 1 persones
    ;; h292: 4 persones
    ;; h293: 2 persones
    ;; h294: 2 persones
    ;; h295: 1 persones
    ;; h296: 2 persones
    ;; h297: 1 persones
    ;; h298: 2 persones
    ;; h299: 1 persones
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

    ;; Reserva r2 (3 pax): 
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h47)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h75)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h88)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h104)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h116)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h128)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h160)
    (compatible r2 h164)
    (compatible r2 h167)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h188)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h195)
    (compatible r2 h197)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h203)
    (compatible r2 h205)
    (compatible r2 h208)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h214)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h220)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h227)
    (compatible r2 h230)
    (compatible r2 h233)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h243)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h256)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h265)
    (compatible r2 h268)
    (compatible r2 h271)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h282)
    (compatible r2 h285)
    (compatible r2 h287)
    (compatible r2 h290)
    (compatible r2 h292)
    (compatible r2 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
