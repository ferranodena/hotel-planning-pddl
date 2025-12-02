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
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 3 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 4 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 2 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 4 persones
    ;; h97: 2 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 4 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 3 persones
    ;; h115: 1 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 4 persones
    ;; h121: 4 persones
    ;; h122: 3 persones
    ;; h123: 2 persones
    ;; h124: 1 persones
    ;; h125: 4 persones
    ;; h126: 4 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 3 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 3 persones
    ;; h139: 1 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 2 persones
    ;; h144: 3 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 2 persones
    ;; h148: 4 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 2 persones
    ;; h157: 4 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 4 persones
    ;; h161: 1 persones
    ;; h162: 1 persones
    ;; h163: 4 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 1 persones
    ;; h171: 1 persones
    ;; h172: 4 persones
    ;; h173: 1 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 3 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 1 persones
    ;; h181: 4 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 2 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 2 persones
    ;; h190: 2 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 3 persones
    ;; h195: 4 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 3 persones
    ;; h203: 4 persones
    ;; h204: 3 persones
    ;; h205: 1 persones
    ;; h206: 4 persones
    ;; h207: 4 persones
    ;; h208: 1 persones
    ;; h209: 2 persones
    ;; h210: 3 persones
    ;; h211: 2 persones
    ;; h212: 1 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 4 persones
    ;; h216: 2 persones
    ;; h217: 2 persones
    ;; h218: 1 persones
    ;; h219: 4 persones
    ;; h220: 1 persones
    ;; h221: 1 persones
    ;; h222: 2 persones
    ;; h223: 3 persones
    ;; h224: 1 persones
    ;; h225: 1 persones
    ;; h226: 4 persones
    ;; h227: 2 persones
    ;; h228: 2 persones
    ;; h229: 4 persones
    ;; h230: 3 persones
    ;; h231: 3 persones
    ;; h232: 2 persones
    ;; h233: 2 persones
    ;; h234: 1 persones
    ;; h235: 1 persones
    ;; h236: 3 persones
    ;; h237: 4 persones
    ;; h238: 4 persones
    ;; h239: 3 persones
    ;; h240: 1 persones
    ;; h241: 3 persones
    ;; h242: 1 persones
    ;; h243: 4 persones
    ;; h244: 3 persones
    ;; h245: 1 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 3 persones
    ;; h249: 3 persones
    ;; h250: 2 persones
    ;; h251: 1 persones
    ;; h252: 3 persones
    ;; h253: 3 persones
    ;; h254: 1 persones
    ;; h255: 2 persones
    ;; h256: 4 persones
    ;; h257: 3 persones
    ;; h258: 3 persones
    ;; h259: 2 persones
    ;; h260: 3 persones
    ;; h261: 1 persones
    ;; h262: 2 persones
    ;; h263: 3 persones
    ;; h264: 4 persones
    ;; h265: 1 persones
    ;; h266: 4 persones
    ;; h267: 3 persones
    ;; h268: 1 persones
    ;; h269: 3 persones
    ;; h270: 2 persones
    ;; h271: 4 persones
    ;; h272: 1 persones
    ;; h273: 1 persones
    ;; h274: 3 persones
    ;; h275: 4 persones
    ;; h276: 3 persones
    ;; h277: 1 persones
    ;; h278: 4 persones
    ;; h279: 3 persones
    ;; h280: 1 persones
    ;; h281: 3 persones
    ;; h282: 3 persones
    ;; h283: 2 persones
    ;; h284: 2 persones
    ;; h285: 1 persones
    ;; h286: 4 persones
    ;; h287: 2 persones
    ;; h288: 3 persones
    ;; h289: 3 persones
    ;; h290: 4 persones
    ;; h291: 1 persones
    ;; h292: 4 persones
    ;; h293: 4 persones
    ;; h294: 1 persones
    ;; h295: 1 persones
    ;; h296: 2 persones
    ;; h297: 3 persones
    ;; h298: 3 persones
    ;; h299: 1 persones
    ;; h300: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h38)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h105)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h118)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h129)
    (compatible r1 h133)
    (compatible r1 h138)
    (compatible r1 h144)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h166)
    (compatible r1 h172)
    (compatible r1 h174)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h179)
    (compatible r1 h181)
    (compatible r1 h185)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h206)
    (compatible r1 h207)
    (compatible r1 h210)
    (compatible r1 h215)
    (compatible r1 h219)
    (compatible r1 h223)
    (compatible r1 h226)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h241)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h256)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h260)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h266)
    (compatible r1 h267)
    (compatible r1 h269)
    (compatible r1 h271)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h286)
    (compatible r1 h288)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h297)
    (compatible r1 h298)
    (compatible r1 h300)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h17)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h33)
    (compatible r2 h38)
    (compatible r2 h43)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h92)
    (compatible r2 h96)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h109)
    (compatible r2 h113)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h146)
    (compatible r2 h148)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h160)
    (compatible r2 h163)
    (compatible r2 h172)
    (compatible r2 h174)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h181)
    (compatible r2 h185)
    (compatible r2 h195)
    (compatible r2 h199)
    (compatible r2 h203)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h215)
    (compatible r2 h219)
    (compatible r2 h226)
    (compatible r2 h229)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h243)
    (compatible r2 h256)
    (compatible r2 h264)
    (compatible r2 h266)
    (compatible r2 h271)
    (compatible r2 h275)
    (compatible r2 h278)
    (compatible r2 h286)
    (compatible r2 h290)
    (compatible r2 h292)
    (compatible r2 h293)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
