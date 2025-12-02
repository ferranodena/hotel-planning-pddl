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
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 1 persones
    ;; h45: 3 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 3 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 2 persones
    ;; h85: 2 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 1 persones
    ;; h89: 4 persones
    ;; h90: 3 persones
    ;; h91: 2 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 3 persones
    ;; h97: 4 persones
    ;; h98: 3 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 1 persones
    ;; h117: 3 persones
    ;; h118: 1 persones
    ;; h119: 3 persones
    ;; h120: 4 persones
    ;; h121: 2 persones
    ;; h122: 4 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 3 persones
    ;; h128: 3 persones
    ;; h129: 4 persones
    ;; h130: 2 persones
    ;; h131: 2 persones
    ;; h132: 3 persones
    ;; h133: 3 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 2 persones
    ;; h140: 3 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 1 persones
    ;; h146: 1 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 1 persones
    ;; h150: 2 persones
    ;; h151: 3 persones
    ;; h152: 4 persones
    ;; h153: 4 persones
    ;; h154: 2 persones
    ;; h155: 1 persones
    ;; h156: 1 persones
    ;; h157: 3 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 1 persones
    ;; h167: 2 persones
    ;; h168: 4 persones
    ;; h169: 1 persones
    ;; h170: 3 persones
    ;; h171: 3 persones
    ;; h172: 4 persones
    ;; h173: 1 persones
    ;; h174: 2 persones
    ;; h175: 1 persones
    ;; h176: 1 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 4 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 4 persones
    ;; h183: 2 persones
    ;; h184: 4 persones
    ;; h185: 2 persones
    ;; h186: 3 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 3 persones
    ;; h191: 1 persones
    ;; h192: 4 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 3 persones
    ;; h198: 2 persones
    ;; h199: 1 persones
    ;; h200: 3 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 2 persones
    ;; h204: 1 persones
    ;; h205: 3 persones
    ;; h206: 3 persones
    ;; h207: 2 persones
    ;; h208: 1 persones
    ;; h209: 1 persones
    ;; h210: 1 persones
    ;; h211: 4 persones
    ;; h212: 2 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 2 persones
    ;; h216: 2 persones
    ;; h217: 2 persones
    ;; h218: 4 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 4 persones
    ;; h222: 1 persones
    ;; h223: 3 persones
    ;; h224: 3 persones
    ;; h225: 3 persones
    ;; h226: 4 persones
    ;; h227: 2 persones
    ;; h228: 2 persones
    ;; h229: 3 persones
    ;; h230: 2 persones
    ;; h231: 4 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 4 persones
    ;; h235: 2 persones
    ;; h236: 1 persones
    ;; h237: 4 persones
    ;; h238: 1 persones
    ;; h239: 4 persones
    ;; h240: 4 persones
    ;; h241: 4 persones
    ;; h242: 2 persones
    ;; h243: 2 persones
    ;; h244: 4 persones
    ;; h245: 1 persones
    ;; h246: 3 persones
    ;; h247: 1 persones
    ;; h248: 3 persones
    ;; h249: 2 persones
    ;; h250: 1 persones
    ;; h251: 2 persones
    ;; h252: 3 persones
    ;; h253: 2 persones
    ;; h254: 4 persones
    ;; h255: 4 persones
    ;; h256: 3 persones
    ;; h257: 2 persones
    ;; h258: 3 persones
    ;; h259: 2 persones
    ;; h260: 4 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 1 persones
    ;; h264: 3 persones
    ;; h265: 1 persones
    ;; h266: 4 persones
    ;; h267: 3 persones
    ;; h268: 4 persones
    ;; h269: 4 persones
    ;; h270: 2 persones
    ;; h271: 2 persones
    ;; h272: 2 persones
    ;; h273: 3 persones
    ;; h274: 2 persones
    ;; h275: 4 persones
    ;; h276: 4 persones
    ;; h277: 3 persones
    ;; h278: 3 persones
    ;; h279: 2 persones
    ;; h280: 3 persones
    ;; h281: 1 persones
    ;; h282: 4 persones
    ;; h283: 1 persones
    ;; h284: 4 persones
    ;; h285: 2 persones
    ;; h286: 1 persones
    ;; h287: 4 persones
    ;; h288: 4 persones
    ;; h289: 4 persones
    ;; h290: 3 persones
    ;; h291: 3 persones
    ;; h292: 4 persones
    ;; h293: 3 persones
    ;; h294: 3 persones
    ;; h295: 3 persones
    ;; h296: 3 persones
    ;; h297: 1 persones
    ;; h298: 3 persones
    ;; h299: 1 persones
    ;; h300: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h10)
    (compatible r1 h14)
    (compatible r1 h18)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h46)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h57)
    (compatible r1 h60)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h83)
    (compatible r1 h89)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h113)
    (compatible r1 h115)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h129)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h168)
    (compatible r1 h172)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h182)
    (compatible r1 h184)
    (compatible r1 h192)
    (compatible r1 h196)
    (compatible r1 h211)
    (compatible r1 h218)
    (compatible r1 h221)
    (compatible r1 h226)
    (compatible r1 h231)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h237)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h244)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h260)
    (compatible r1 h266)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h282)
    (compatible r1 h284)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h289)
    (compatible r1 h292)
    (compatible r1 h300)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h147)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h174)
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
    (compatible r2 h198)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h203)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
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
    (compatible r2 h237)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h246)
    (compatible r2 h248)
    (compatible r2 h249)
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
    (compatible r2 h264)
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
    (compatible r2 h282)
    (compatible r2 h284)
    (compatible r2 h285)
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
    (compatible r2 h298)
    (compatible r2 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
