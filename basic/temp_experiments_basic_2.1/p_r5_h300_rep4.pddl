(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 3 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 4 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 3 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 1 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 3 persones
    ;; h94: 2 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 4 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 4 persones
    ;; h103: 2 persones
    ;; h104: 4 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 3 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 2 persones
    ;; h115: 4 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 4 persones
    ;; h121: 1 persones
    ;; h122: 4 persones
    ;; h123: 2 persones
    ;; h124: 2 persones
    ;; h125: 4 persones
    ;; h126: 2 persones
    ;; h127: 3 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 3 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 4 persones
    ;; h137: 4 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 2 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 1 persones
    ;; h147: 4 persones
    ;; h148: 4 persones
    ;; h149: 2 persones
    ;; h150: 2 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 1 persones
    ;; h154: 1 persones
    ;; h155: 2 persones
    ;; h156: 3 persones
    ;; h157: 4 persones
    ;; h158: 3 persones
    ;; h159: 1 persones
    ;; h160: 3 persones
    ;; h161: 3 persones
    ;; h162: 4 persones
    ;; h163: 3 persones
    ;; h164: 4 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 2 persones
    ;; h172: 4 persones
    ;; h173: 3 persones
    ;; h174: 2 persones
    ;; h175: 2 persones
    ;; h176: 3 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 1 persones
    ;; h180: 3 persones
    ;; h181: 3 persones
    ;; h182: 3 persones
    ;; h183: 2 persones
    ;; h184: 3 persones
    ;; h185: 2 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 2 persones
    ;; h189: 1 persones
    ;; h190: 3 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 1 persones
    ;; h195: 2 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 3 persones
    ;; h203: 3 persones
    ;; h204: 3 persones
    ;; h205: 1 persones
    ;; h206: 2 persones
    ;; h207: 2 persones
    ;; h208: 4 persones
    ;; h209: 1 persones
    ;; h210: 1 persones
    ;; h211: 3 persones
    ;; h212: 1 persones
    ;; h213: 2 persones
    ;; h214: 1 persones
    ;; h215: 3 persones
    ;; h216: 2 persones
    ;; h217: 1 persones
    ;; h218: 1 persones
    ;; h219: 4 persones
    ;; h220: 2 persones
    ;; h221: 4 persones
    ;; h222: 3 persones
    ;; h223: 1 persones
    ;; h224: 4 persones
    ;; h225: 3 persones
    ;; h226: 4 persones
    ;; h227: 3 persones
    ;; h228: 4 persones
    ;; h229: 1 persones
    ;; h230: 4 persones
    ;; h231: 2 persones
    ;; h232: 2 persones
    ;; h233: 4 persones
    ;; h234: 2 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 3 persones
    ;; h238: 1 persones
    ;; h239: 2 persones
    ;; h240: 3 persones
    ;; h241: 2 persones
    ;; h242: 1 persones
    ;; h243: 4 persones
    ;; h244: 2 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 1 persones
    ;; h248: 1 persones
    ;; h249: 1 persones
    ;; h250: 2 persones
    ;; h251: 3 persones
    ;; h252: 4 persones
    ;; h253: 4 persones
    ;; h254: 4 persones
    ;; h255: 2 persones
    ;; h256: 4 persones
    ;; h257: 4 persones
    ;; h258: 4 persones
    ;; h259: 1 persones
    ;; h260: 2 persones
    ;; h261: 2 persones
    ;; h262: 2 persones
    ;; h263: 4 persones
    ;; h264: 4 persones
    ;; h265: 1 persones
    ;; h266: 1 persones
    ;; h267: 4 persones
    ;; h268: 1 persones
    ;; h269: 1 persones
    ;; h270: 2 persones
    ;; h271: 4 persones
    ;; h272: 2 persones
    ;; h273: 3 persones
    ;; h274: 1 persones
    ;; h275: 4 persones
    ;; h276: 3 persones
    ;; h277: 3 persones
    ;; h278: 1 persones
    ;; h279: 4 persones
    ;; h280: 2 persones
    ;; h281: 1 persones
    ;; h282: 2 persones
    ;; h283: 2 persones
    ;; h284: 2 persones
    ;; h285: 1 persones
    ;; h286: 4 persones
    ;; h287: 4 persones
    ;; h288: 4 persones
    ;; h289: 3 persones
    ;; h290: 4 persones
    ;; h291: 1 persones
    ;; h292: 4 persones
    ;; h293: 4 persones
    ;; h294: 4 persones
    ;; h295: 1 persones
    ;; h296: 4 persones
    ;; h297: 1 persones
    ;; h298: 1 persones
    ;; h299: 1 persones
    ;; h300: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h36)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h50)
    (compatible r1 h56)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h82)
    (compatible r1 h86)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h115)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h125)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h145)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h157)
    (compatible r1 h162)
    (compatible r1 h164)
    (compatible r1 h168)
    (compatible r1 h172)
    (compatible r1 h177)
    (compatible r1 h192)
    (compatible r1 h208)
    (compatible r1 h219)
    (compatible r1 h221)
    (compatible r1 h224)
    (compatible r1 h226)
    (compatible r1 h228)
    (compatible r1 h230)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h243)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h256)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h267)
    (compatible r1 h271)
    (compatible r1 h275)
    (compatible r1 h279)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h290)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h296)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h16)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h53)
    (compatible r2 h56)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h82)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h93)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h115)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h122)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h132)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h145)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h152)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h184)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h208)
    (compatible r2 h211)
    (compatible r2 h215)
    (compatible r2 h219)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h230)
    (compatible r2 h233)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h240)
    (compatible r2 h243)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h256)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h267)
    (compatible r2 h271)
    (compatible r2 h273)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h277)
    (compatible r2 h279)
    (compatible r2 h286)
    (compatible r2 h287)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h292)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h296)
    (compatible r2 h300)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h22)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
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
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h59)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h70)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h86)
    (compatible r3 h88)
    (compatible r3 h90)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h98)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h102)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h109)
    (compatible r3 h112)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h118)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h122)
    (compatible r3 h123)
    (compatible r3 h124)
    (compatible r3 h125)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h128)
    (compatible r3 h130)
    (compatible r3 h132)
    (compatible r3 h134)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h145)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h150)
    (compatible r3 h152)
    (compatible r3 h155)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h166)
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
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h185)
    (compatible r3 h188)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h195)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h199)
    (compatible r3 h200)
    (compatible r3 h202)
    (compatible r3 h203)
    (compatible r3 h204)
    (compatible r3 h206)
    (compatible r3 h207)
    (compatible r3 h208)
    (compatible r3 h211)
    (compatible r3 h213)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h221)
    (compatible r3 h222)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h226)
    (compatible r3 h227)
    (compatible r3 h228)
    (compatible r3 h230)
    (compatible r3 h231)
    (compatible r3 h232)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h235)
    (compatible r3 h237)
    (compatible r3 h239)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h245)
    (compatible r3 h250)
    (compatible r3 h251)
    (compatible r3 h252)
    (compatible r3 h253)
    (compatible r3 h254)
    (compatible r3 h255)
    (compatible r3 h256)
    (compatible r3 h257)
    (compatible r3 h258)
    (compatible r3 h260)
    (compatible r3 h261)
    (compatible r3 h262)
    (compatible r3 h263)
    (compatible r3 h264)
    (compatible r3 h267)
    (compatible r3 h270)
    (compatible r3 h271)
    (compatible r3 h272)
    (compatible r3 h273)
    (compatible r3 h275)
    (compatible r3 h276)
    (compatible r3 h277)
    (compatible r3 h279)
    (compatible r3 h280)
    (compatible r3 h282)
    (compatible r3 h283)
    (compatible r3 h284)
    (compatible r3 h286)
    (compatible r3 h287)
    (compatible r3 h288)
    (compatible r3 h289)
    (compatible r3 h290)
    (compatible r3 h292)
    (compatible r3 h293)
    (compatible r3 h294)
    (compatible r3 h296)
    (compatible r3 h300)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h16)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h40)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h48)
    (compatible r4 h50)
    (compatible r4 h53)
    (compatible r4 h56)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h70)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h82)
    (compatible r4 h86)
    (compatible r4 h88)
    (compatible r4 h93)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h102)
    (compatible r4 h104)
    (compatible r4 h107)
    (compatible r4 h115)
    (compatible r4 h119)
    (compatible r4 h120)
    (compatible r4 h122)
    (compatible r4 h125)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h130)
    (compatible r4 h132)
    (compatible r4 h136)
    (compatible r4 h137)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h141)
    (compatible r4 h145)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h152)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h166)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h172)
    (compatible r4 h173)
    (compatible r4 h176)
    (compatible r4 h177)
    (compatible r4 h180)
    (compatible r4 h181)
    (compatible r4 h182)
    (compatible r4 h184)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h202)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h208)
    (compatible r4 h211)
    (compatible r4 h215)
    (compatible r4 h219)
    (compatible r4 h221)
    (compatible r4 h222)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h226)
    (compatible r4 h227)
    (compatible r4 h228)
    (compatible r4 h230)
    (compatible r4 h233)
    (compatible r4 h235)
    (compatible r4 h237)
    (compatible r4 h240)
    (compatible r4 h243)
    (compatible r4 h251)
    (compatible r4 h252)
    (compatible r4 h253)
    (compatible r4 h254)
    (compatible r4 h256)
    (compatible r4 h257)
    (compatible r4 h258)
    (compatible r4 h263)
    (compatible r4 h264)
    (compatible r4 h267)
    (compatible r4 h271)
    (compatible r4 h273)
    (compatible r4 h275)
    (compatible r4 h276)
    (compatible r4 h277)
    (compatible r4 h279)
    (compatible r4 h286)
    (compatible r4 h287)
    (compatible r4 h288)
    (compatible r4 h289)
    (compatible r4 h290)
    (compatible r4 h292)
    (compatible r4 h293)
    (compatible r4 h294)
    (compatible r4 h296)
    (compatible r4 h300)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h16)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h40)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h53)
    (compatible r5 h56)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h70)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h82)
    (compatible r5 h86)
    (compatible r5 h88)
    (compatible r5 h93)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h102)
    (compatible r5 h104)
    (compatible r5 h107)
    (compatible r5 h115)
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h122)
    (compatible r5 h125)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h130)
    (compatible r5 h132)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h141)
    (compatible r5 h145)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h152)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h160)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h166)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h176)
    (compatible r5 h177)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h184)
    (compatible r5 h190)
    (compatible r5 h192)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h202)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h208)
    (compatible r5 h211)
    (compatible r5 h215)
    (compatible r5 h219)
    (compatible r5 h221)
    (compatible r5 h222)
    (compatible r5 h224)
    (compatible r5 h225)
    (compatible r5 h226)
    (compatible r5 h227)
    (compatible r5 h228)
    (compatible r5 h230)
    (compatible r5 h233)
    (compatible r5 h235)
    (compatible r5 h237)
    (compatible r5 h240)
    (compatible r5 h243)
    (compatible r5 h251)
    (compatible r5 h252)
    (compatible r5 h253)
    (compatible r5 h254)
    (compatible r5 h256)
    (compatible r5 h257)
    (compatible r5 h258)
    (compatible r5 h263)
    (compatible r5 h264)
    (compatible r5 h267)
    (compatible r5 h271)
    (compatible r5 h273)
    (compatible r5 h275)
    (compatible r5 h276)
    (compatible r5 h277)
    (compatible r5 h279)
    (compatible r5 h286)
    (compatible r5 h287)
    (compatible r5 h288)
    (compatible r5 h289)
    (compatible r5 h290)
    (compatible r5 h292)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h296)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d4)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
