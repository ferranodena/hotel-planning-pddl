(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 4 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 3 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 2 persones
    ;; h89: 2 persones
    ;; h90: 3 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 4 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 1 persones
    ;; h116: 4 persones
    ;; h117: 2 persones
    ;; h118: 4 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 4 persones
    ;; h123: 2 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 3 persones
    ;; h129: 4 persones
    ;; h130: 4 persones
    ;; h131: 3 persones
    ;; h132: 2 persones
    ;; h133: 1 persones
    ;; h134: 1 persones
    ;; h135: 4 persones
    ;; h136: 4 persones
    ;; h137: 3 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 1 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 2 persones
    ;; h153: 2 persones
    ;; h154: 4 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 2 persones
    ;; h158: 4 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 4 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 3 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 4 persones
    ;; h170: 4 persones
    ;; h171: 2 persones
    ;; h172: 4 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 2 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 1 persones
    ;; h181: 1 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 4 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 3 persones
    ;; h190: 1 persones
    ;; h191: 4 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 1 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 4 persones
    ;; h204: 1 persones
    ;; h205: 4 persones
    ;; h206: 4 persones
    ;; h207: 3 persones
    ;; h208: 1 persones
    ;; h209: 3 persones
    ;; h210: 3 persones
    ;; h211: 3 persones
    ;; h212: 1 persones
    ;; h213: 2 persones
    ;; h214: 4 persones
    ;; h215: 3 persones
    ;; h216: 3 persones
    ;; h217: 1 persones
    ;; h218: 3 persones
    ;; h219: 3 persones
    ;; h220: 1 persones
    ;; h221: 3 persones
    ;; h222: 3 persones
    ;; h223: 2 persones
    ;; h224: 4 persones
    ;; h225: 4 persones
    ;; h226: 3 persones
    ;; h227: 2 persones
    ;; h228: 1 persones
    ;; h229: 3 persones
    ;; h230: 4 persones
    ;; h231: 2 persones
    ;; h232: 2 persones
    ;; h233: 3 persones
    ;; h234: 2 persones
    ;; h235: 3 persones
    ;; h236: 2 persones
    ;; h237: 1 persones
    ;; h238: 4 persones
    ;; h239: 2 persones
    ;; h240: 1 persones
    ;; h241: 2 persones
    ;; h242: 3 persones
    ;; h243: 4 persones
    ;; h244: 2 persones
    ;; h245: 1 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 4 persones
    ;; h249: 2 persones
    ;; h250: 2 persones
    ;; h251: 2 persones
    ;; h252: 3 persones
    ;; h253: 3 persones
    ;; h254: 4 persones
    ;; h255: 4 persones
    ;; h256: 2 persones
    ;; h257: 4 persones
    ;; h258: 2 persones
    ;; h259: 4 persones
    ;; h260: 1 persones
    ;; h261: 4 persones
    ;; h262: 3 persones
    ;; h263: 4 persones
    ;; h264: 3 persones
    ;; h265: 3 persones
    ;; h266: 4 persones
    ;; h267: 3 persones
    ;; h268: 1 persones
    ;; h269: 1 persones
    ;; h270: 3 persones
    ;; h271: 3 persones
    ;; h272: 1 persones
    ;; h273: 1 persones
    ;; h274: 1 persones
    ;; h275: 2 persones
    ;; h276: 2 persones
    ;; h277: 3 persones
    ;; h278: 4 persones
    ;; h279: 4 persones
    ;; h280: 1 persones
    ;; h281: 4 persones
    ;; h282: 1 persones
    ;; h283: 1 persones
    ;; h284: 2 persones
    ;; h285: 3 persones
    ;; h286: 2 persones
    ;; h287: 1 persones
    ;; h288: 3 persones
    ;; h289: 3 persones
    ;; h290: 3 persones
    ;; h291: 1 persones
    ;; h292: 1 persones
    ;; h293: 4 persones
    ;; h294: 3 persones
    ;; h295: 4 persones
    ;; h296: 3 persones
    ;; h297: 2 persones
    ;; h298: 4 persones
    ;; h299: 4 persones
    ;; h300: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h15)
    (compatible r1 h24)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h49)
    (compatible r1 h54)
    (compatible r1 h59)
    (compatible r1 h66)
    (compatible r1 h68)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h85)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h108)
    (compatible r1 h116)
    (compatible r1 h118)
    (compatible r1 h122)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h161)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h172)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h179)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h191)
    (compatible r1 h193)
    (compatible r1 h203)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h214)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h230)
    (compatible r1 h238)
    (compatible r1 h243)
    (compatible r1 h248)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h257)
    (compatible r1 h259)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h266)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h281)
    (compatible r1 h293)
    (compatible r1 h295)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h24)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h37)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h66)
    (compatible r2 h68)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h111)
    (compatible r2 h116)
    (compatible r2 h118)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h143)
    (compatible r2 h148)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h161)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h179)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h189)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h198)
    (compatible r2 h203)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h233)
    (compatible r2 h235)
    (compatible r2 h238)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h248)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h257)
    (compatible r2 h259)
    (compatible r2 h261)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h265)
    (compatible r2 h266)
    (compatible r2 h267)
    (compatible r2 h270)
    (compatible r2 h271)
    (compatible r2 h277)
    (compatible r2 h278)
    (compatible r2 h279)
    (compatible r2 h281)
    (compatible r2 h285)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h298)
    (compatible r2 h299)
    (compatible r2 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d10)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
