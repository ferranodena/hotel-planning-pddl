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
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 3 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 4 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 2 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 2 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 2 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 4 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 4 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 2 persones
    ;; h98: 1 persones
    ;; h99: 4 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 3 persones
    ;; h106: 4 persones
    ;; h107: 1 persones
    ;; h108: 3 persones
    ;; h109: 3 persones
    ;; h110: 3 persones
    ;; h111: 1 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 2 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 2 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 1 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 3 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 3 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 2 persones
    ;; h138: 1 persones
    ;; h139: 2 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 4 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 4 persones
    ;; h150: 3 persones
    ;; h151: 3 persones
    ;; h152: 3 persones
    ;; h153: 4 persones
    ;; h154: 1 persones
    ;; h155: 2 persones
    ;; h156: 3 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 2 persones
    ;; h160: 2 persones
    ;; h161: 3 persones
    ;; h162: 2 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 4 persones
    ;; h167: 3 persones
    ;; h168: 4 persones
    ;; h169: 1 persones
    ;; h170: 1 persones
    ;; h171: 3 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 1 persones
    ;; h175: 2 persones
    ;; h176: 2 persones
    ;; h177: 2 persones
    ;; h178: 2 persones
    ;; h179: 1 persones
    ;; h180: 4 persones
    ;; h181: 2 persones
    ;; h182: 4 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 3 persones
    ;; h187: 2 persones
    ;; h188: 4 persones
    ;; h189: 3 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 1 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 3 persones
    ;; h201: 2 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 3 persones
    ;; h205: 4 persones
    ;; h206: 1 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 2 persones
    ;; h212: 3 persones
    ;; h213: 3 persones
    ;; h214: 1 persones
    ;; h215: 1 persones
    ;; h216: 4 persones
    ;; h217: 4 persones
    ;; h218: 4 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 2 persones
    ;; h222: 4 persones
    ;; h223: 2 persones
    ;; h224: 3 persones
    ;; h225: 4 persones
    ;; h226: 4 persones
    ;; h227: 1 persones
    ;; h228: 1 persones
    ;; h229: 1 persones
    ;; h230: 3 persones
    ;; h231: 2 persones
    ;; h232: 3 persones
    ;; h233: 1 persones
    ;; h234: 4 persones
    ;; h235: 1 persones
    ;; h236: 2 persones
    ;; h237: 4 persones
    ;; h238: 4 persones
    ;; h239: 3 persones
    ;; h240: 2 persones
    ;; h241: 3 persones
    ;; h242: 2 persones
    ;; h243: 4 persones
    ;; h244: 2 persones
    ;; h245: 3 persones
    ;; h246: 3 persones
    ;; h247: 3 persones
    ;; h248: 3 persones
    ;; h249: 4 persones
    ;; h250: 3 persones
    ;; h251: 2 persones
    ;; h252: 3 persones
    ;; h253: 1 persones
    ;; h254: 4 persones
    ;; h255: 3 persones
    ;; h256: 4 persones
    ;; h257: 2 persones
    ;; h258: 2 persones
    ;; h259: 1 persones
    ;; h260: 3 persones
    ;; h261: 4 persones
    ;; h262: 1 persones
    ;; h263: 4 persones
    ;; h264: 4 persones
    ;; h265: 2 persones
    ;; h266: 1 persones
    ;; h267: 4 persones
    ;; h268: 4 persones
    ;; h269: 4 persones
    ;; h270: 2 persones
    ;; h271: 1 persones
    ;; h272: 4 persones
    ;; h273: 2 persones
    ;; h274: 4 persones
    ;; h275: 1 persones
    ;; h276: 2 persones
    ;; h277: 2 persones
    ;; h278: 2 persones
    ;; h279: 4 persones
    ;; h280: 4 persones
    ;; h281: 2 persones
    ;; h282: 1 persones
    ;; h283: 1 persones
    ;; h284: 3 persones
    ;; h285: 3 persones
    ;; h286: 4 persones
    ;; h287: 1 persones
    ;; h288: 1 persones
    ;; h289: 1 persones
    ;; h290: 4 persones
    ;; h291: 2 persones
    ;; h292: 2 persones
    ;; h293: 4 persones
    ;; h294: 4 persones
    ;; h295: 2 persones
    ;; h296: 2 persones
    ;; h297: 1 persones
    ;; h298: 1 persones
    ;; h299: 4 persones
    ;; h300: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h13)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h28)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h58)
    (compatible r1 h64)
    (compatible r1 h71)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h84)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h99)
    (compatible r1 h103)
    (compatible r1 h106)
    (compatible r1 h115)
    (compatible r1 h128)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h149)
    (compatible r1 h153)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h168)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h188)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h196)
    (compatible r1 h202)
    (compatible r1 h205)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h222)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h234)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h243)
    (compatible r1 h249)
    (compatible r1 h254)
    (compatible r1 h256)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h272)
    (compatible r1 h274)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h286)
    (compatible r1 h290)
    (compatible r1 h293)
    (compatible r1 h294)
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
    (dies-reserva r1 d5)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
