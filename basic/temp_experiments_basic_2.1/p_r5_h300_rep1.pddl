(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 1 persones
    ;; h79: 2 persones
    ;; h80: 4 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 3 persones
    ;; h96: 2 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 1 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 4 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 4 persones
    ;; h112: 1 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 2 persones
    ;; h121: 2 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 1 persones
    ;; h129: 4 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 3 persones
    ;; h137: 1 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 1 persones
    ;; h142: 1 persones
    ;; h143: 4 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 4 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 1 persones
    ;; h150: 1 persones
    ;; h151: 2 persones
    ;; h152: 3 persones
    ;; h153: 1 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 1 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 3 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 4 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 3 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 4 persones
    ;; h170: 2 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 1 persones
    ;; h174: 2 persones
    ;; h175: 4 persones
    ;; h176: 4 persones
    ;; h177: 3 persones
    ;; h178: 2 persones
    ;; h179: 3 persones
    ;; h180: 4 persones
    ;; h181: 2 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 1 persones
    ;; h188: 4 persones
    ;; h189: 3 persones
    ;; h190: 3 persones
    ;; h191: 1 persones
    ;; h192: 2 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 4 persones
    ;; h198: 2 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 4 persones
    ;; h204: 2 persones
    ;; h205: 3 persones
    ;; h206: 3 persones
    ;; h207: 3 persones
    ;; h208: 3 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 4 persones
    ;; h212: 2 persones
    ;; h213: 1 persones
    ;; h214: 3 persones
    ;; h215: 1 persones
    ;; h216: 2 persones
    ;; h217: 3 persones
    ;; h218: 1 persones
    ;; h219: 2 persones
    ;; h220: 2 persones
    ;; h221: 4 persones
    ;; h222: 4 persones
    ;; h223: 2 persones
    ;; h224: 4 persones
    ;; h225: 4 persones
    ;; h226: 4 persones
    ;; h227: 3 persones
    ;; h228: 3 persones
    ;; h229: 3 persones
    ;; h230: 2 persones
    ;; h231: 1 persones
    ;; h232: 2 persones
    ;; h233: 3 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 2 persones
    ;; h237: 4 persones
    ;; h238: 4 persones
    ;; h239: 3 persones
    ;; h240: 2 persones
    ;; h241: 4 persones
    ;; h242: 2 persones
    ;; h243: 3 persones
    ;; h244: 4 persones
    ;; h245: 1 persones
    ;; h246: 4 persones
    ;; h247: 4 persones
    ;; h248: 2 persones
    ;; h249: 4 persones
    ;; h250: 2 persones
    ;; h251: 2 persones
    ;; h252: 1 persones
    ;; h253: 2 persones
    ;; h254: 1 persones
    ;; h255: 1 persones
    ;; h256: 2 persones
    ;; h257: 4 persones
    ;; h258: 1 persones
    ;; h259: 2 persones
    ;; h260: 4 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 1 persones
    ;; h264: 4 persones
    ;; h265: 3 persones
    ;; h266: 3 persones
    ;; h267: 2 persones
    ;; h268: 3 persones
    ;; h269: 2 persones
    ;; h270: 4 persones
    ;; h271: 2 persones
    ;; h272: 4 persones
    ;; h273: 4 persones
    ;; h274: 3 persones
    ;; h275: 3 persones
    ;; h276: 1 persones
    ;; h277: 4 persones
    ;; h278: 4 persones
    ;; h279: 4 persones
    ;; h280: 1 persones
    ;; h281: 2 persones
    ;; h282: 3 persones
    ;; h283: 1 persones
    ;; h284: 1 persones
    ;; h285: 3 persones
    ;; h286: 3 persones
    ;; h287: 1 persones
    ;; h288: 2 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 2 persones
    ;; h292: 2 persones
    ;; h293: 4 persones
    ;; h294: 3 persones
    ;; h295: 2 persones
    ;; h296: 1 persones
    ;; h297: 4 persones
    ;; h298: 3 persones
    ;; h299: 3 persones
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
    (compatible r2 h3)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h26)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h60)
    (compatible r2 h65)
    (compatible r2 h69)
    (compatible r2 h76)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h97)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h106)
    (compatible r2 h111)
    (compatible r2 h116)
    (compatible r2 h122)
    (compatible r2 h129)
    (compatible r2 h132)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h155)
    (compatible r2 h162)
    (compatible r2 h165)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h180)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h186)
    (compatible r2 h188)
    (compatible r2 h197)
    (compatible r2 h199)
    (compatible r2 h203)
    (compatible r2 h211)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h241)
    (compatible r2 h244)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h249)
    (compatible r2 h257)
    (compatible r2 h260)
    (compatible r2 h264)
    (compatible r2 h270)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h277)
    (compatible r2 h278)
    (compatible r2 h279)
    (compatible r2 h293)
    (compatible r2 h297)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h9)
    (compatible r3 h11)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h33)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h44)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h60)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h73)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h89)
    (compatible r3 h95)
    (compatible r3 h97)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h104)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h110)
    (compatible r3 h111)
    (compatible r3 h114)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h122)
    (compatible r3 h123)
    (compatible r3 h126)
    (compatible r3 h129)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h136)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h143)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h152)
    (compatible r3 h154)
    (compatible r3 h155)
    (compatible r3 h159)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h165)
    (compatible r3 h166)
    (compatible r3 h167)
    (compatible r3 h168)
    (compatible r3 h169)
    (compatible r3 h171)
    (compatible r3 h175)
    (compatible r3 h176)
    (compatible r3 h177)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h186)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h190)
    (compatible r3 h195)
    (compatible r3 h197)
    (compatible r3 h199)
    (compatible r3 h203)
    (compatible r3 h205)
    (compatible r3 h206)
    (compatible r3 h207)
    (compatible r3 h208)
    (compatible r3 h209)
    (compatible r3 h211)
    (compatible r3 h214)
    (compatible r3 h217)
    (compatible r3 h221)
    (compatible r3 h222)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h226)
    (compatible r3 h227)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h235)
    (compatible r3 h237)
    (compatible r3 h238)
    (compatible r3 h239)
    (compatible r3 h241)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h246)
    (compatible r3 h247)
    (compatible r3 h249)
    (compatible r3 h257)
    (compatible r3 h260)
    (compatible r3 h261)
    (compatible r3 h264)
    (compatible r3 h265)
    (compatible r3 h266)
    (compatible r3 h268)
    (compatible r3 h270)
    (compatible r3 h272)
    (compatible r3 h273)
    (compatible r3 h274)
    (compatible r3 h275)
    (compatible r3 h277)
    (compatible r3 h278)
    (compatible r3 h279)
    (compatible r3 h282)
    (compatible r3 h285)
    (compatible r3 h286)
    (compatible r3 h290)
    (compatible r3 h293)
    (compatible r3 h294)
    (compatible r3 h297)
    (compatible r3 h298)
    (compatible r3 h299)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h3)
    (compatible r4 h9)
    (compatible r4 h11)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h18)
    (compatible r4 h26)
    (compatible r4 h37)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h44)
    (compatible r4 h46)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h60)
    (compatible r4 h65)
    (compatible r4 h69)
    (compatible r4 h76)
    (compatible r4 h80)
    (compatible r4 h83)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h97)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h106)
    (compatible r4 h111)
    (compatible r4 h116)
    (compatible r4 h122)
    (compatible r4 h129)
    (compatible r4 h132)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h143)
    (compatible r4 h146)
    (compatible r4 h155)
    (compatible r4 h162)
    (compatible r4 h165)
    (compatible r4 h169)
    (compatible r4 h171)
    (compatible r4 h175)
    (compatible r4 h176)
    (compatible r4 h180)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h186)
    (compatible r4 h188)
    (compatible r4 h197)
    (compatible r4 h199)
    (compatible r4 h203)
    (compatible r4 h211)
    (compatible r4 h221)
    (compatible r4 h222)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h226)
    (compatible r4 h235)
    (compatible r4 h237)
    (compatible r4 h238)
    (compatible r4 h241)
    (compatible r4 h244)
    (compatible r4 h246)
    (compatible r4 h247)
    (compatible r4 h249)
    (compatible r4 h257)
    (compatible r4 h260)
    (compatible r4 h264)
    (compatible r4 h270)
    (compatible r4 h272)
    (compatible r4 h273)
    (compatible r4 h277)
    (compatible r4 h278)
    (compatible r4 h279)
    (compatible r4 h293)
    (compatible r4 h297)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h49)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h104)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
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
    (compatible r5 h126)
    (compatible r5 h129)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h134)
    (compatible r5 h136)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h143)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h154)
    (compatible r5 h155)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h159)
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
    (compatible r5 h188)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h202)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h206)
    (compatible r5 h207)
    (compatible r5 h208)
    (compatible r5 h209)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h212)
    (compatible r5 h214)
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h219)
    (compatible r5 h220)
    (compatible r5 h221)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h225)
    (compatible r5 h226)
    (compatible r5 h227)
    (compatible r5 h228)
    (compatible r5 h229)
    (compatible r5 h230)
    (compatible r5 h232)
    (compatible r5 h233)
    (compatible r5 h234)
    (compatible r5 h235)
    (compatible r5 h236)
    (compatible r5 h237)
    (compatible r5 h238)
    (compatible r5 h239)
    (compatible r5 h240)
    (compatible r5 h241)
    (compatible r5 h242)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h246)
    (compatible r5 h247)
    (compatible r5 h248)
    (compatible r5 h249)
    (compatible r5 h250)
    (compatible r5 h251)
    (compatible r5 h253)
    (compatible r5 h256)
    (compatible r5 h257)
    (compatible r5 h259)
    (compatible r5 h260)
    (compatible r5 h261)
    (compatible r5 h262)
    (compatible r5 h264)
    (compatible r5 h265)
    (compatible r5 h266)
    (compatible r5 h267)
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
    (compatible r5 h279)
    (compatible r5 h281)
    (compatible r5 h282)
    (compatible r5 h285)
    (compatible r5 h286)
    (compatible r5 h288)
    (compatible r5 h289)
    (compatible r5 h290)
    (compatible r5 h291)
    (compatible r5 h292)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h295)
    (compatible r5 h297)
    (compatible r5 h298)
    (compatible r5 h299)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
