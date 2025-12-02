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
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 2 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 3 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 1 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 4 persones
    ;; h102: 3 persones
    ;; h103: 3 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 1 persones
    ;; h112: 4 persones
    ;; h113: 4 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 4 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 3 persones
    ;; h124: 4 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 3 persones
    ;; h130: 3 persones
    ;; h131: 2 persones
    ;; h132: 4 persones
    ;; h133: 4 persones
    ;; h134: 2 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 2 persones
    ;; h140: 4 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 4 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 1 persones
    ;; h148: 1 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 2 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 3 persones
    ;; h162: 2 persones
    ;; h163: 4 persones
    ;; h164: 4 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 3 persones
    ;; h168: 4 persones
    ;; h169: 4 persones
    ;; h170: 4 persones
    ;; h171: 2 persones
    ;; h172: 3 persones
    ;; h173: 3 persones
    ;; h174: 4 persones
    ;; h175: 1 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 1 persones
    ;; h181: 4 persones
    ;; h182: 3 persones
    ;; h183: 2 persones
    ;; h184: 3 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 4 persones
    ;; h188: 4 persones
    ;; h189: 4 persones
    ;; h190: 2 persones
    ;; h191: 1 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 1 persones
    ;; h197: 2 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 2 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 3 persones
    ;; h204: 1 persones
    ;; h205: 4 persones
    ;; h206: 1 persones
    ;; h207: 4 persones
    ;; h208: 4 persones
    ;; h209: 2 persones
    ;; h210: 4 persones
    ;; h211: 2 persones
    ;; h212: 2 persones
    ;; h213: 1 persones
    ;; h214: 4 persones
    ;; h215: 2 persones
    ;; h216: 1 persones
    ;; h217: 1 persones
    ;; h218: 4 persones
    ;; h219: 1 persones
    ;; h220: 2 persones
    ;; h221: 4 persones
    ;; h222: 2 persones
    ;; h223: 3 persones
    ;; h224: 2 persones
    ;; h225: 4 persones
    ;; h226: 4 persones
    ;; h227: 3 persones
    ;; h228: 4 persones
    ;; h229: 1 persones
    ;; h230: 2 persones
    ;; h231: 2 persones
    ;; h232: 4 persones
    ;; h233: 1 persones
    ;; h234: 4 persones
    ;; h235: 3 persones
    ;; h236: 4 persones
    ;; h237: 3 persones
    ;; h238: 2 persones
    ;; h239: 4 persones
    ;; h240: 2 persones
    ;; h241: 3 persones
    ;; h242: 2 persones
    ;; h243: 1 persones
    ;; h244: 3 persones
    ;; h245: 3 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 1 persones
    ;; h249: 2 persones
    ;; h250: 2 persones
    ;; h251: 1 persones
    ;; h252: 2 persones
    ;; h253: 2 persones
    ;; h254: 4 persones
    ;; h255: 2 persones
    ;; h256: 3 persones
    ;; h257: 4 persones
    ;; h258: 4 persones
    ;; h259: 4 persones
    ;; h260: 4 persones
    ;; h261: 4 persones
    ;; h262: 1 persones
    ;; h263: 3 persones
    ;; h264: 1 persones
    ;; h265: 3 persones
    ;; h266: 1 persones
    ;; h267: 4 persones
    ;; h268: 3 persones
    ;; h269: 1 persones
    ;; h270: 1 persones
    ;; h271: 1 persones
    ;; h272: 3 persones
    ;; h273: 3 persones
    ;; h274: 1 persones
    ;; h275: 1 persones
    ;; h276: 4 persones
    ;; h277: 3 persones
    ;; h278: 2 persones
    ;; h279: 1 persones
    ;; h280: 1 persones
    ;; h281: 2 persones
    ;; h282: 2 persones
    ;; h283: 1 persones
    ;; h284: 1 persones
    ;; h285: 2 persones
    ;; h286: 2 persones
    ;; h287: 4 persones
    ;; h288: 2 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 4 persones
    ;; h292: 1 persones
    ;; h293: 4 persones
    ;; h294: 2 persones
    ;; h295: 3 persones
    ;; h296: 4 persones
    ;; h297: 2 persones
    ;; h298: 4 persones
    ;; h299: 2 persones
    ;; h300: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h105)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
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
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h176)
    (compatible r1 h179)
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
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h203)
    (compatible r1 h205)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h218)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h234)
    (compatible r1 h235)
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
    (compatible r1 h249)
    (compatible r1 h250)
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
    (compatible r1 h263)
    (compatible r1 h265)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h272)
    (compatible r1 h273)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h296)
    (compatible r1 h297)
    (compatible r1 h298)
    (compatible r1 h299)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h10)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h20)
    (compatible r2 h29)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h135)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h158)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h179)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h198)
    (compatible r2 h201)
    (compatible r2 h203)
    (compatible r2 h205)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h210)
    (compatible r2 h214)
    (compatible r2 h218)
    (compatible r2 h221)
    (compatible r2 h223)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h232)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h239)
    (compatible r2 h241)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h254)
    (compatible r2 h256)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h263)
    (compatible r2 h265)
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h276)
    (compatible r2 h277)
    (compatible r2 h287)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h293)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h298)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
