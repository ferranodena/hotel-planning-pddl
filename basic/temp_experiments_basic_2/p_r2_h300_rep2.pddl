(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 2 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 2 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 2 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 4 persones
    ;; h88: 2 persones
    ;; h89: 2 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 2 persones
    ;; h107: 1 persones
    ;; h108: 4 persones
    ;; h109: 2 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 2 persones
    ;; h115: 2 persones
    ;; h116: 3 persones
    ;; h117: 4 persones
    ;; h118: 1 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 1 persones
    ;; h123: 4 persones
    ;; h124: 4 persones
    ;; h125: 2 persones
    ;; h126: 4 persones
    ;; h127: 1 persones
    ;; h128: 2 persones
    ;; h129: 3 persones
    ;; h130: 3 persones
    ;; h131: 4 persones
    ;; h132: 2 persones
    ;; h133: 4 persones
    ;; h134: 1 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 4 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 3 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 1 persones
    ;; h144: 3 persones
    ;; h145: 1 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 3 persones
    ;; h149: 4 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 2 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 1 persones
    ;; h157: 1 persones
    ;; h158: 3 persones
    ;; h159: 1 persones
    ;; h160: 3 persones
    ;; h161: 4 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 4 persones
    ;; h165: 1 persones
    ;; h166: 1 persones
    ;; h167: 4 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 3 persones
    ;; h172: 4 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 4 persones
    ;; h177: 1 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 1 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 1 persones
    ;; h184: 1 persones
    ;; h185: 4 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 4 persones
    ;; h189: 2 persones
    ;; h190: 4 persones
    ;; h191: 3 persones
    ;; h192: 3 persones
    ;; h193: 2 persones
    ;; h194: 1 persones
    ;; h195: 2 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 4 persones
    ;; h200: 4 persones
    ;; h201: 4 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 1 persones
    ;; h205: 4 persones
    ;; h206: 2 persones
    ;; h207: 1 persones
    ;; h208: 2 persones
    ;; h209: 4 persones
    ;; h210: 4 persones
    ;; h211: 2 persones
    ;; h212: 4 persones
    ;; h213: 4 persones
    ;; h214: 2 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 2 persones
    ;; h218: 1 persones
    ;; h219: 2 persones
    ;; h220: 1 persones
    ;; h221: 1 persones
    ;; h222: 2 persones
    ;; h223: 1 persones
    ;; h224: 1 persones
    ;; h225: 2 persones
    ;; h226: 2 persones
    ;; h227: 2 persones
    ;; h228: 1 persones
    ;; h229: 3 persones
    ;; h230: 3 persones
    ;; h231: 1 persones
    ;; h232: 4 persones
    ;; h233: 4 persones
    ;; h234: 2 persones
    ;; h235: 2 persones
    ;; h236: 4 persones
    ;; h237: 1 persones
    ;; h238: 1 persones
    ;; h239: 1 persones
    ;; h240: 3 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 2 persones
    ;; h244: 3 persones
    ;; h245: 2 persones
    ;; h246: 3 persones
    ;; h247: 1 persones
    ;; h248: 2 persones
    ;; h249: 3 persones
    ;; h250: 3 persones
    ;; h251: 3 persones
    ;; h252: 3 persones
    ;; h253: 2 persones
    ;; h254: 3 persones
    ;; h255: 1 persones
    ;; h256: 1 persones
    ;; h257: 2 persones
    ;; h258: 2 persones
    ;; h259: 1 persones
    ;; h260: 4 persones
    ;; h261: 3 persones
    ;; h262: 1 persones
    ;; h263: 4 persones
    ;; h264: 1 persones
    ;; h265: 1 persones
    ;; h266: 3 persones
    ;; h267: 4 persones
    ;; h268: 2 persones
    ;; h269: 3 persones
    ;; h270: 2 persones
    ;; h271: 1 persones
    ;; h272: 1 persones
    ;; h273: 4 persones
    ;; h274: 1 persones
    ;; h275: 3 persones
    ;; h276: 2 persones
    ;; h277: 2 persones
    ;; h278: 3 persones
    ;; h279: 4 persones
    ;; h280: 3 persones
    ;; h281: 3 persones
    ;; h282: 2 persones
    ;; h283: 4 persones
    ;; h284: 2 persones
    ;; h285: 3 persones
    ;; h286: 4 persones
    ;; h287: 4 persones
    ;; h288: 1 persones
    ;; h289: 3 persones
    ;; h290: 2 persones
    ;; h291: 2 persones
    ;; h292: 4 persones
    ;; h293: 3 persones
    ;; h294: 4 persones
    ;; h295: 2 persones
    ;; h296: 1 persones
    ;; h297: 4 persones
    ;; h298: 3 persones
    ;; h299: 1 persones
    ;; h300: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h48)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h144)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h158)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h164)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h182)
    (compatible r1 h185)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h205)
    (compatible r1 h206)
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
    (compatible r1 h219)
    (compatible r1 h222)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h240)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h251)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h266)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h270)
    (compatible r1 h273)
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
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h297)
    (compatible r1 h298)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h48)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h144)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h154)
    (compatible r2 h158)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h164)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h182)
    (compatible r2 h185)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h205)
    (compatible r2 h206)
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
    (compatible r2 h219)
    (compatible r2 h222)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h236)
    (compatible r2 h240)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h263)
    (compatible r2 h266)
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h270)
    (compatible r2 h273)
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
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h292)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h297)
    (compatible r2 h298)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
