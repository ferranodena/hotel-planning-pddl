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
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 1 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 1 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 3 persones
    ;; h93: 3 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 4 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 2 persones
    ;; h105: 4 persones
    ;; h106: 3 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 4 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 2 persones
    ;; h114: 2 persones
    ;; h115: 3 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 4 persones
    ;; h124: 3 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 1 persones
    ;; h128: 1 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 3 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 3 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 3 persones
    ;; h152: 1 persones
    ;; h153: 4 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 4 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 2 persones
    ;; h161: 1 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 1 persones
    ;; h172: 2 persones
    ;; h173: 1 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 2 persones
    ;; h181: 1 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 3 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 3 persones
    ;; h191: 1 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 3 persones
    ;; h195: 1 persones
    ;; h196: 3 persones
    ;; h197: 2 persones
    ;; h198: 1 persones
    ;; h199: 1 persones
    ;; h200: 2 persones
    ;; h201: 2 persones
    ;; h202: 2 persones
    ;; h203: 3 persones
    ;; h204: 2 persones
    ;; h205: 3 persones
    ;; h206: 1 persones
    ;; h207: 2 persones
    ;; h208: 1 persones
    ;; h209: 1 persones
    ;; h210: 3 persones
    ;; h211: 4 persones
    ;; h212: 1 persones
    ;; h213: 3 persones
    ;; h214: 4 persones
    ;; h215: 1 persones
    ;; h216: 3 persones
    ;; h217: 4 persones
    ;; h218: 1 persones
    ;; h219: 1 persones
    ;; h220: 1 persones
    ;; h221: 2 persones
    ;; h222: 4 persones
    ;; h223: 3 persones
    ;; h224: 4 persones
    ;; h225: 3 persones
    ;; h226: 2 persones
    ;; h227: 4 persones
    ;; h228: 2 persones
    ;; h229: 3 persones
    ;; h230: 1 persones
    ;; h231: 3 persones
    ;; h232: 4 persones
    ;; h233: 1 persones
    ;; h234: 3 persones
    ;; h235: 2 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 1 persones
    ;; h239: 3 persones
    ;; h240: 1 persones
    ;; h241: 3 persones
    ;; h242: 3 persones
    ;; h243: 1 persones
    ;; h244: 3 persones
    ;; h245: 2 persones
    ;; h246: 3 persones
    ;; h247: 1 persones
    ;; h248: 1 persones
    ;; h249: 3 persones
    ;; h250: 4 persones
    ;; h251: 2 persones
    ;; h252: 2 persones
    ;; h253: 1 persones
    ;; h254: 2 persones
    ;; h255: 3 persones
    ;; h256: 3 persones
    ;; h257: 2 persones
    ;; h258: 1 persones
    ;; h259: 4 persones
    ;; h260: 1 persones
    ;; h261: 1 persones
    ;; h262: 1 persones
    ;; h263: 2 persones
    ;; h264: 4 persones
    ;; h265: 2 persones
    ;; h266: 3 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 3 persones
    ;; h270: 1 persones
    ;; h271: 3 persones
    ;; h272: 2 persones
    ;; h273: 4 persones
    ;; h274: 4 persones
    ;; h275: 1 persones
    ;; h276: 2 persones
    ;; h277: 1 persones
    ;; h278: 1 persones
    ;; h279: 4 persones
    ;; h280: 4 persones
    ;; h281: 1 persones
    ;; h282: 4 persones
    ;; h283: 4 persones
    ;; h284: 3 persones
    ;; h285: 4 persones
    ;; h286: 4 persones
    ;; h287: 3 persones
    ;; h288: 1 persones
    ;; h289: 4 persones
    ;; h290: 4 persones
    ;; h291: 3 persones
    ;; h292: 2 persones
    ;; h293: 1 persones
    ;; h294: 1 persones
    ;; h295: 1 persones
    ;; h296: 4 persones
    ;; h297: 4 persones
    ;; h298: 4 persones
    ;; h299: 3 persones
    ;; h300: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h34)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h59)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h73)
    (compatible r1 h77)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h89)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h101)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h112)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h120)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h142)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h159)
    (compatible r1 h164)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h187)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h203)
    (compatible r1 h205)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h227)
    (compatible r1 h229)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h234)
    (compatible r1 h239)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h244)
    (compatible r1 h246)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h255)
    (compatible r1 h256)
    (compatible r1 h259)
    (compatible r1 h264)
    (compatible r1 h266)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h271)
    (compatible r1 h273)
    (compatible r1 h274)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h282)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h296)
    (compatible r1 h297)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
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
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h138)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h207)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h239)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h256)
    (compatible r2 h257)
    (compatible r2 h259)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h265)
    (compatible r2 h266)
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h271)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h276)
    (compatible r2 h279)
    (compatible r2 h280)
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
    (compatible r2 h296)
    (compatible r2 h297)
    (compatible r2 h298)
    (compatible r2 h299)
    (compatible r2 h300)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
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
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h83)
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
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h101)
    (compatible r3 h102)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h111)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h121)
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
    (compatible r3 h132)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h135)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h154)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h165)
    (compatible r3 h166)
    (compatible r3 h167)
    (compatible r3 h168)
    (compatible r3 h169)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h172)
    (compatible r3 h173)
    (compatible r3 h174)
    (compatible r3 h175)
    (compatible r3 h176)
    (compatible r3 h177)
    (compatible r3 h178)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h185)
    (compatible r3 h186)
    (compatible r3 h187)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h195)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h198)
    (compatible r3 h199)
    (compatible r3 h200)
    (compatible r3 h201)
    (compatible r3 h202)
    (compatible r3 h203)
    (compatible r3 h204)
    (compatible r3 h205)
    (compatible r3 h206)
    (compatible r3 h207)
    (compatible r3 h208)
    (compatible r3 h209)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h212)
    (compatible r3 h213)
    (compatible r3 h214)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h217)
    (compatible r3 h218)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h221)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h226)
    (compatible r3 h227)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h230)
    (compatible r3 h231)
    (compatible r3 h232)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h235)
    (compatible r3 h236)
    (compatible r3 h237)
    (compatible r3 h238)
    (compatible r3 h239)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h242)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h245)
    (compatible r3 h246)
    (compatible r3 h247)
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
    (compatible r3 h264)
    (compatible r3 h265)
    (compatible r3 h266)
    (compatible r3 h267)
    (compatible r3 h268)
    (compatible r3 h269)
    (compatible r3 h270)
    (compatible r3 h271)
    (compatible r3 h272)
    (compatible r3 h273)
    (compatible r3 h274)
    (compatible r3 h275)
    (compatible r3 h276)
    (compatible r3 h277)
    (compatible r3 h278)
    (compatible r3 h279)
    (compatible r3 h280)
    (compatible r3 h281)
    (compatible r3 h282)
    (compatible r3 h283)
    (compatible r3 h284)
    (compatible r3 h285)
    (compatible r3 h286)
    (compatible r3 h287)
    (compatible r3 h288)
    (compatible r3 h289)
    (compatible r3 h290)
    (compatible r3 h291)
    (compatible r3 h292)
    (compatible r3 h293)
    (compatible r3 h294)
    (compatible r3 h295)
    (compatible r3 h296)
    (compatible r3 h297)
    (compatible r3 h298)
    (compatible r3 h299)
    (compatible r3 h300)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h17)
    (compatible r4 h20)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h34)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h59)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h73)
    (compatible r4 h77)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h89)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h101)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h109)
    (compatible r4 h112)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h120)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h142)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h153)
    (compatible r4 h154)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h159)
    (compatible r4 h164)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h174)
    (compatible r4 h175)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h185)
    (compatible r4 h187)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h196)
    (compatible r4 h203)
    (compatible r4 h205)
    (compatible r4 h210)
    (compatible r4 h211)
    (compatible r4 h213)
    (compatible r4 h214)
    (compatible r4 h216)
    (compatible r4 h217)
    (compatible r4 h222)
    (compatible r4 h223)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h227)
    (compatible r4 h229)
    (compatible r4 h231)
    (compatible r4 h232)
    (compatible r4 h234)
    (compatible r4 h239)
    (compatible r4 h241)
    (compatible r4 h242)
    (compatible r4 h244)
    (compatible r4 h246)
    (compatible r4 h249)
    (compatible r4 h250)
    (compatible r4 h255)
    (compatible r4 h256)
    (compatible r4 h259)
    (compatible r4 h264)
    (compatible r4 h266)
    (compatible r4 h268)
    (compatible r4 h269)
    (compatible r4 h271)
    (compatible r4 h273)
    (compatible r4 h274)
    (compatible r4 h279)
    (compatible r4 h280)
    (compatible r4 h282)
    (compatible r4 h283)
    (compatible r4 h284)
    (compatible r4 h285)
    (compatible r4 h286)
    (compatible r4 h287)
    (compatible r4 h289)
    (compatible r4 h290)
    (compatible r4 h291)
    (compatible r4 h296)
    (compatible r4 h297)
    (compatible r4 h298)
    (compatible r4 h299)
    (compatible r4 h300)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
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
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
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
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
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
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
    (compatible r5 h154)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h159)
    (compatible r5 h160)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h167)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
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
    (compatible r5 h187)
    (compatible r5 h188)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h200)
    (compatible r5 h201)
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
    (compatible r5 h213)
    (compatible r5 h214)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h218)
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
    (compatible r5 h231)
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
    (compatible r5 h245)
    (compatible r5 h246)
    (compatible r5 h247)
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
    (compatible r5 h276)
    (compatible r5 h277)
    (compatible r5 h278)
    (compatible r5 h279)
    (compatible r5 h280)
    (compatible r5 h281)
    (compatible r5 h282)
    (compatible r5 h283)
    (compatible r5 h284)
    (compatible r5 h285)
    (compatible r5 h286)
    (compatible r5 h287)
    (compatible r5 h288)
    (compatible r5 h289)
    (compatible r5 h290)
    (compatible r5 h291)
    (compatible r5 h292)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h295)
    (compatible r5 h296)
    (compatible r5 h297)
    (compatible r5 h298)
    (compatible r5 h299)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d3)
    (dies-reserva r3 d1)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
