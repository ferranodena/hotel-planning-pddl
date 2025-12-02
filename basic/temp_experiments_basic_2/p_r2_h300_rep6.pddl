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
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 2 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 4 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 1 persones
    ;; h89: 2 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 1 persones
    ;; h96: 1 persones
    ;; h97: 4 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 2 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 3 persones
    ;; h104: 2 persones
    ;; h105: 1 persones
    ;; h106: 4 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 4 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 2 persones
    ;; h126: 2 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 1 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 3 persones
    ;; h137: 3 persones
    ;; h138: 4 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 4 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 3 persones
    ;; h152: 3 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 2 persones
    ;; h158: 4 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 1 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 4 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 3 persones
    ;; h171: 1 persones
    ;; h172: 3 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 1 persones
    ;; h176: 4 persones
    ;; h177: 3 persones
    ;; h178: 2 persones
    ;; h179: 2 persones
    ;; h180: 1 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 1 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 3 persones
    ;; h190: 3 persones
    ;; h191: 2 persones
    ;; h192: 2 persones
    ;; h193: 1 persones
    ;; h194: 3 persones
    ;; h195: 3 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 4 persones
    ;; h204: 1 persones
    ;; h205: 2 persones
    ;; h206: 2 persones
    ;; h207: 2 persones
    ;; h208: 1 persones
    ;; h209: 3 persones
    ;; h210: 3 persones
    ;; h211: 4 persones
    ;; h212: 4 persones
    ;; h213: 3 persones
    ;; h214: 2 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 1 persones
    ;; h218: 4 persones
    ;; h219: 1 persones
    ;; h220: 2 persones
    ;; h221: 3 persones
    ;; h222: 3 persones
    ;; h223: 1 persones
    ;; h224: 1 persones
    ;; h225: 1 persones
    ;; h226: 3 persones
    ;; h227: 3 persones
    ;; h228: 4 persones
    ;; h229: 3 persones
    ;; h230: 2 persones
    ;; h231: 4 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 4 persones
    ;; h237: 4 persones
    ;; h238: 3 persones
    ;; h239: 3 persones
    ;; h240: 3 persones
    ;; h241: 4 persones
    ;; h242: 1 persones
    ;; h243: 2 persones
    ;; h244: 2 persones
    ;; h245: 1 persones
    ;; h246: 4 persones
    ;; h247: 4 persones
    ;; h248: 3 persones
    ;; h249: 4 persones
    ;; h250: 3 persones
    ;; h251: 2 persones
    ;; h252: 3 persones
    ;; h253: 3 persones
    ;; h254: 3 persones
    ;; h255: 2 persones
    ;; h256: 2 persones
    ;; h257: 4 persones
    ;; h258: 3 persones
    ;; h259: 1 persones
    ;; h260: 3 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 4 persones
    ;; h264: 3 persones
    ;; h265: 1 persones
    ;; h266: 4 persones
    ;; h267: 3 persones
    ;; h268: 2 persones
    ;; h269: 2 persones
    ;; h270: 1 persones
    ;; h271: 2 persones
    ;; h272: 3 persones
    ;; h273: 4 persones
    ;; h274: 1 persones
    ;; h275: 4 persones
    ;; h276: 4 persones
    ;; h277: 2 persones
    ;; h278: 1 persones
    ;; h279: 1 persones
    ;; h280: 1 persones
    ;; h281: 3 persones
    ;; h282: 1 persones
    ;; h283: 4 persones
    ;; h284: 4 persones
    ;; h285: 2 persones
    ;; h286: 1 persones
    ;; h287: 3 persones
    ;; h288: 2 persones
    ;; h289: 2 persones
    ;; h290: 1 persones
    ;; h291: 3 persones
    ;; h292: 4 persones
    ;; h293: 3 persones
    ;; h294: 2 persones
    ;; h295: 3 persones
    ;; h296: 4 persones
    ;; h297: 2 persones
    ;; h298: 4 persones
    ;; h299: 3 persones
    ;; h300: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h48)
    (compatible r1 h62)
    (compatible r1 h69)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h92)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h118)
    (compatible r1 h128)
    (compatible r1 h138)
    (compatible r1 h141)
    (compatible r1 h144)
    (compatible r1 h150)
    (compatible r1 h156)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h166)
    (compatible r1 h174)
    (compatible r1 h176)
    (compatible r1 h183)
    (compatible r1 h199)
    (compatible r1 h203)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h218)
    (compatible r1 h228)
    (compatible r1 h231)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h241)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h249)
    (compatible r1 h257)
    (compatible r1 h263)
    (compatible r1 h266)
    (compatible r1 h273)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h292)
    (compatible r1 h296)
    (compatible r1 h298)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h78)
    (compatible r2 h84)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h103)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h109)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h123)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h166)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h203)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h218)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
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
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h266)
    (compatible r2 h267)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h281)
    (compatible r2 h283)
    (compatible r2 h284)
    (compatible r2 h287)
    (compatible r2 h291)
    (compatible r2 h292)
    (compatible r2 h293)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h298)
    (compatible r2 h299)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
