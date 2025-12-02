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
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 2 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 2 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 1 persones
    ;; h91: 2 persones
    ;; h92: 2 persones
    ;; h93: 4 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 1 persones
    ;; h102: 3 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 4 persones
    ;; h106: 4 persones
    ;; h107: 1 persones
    ;; h108: 4 persones
    ;; h109: 4 persones
    ;; h110: 4 persones
    ;; h111: 2 persones
    ;; h112: 1 persones
    ;; h113: 3 persones
    ;; h114: 3 persones
    ;; h115: 3 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 1 persones
    ;; h126: 4 persones
    ;; h127: 3 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 3 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 4 persones
    ;; h136: 3 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 3 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 4 persones
    ;; h149: 4 persones
    ;; h150: 3 persones
    ;; h151: 4 persones
    ;; h152: 3 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 2 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 3 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 3 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 4 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 3 persones
    ;; h180: 4 persones
    ;; h181: 3 persones
    ;; h182: 4 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 4 persones
    ;; h189: 1 persones
    ;; h190: 2 persones
    ;; h191: 1 persones
    ;; h192: 4 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 4 persones
    ;; h201: 1 persones
    ;; h202: 3 persones
    ;; h203: 3 persones
    ;; h204: 1 persones
    ;; h205: 4 persones
    ;; h206: 2 persones
    ;; h207: 3 persones
    ;; h208: 2 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 2 persones
    ;; h212: 3 persones
    ;; h213: 4 persones
    ;; h214: 2 persones
    ;; h215: 3 persones
    ;; h216: 3 persones
    ;; h217: 3 persones
    ;; h218: 2 persones
    ;; h219: 3 persones
    ;; h220: 1 persones
    ;; h221: 4 persones
    ;; h222: 3 persones
    ;; h223: 3 persones
    ;; h224: 2 persones
    ;; h225: 2 persones
    ;; h226: 3 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 3 persones
    ;; h230: 3 persones
    ;; h231: 4 persones
    ;; h232: 4 persones
    ;; h233: 3 persones
    ;; h234: 2 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 3 persones
    ;; h238: 2 persones
    ;; h239: 4 persones
    ;; h240: 3 persones
    ;; h241: 1 persones
    ;; h242: 3 persones
    ;; h243: 1 persones
    ;; h244: 1 persones
    ;; h245: 4 persones
    ;; h246: 2 persones
    ;; h247: 3 persones
    ;; h248: 2 persones
    ;; h249: 3 persones
    ;; h250: 4 persones
    ;; h251: 3 persones
    ;; h252: 2 persones
    ;; h253: 4 persones
    ;; h254: 4 persones
    ;; h255: 3 persones
    ;; h256: 2 persones
    ;; h257: 1 persones
    ;; h258: 4 persones
    ;; h259: 4 persones
    ;; h260: 4 persones
    ;; h261: 1 persones
    ;; h262: 2 persones
    ;; h263: 2 persones
    ;; h264: 2 persones
    ;; h265: 1 persones
    ;; h266: 1 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 4 persones
    ;; h270: 4 persones
    ;; h271: 2 persones
    ;; h272: 3 persones
    ;; h273: 1 persones
    ;; h274: 1 persones
    ;; h275: 3 persones
    ;; h276: 2 persones
    ;; h277: 1 persones
    ;; h278: 1 persones
    ;; h279: 1 persones
    ;; h280: 2 persones
    ;; h281: 1 persones
    ;; h282: 3 persones
    ;; h283: 4 persones
    ;; h284: 3 persones
    ;; h285: 4 persones
    ;; h286: 3 persones
    ;; h287: 4 persones
    ;; h288: 3 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 1 persones
    ;; h292: 2 persones
    ;; h293: 2 persones
    ;; h294: 1 persones
    ;; h295: 1 persones
    ;; h296: 2 persones
    ;; h297: 3 persones
    ;; h298: 1 persones
    ;; h299: 4 persones
    ;; h300: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h27)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h38)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h89)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h167)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h196)
    (compatible r1 h198)
    (compatible r1 h200)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h205)
    (compatible r1 h207)
    (compatible r1 h209)
    (compatible r1 h212)
    (compatible r1 h213)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h219)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h226)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h237)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h242)
    (compatible r1 h245)
    (compatible r1 h247)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h251)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h258)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h270)
    (compatible r1 h272)
    (compatible r1 h275)
    (compatible r1 h282)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h290)
    (compatible r1 h297)
    (compatible r1 h299)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h5)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h45)
    (compatible r2 h50)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h82)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h123)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h135)
    (compatible r2 h139)
    (compatible r2 h144)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h171)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h192)
    (compatible r2 h196)
    (compatible r2 h200)
    (compatible r2 h205)
    (compatible r2 h213)
    (compatible r2 h221)
    (compatible r2 h228)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h235)
    (compatible r2 h239)
    (compatible r2 h245)
    (compatible r2 h250)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h258)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h270)
    (compatible r2 h283)
    (compatible r2 h285)
    (compatible r2 h287)
    (compatible r2 h299)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
