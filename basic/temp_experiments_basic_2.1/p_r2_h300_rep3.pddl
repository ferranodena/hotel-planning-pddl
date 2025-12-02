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
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 1 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 2 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 1 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 2 persones
    ;; h87: 3 persones
    ;; h88: 1 persones
    ;; h89: 2 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 4 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 4 persones
    ;; h100: 3 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 4 persones
    ;; h106: 4 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 4 persones
    ;; h110: 3 persones
    ;; h111: 4 persones
    ;; h112: 4 persones
    ;; h113: 3 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 3 persones
    ;; h117: 4 persones
    ;; h118: 1 persones
    ;; h119: 4 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 1 persones
    ;; h123: 1 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 1 persones
    ;; h127: 4 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 4 persones
    ;; h131: 2 persones
    ;; h132: 2 persones
    ;; h133: 2 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 4 persones
    ;; h138: 4 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 4 persones
    ;; h144: 3 persones
    ;; h145: 3 persones
    ;; h146: 4 persones
    ;; h147: 4 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 2 persones
    ;; h151: 2 persones
    ;; h152: 2 persones
    ;; h153: 1 persones
    ;; h154: 2 persones
    ;; h155: 4 persones
    ;; h156: 2 persones
    ;; h157: 3 persones
    ;; h158: 1 persones
    ;; h159: 1 persones
    ;; h160: 4 persones
    ;; h161: 4 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 4 persones
    ;; h165: 1 persones
    ;; h166: 1 persones
    ;; h167: 2 persones
    ;; h168: 4 persones
    ;; h169: 4 persones
    ;; h170: 3 persones
    ;; h171: 2 persones
    ;; h172: 1 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 1 persones
    ;; h176: 2 persones
    ;; h177: 3 persones
    ;; h178: 3 persones
    ;; h179: 2 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 2 persones
    ;; h183: 2 persones
    ;; h184: 3 persones
    ;; h185: 4 persones
    ;; h186: 1 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 3 persones
    ;; h190: 1 persones
    ;; h191: 3 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 3 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 1 persones
    ;; h200: 1 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 2 persones
    ;; h204: 2 persones
    ;; h205: 3 persones
    ;; h206: 2 persones
    ;; h207: 3 persones
    ;; h208: 4 persones
    ;; h209: 3 persones
    ;; h210: 1 persones
    ;; h211: 1 persones
    ;; h212: 1 persones
    ;; h213: 2 persones
    ;; h214: 1 persones
    ;; h215: 1 persones
    ;; h216: 4 persones
    ;; h217: 1 persones
    ;; h218: 2 persones
    ;; h219: 2 persones
    ;; h220: 1 persones
    ;; h221: 4 persones
    ;; h222: 2 persones
    ;; h223: 2 persones
    ;; h224: 4 persones
    ;; h225: 3 persones
    ;; h226: 4 persones
    ;; h227: 3 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 2 persones
    ;; h231: 1 persones
    ;; h232: 4 persones
    ;; h233: 2 persones
    ;; h234: 3 persones
    ;; h235: 1 persones
    ;; h236: 4 persones
    ;; h237: 4 persones
    ;; h238: 3 persones
    ;; h239: 4 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 3 persones
    ;; h243: 3 persones
    ;; h244: 1 persones
    ;; h245: 1 persones
    ;; h246: 1 persones
    ;; h247: 1 persones
    ;; h248: 4 persones
    ;; h249: 3 persones
    ;; h250: 1 persones
    ;; h251: 3 persones
    ;; h252: 4 persones
    ;; h253: 3 persones
    ;; h254: 4 persones
    ;; h255: 3 persones
    ;; h256: 1 persones
    ;; h257: 4 persones
    ;; h258: 1 persones
    ;; h259: 3 persones
    ;; h260: 3 persones
    ;; h261: 1 persones
    ;; h262: 4 persones
    ;; h263: 3 persones
    ;; h264: 1 persones
    ;; h265: 1 persones
    ;; h266: 4 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 4 persones
    ;; h270: 1 persones
    ;; h271: 4 persones
    ;; h272: 3 persones
    ;; h273: 3 persones
    ;; h274: 1 persones
    ;; h275: 1 persones
    ;; h276: 1 persones
    ;; h277: 2 persones
    ;; h278: 1 persones
    ;; h279: 1 persones
    ;; h280: 4 persones
    ;; h281: 2 persones
    ;; h282: 4 persones
    ;; h283: 2 persones
    ;; h284: 4 persones
    ;; h285: 4 persones
    ;; h286: 3 persones
    ;; h287: 2 persones
    ;; h288: 1 persones
    ;; h289: 1 persones
    ;; h290: 2 persones
    ;; h291: 1 persones
    ;; h292: 4 persones
    ;; h293: 2 persones
    ;; h294: 2 persones
    ;; h295: 4 persones
    ;; h296: 3 persones
    ;; h297: 4 persones
    ;; h298: 4 persones
    ;; h299: 1 persones
    ;; h300: 4 persones

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
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h10)
    (compatible r2 h13)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h23)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h37)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h49)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h66)
    (compatible r2 h77)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h155)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h164)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h174)
    (compatible r2 h185)
    (compatible r2 h192)
    (compatible r2 h208)
    (compatible r2 h216)
    (compatible r2 h221)
    (compatible r2 h224)
    (compatible r2 h226)
    (compatible r2 h232)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h239)
    (compatible r2 h248)
    (compatible r2 h252)
    (compatible r2 h254)
    (compatible r2 h257)
    (compatible r2 h262)
    (compatible r2 h266)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h271)
    (compatible r2 h280)
    (compatible r2 h282)
    (compatible r2 h284)
    (compatible r2 h285)
    (compatible r2 h292)
    (compatible r2 h295)
    (compatible r2 h297)
    (compatible r2 h298)
    (compatible r2 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
