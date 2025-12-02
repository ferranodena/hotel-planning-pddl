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
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 2 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 1 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 3 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 4 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 4 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 1 persones
    ;; h103: 3 persones
    ;; h104: 2 persones
    ;; h105: 3 persones
    ;; h106: 2 persones
    ;; h107: 1 persones
    ;; h108: 3 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 2 persones
    ;; h113: 3 persones
    ;; h114: 3 persones
    ;; h115: 1 persones
    ;; h116: 4 persones
    ;; h117: 4 persones
    ;; h118: 2 persones
    ;; h119: 3 persones
    ;; h120: 4 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 2 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 4 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 1 persones
    ;; h148: 2 persones
    ;; h149: 3 persones
    ;; h150: 2 persones
    ;; h151: 4 persones
    ;; h152: 2 persones
    ;; h153: 4 persones
    ;; h154: 1 persones
    ;; h155: 4 persones
    ;; h156: 1 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 4 persones
    ;; h160: 4 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 2 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 3 persones
    ;; h171: 4 persones
    ;; h172: 4 persones
    ;; h173: 1 persones
    ;; h174: 4 persones
    ;; h175: 4 persones
    ;; h176: 4 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 1 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 1 persones
    ;; h183: 3 persones
    ;; h184: 2 persones
    ;; h185: 2 persones
    ;; h186: 2 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 3 persones
    ;; h191: 4 persones
    ;; h192: 3 persones
    ;; h193: 1 persones
    ;; h194: 3 persones
    ;; h195: 2 persones
    ;; h196: 4 persones
    ;; h197: 2 persones
    ;; h198: 4 persones
    ;; h199: 1 persones
    ;; h200: 2 persones
    ;; h201: 2 persones
    ;; h202: 2 persones
    ;; h203: 2 persones
    ;; h204: 1 persones
    ;; h205: 3 persones
    ;; h206: 4 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 1 persones
    ;; h210: 1 persones
    ;; h211: 3 persones
    ;; h212: 4 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 2 persones
    ;; h218: 2 persones
    ;; h219: 4 persones
    ;; h220: 3 persones
    ;; h221: 2 persones
    ;; h222: 3 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 4 persones
    ;; h226: 3 persones
    ;; h227: 3 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 1 persones
    ;; h231: 1 persones
    ;; h232: 2 persones
    ;; h233: 2 persones
    ;; h234: 3 persones
    ;; h235: 1 persones
    ;; h236: 1 persones
    ;; h237: 3 persones
    ;; h238: 3 persones
    ;; h239: 3 persones
    ;; h240: 4 persones
    ;; h241: 3 persones
    ;; h242: 1 persones
    ;; h243: 4 persones
    ;; h244: 3 persones
    ;; h245: 2 persones
    ;; h246: 2 persones
    ;; h247: 4 persones
    ;; h248: 2 persones
    ;; h249: 1 persones
    ;; h250: 1 persones
    ;; h251: 1 persones
    ;; h252: 4 persones
    ;; h253: 1 persones
    ;; h254: 3 persones
    ;; h255: 2 persones
    ;; h256: 2 persones
    ;; h257: 1 persones
    ;; h258: 2 persones
    ;; h259: 1 persones
    ;; h260: 1 persones
    ;; h261: 2 persones
    ;; h262: 1 persones
    ;; h263: 2 persones
    ;; h264: 1 persones
    ;; h265: 2 persones
    ;; h266: 3 persones
    ;; h267: 3 persones
    ;; h268: 2 persones
    ;; h269: 1 persones
    ;; h270: 3 persones
    ;; h271: 3 persones
    ;; h272: 1 persones
    ;; h273: 2 persones
    ;; h274: 4 persones
    ;; h275: 2 persones
    ;; h276: 3 persones
    ;; h277: 2 persones
    ;; h278: 3 persones
    ;; h279: 3 persones
    ;; h280: 4 persones
    ;; h281: 4 persones
    ;; h282: 1 persones
    ;; h283: 2 persones
    ;; h284: 2 persones
    ;; h285: 4 persones
    ;; h286: 3 persones
    ;; h287: 1 persones
    ;; h288: 2 persones
    ;; h289: 1 persones
    ;; h290: 3 persones
    ;; h291: 3 persones
    ;; h292: 3 persones
    ;; h293: 3 persones
    ;; h294: 1 persones
    ;; h295: 4 persones
    ;; h296: 1 persones
    ;; h297: 2 persones
    ;; h298: 2 persones
    ;; h299: 4 persones
    ;; h300: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h38)
    (compatible r1 h41)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h63)
    (compatible r1 h66)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h81)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h103)
    (compatible r1 h105)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h127)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h153)
    (compatible r1 h155)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h180)
    (compatible r1 h183)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h198)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h234)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h247)
    (compatible r1 h252)
    (compatible r1 h254)
    (compatible r1 h266)
    (compatible r1 h267)
    (compatible r1 h270)
    (compatible r1 h271)
    (compatible r1 h274)
    (compatible r1 h276)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h281)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h295)
    (compatible r1 h299)
    (compatible r1 h300)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h11)
    (compatible r2 h16)
    (compatible r2 h20)
    (compatible r2 h27)
    (compatible r2 h35)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h63)
    (compatible r2 h66)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h96)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h120)
    (compatible r2 h132)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h151)
    (compatible r2 h153)
    (compatible r2 h155)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h191)
    (compatible r2 h196)
    (compatible r2 h198)
    (compatible r2 h206)
    (compatible r2 h212)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h219)
    (compatible r2 h223)
    (compatible r2 h225)
    (compatible r2 h240)
    (compatible r2 h243)
    (compatible r2 h247)
    (compatible r2 h252)
    (compatible r2 h274)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h285)
    (compatible r2 h295)
    (compatible r2 h299)
    (compatible r2 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d3)
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
