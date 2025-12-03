(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 1 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 3 persones
    ;; h64: 4 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 4 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 3 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 3 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 4 persones
    ;; h94: 1 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 3 persones
    ;; h98: 2 persones
    ;; h99: 1 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 3 persones
    ;; h104: 2 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 4 persones
    ;; h111: 3 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 3 persones
    ;; h117: 1 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 3 persones
    ;; h129: 2 persones
    ;; h130: 2 persones
    ;; h131: 2 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 3 persones
    ;; h138: 1 persones
    ;; h139: 3 persones
    ;; h140: 3 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 2 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 1 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 4 persones
    ;; h150: 4 persones
    ;; h151: 3 persones
    ;; h152: 4 persones
    ;; h153: 4 persones
    ;; h154: 1 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 4 persones
    ;; h158: 3 persones
    ;; h159: 4 persones
    ;; h160: 4 persones
    ;; h161: 4 persones
    ;; h162: 3 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 4 persones
    ;; h167: 2 persones
    ;; h168: 3 persones
    ;; h169: 1 persones
    ;; h170: 3 persones
    ;; h171: 1 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 4 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 2 persones
    ;; h182: 3 persones
    ;; h183: 2 persones
    ;; h184: 1 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 3 persones
    ;; h188: 1 persones
    ;; h189: 2 persones
    ;; h190: 4 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 4 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 2 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 3 persones
    ;; h204: 4 persones
    ;; h205: 4 persones
    ;; h206: 2 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 2 persones
    ;; h212: 4 persones
    ;; h213: 1 persones
    ;; h214: 4 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 1 persones
    ;; h218: 1 persones
    ;; h219: 1 persones
    ;; h220: 4 persones
    ;; h221: 1 persones
    ;; h222: 4 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 1 persones
    ;; h226: 3 persones
    ;; h227: 1 persones
    ;; h228: 1 persones
    ;; h229: 3 persones
    ;; h230: 3 persones
    ;; h231: 1 persones
    ;; h232: 1 persones
    ;; h233: 1 persones
    ;; h234: 4 persones
    ;; h235: 1 persones
    ;; h236: 1 persones
    ;; h237: 1 persones
    ;; h238: 1 persones
    ;; h239: 1 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 1 persones
    ;; h243: 2 persones
    ;; h244: 2 persones
    ;; h245: 1 persones
    ;; h246: 2 persones
    ;; h247: 4 persones
    ;; h248: 1 persones
    ;; h249: 1 persones
    ;; h250: 2 persones
    ;; h251: 4 persones
    ;; h252: 2 persones
    ;; h253: 1 persones
    ;; h254: 2 persones
    ;; h255: 2 persones
    ;; h256: 1 persones
    ;; h257: 4 persones
    ;; h258: 3 persones
    ;; h259: 4 persones
    ;; h260: 4 persones
    ;; h261: 2 persones
    ;; h262: 2 persones
    ;; h263: 3 persones
    ;; h264: 4 persones
    ;; h265: 1 persones
    ;; h266: 4 persones
    ;; h267: 3 persones
    ;; h268: 4 persones
    ;; h269: 2 persones
    ;; h270: 4 persones
    ;; h271: 2 persones
    ;; h272: 2 persones
    ;; h273: 2 persones
    ;; h274: 3 persones
    ;; h275: 3 persones
    ;; h276: 4 persones
    ;; h277: 4 persones
    ;; h278: 4 persones
    ;; h279: 4 persones
    ;; h280: 3 persones
    ;; h281: 4 persones
    ;; h282: 4 persones
    ;; h283: 2 persones
    ;; h284: 2 persones
    ;; h285: 4 persones
    ;; h286: 1 persones
    ;; h287: 2 persones
    ;; h288: 4 persones
    ;; h289: 2 persones
    ;; h290: 4 persones
    ;; h291: 2 persones
    ;; h292: 1 persones
    ;; h293: 4 persones
    ;; h294: 3 persones
    ;; h295: 3 persones
    ;; h296: 4 persones
    ;; h297: 1 persones
    ;; h298: 1 persones
    ;; h299: 1 persones
    ;; h300: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h13)
    (compatible r1 h18)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h76)
    (compatible r1 h82)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h93)
    (compatible r1 h96)
    (compatible r1 h110)
    (compatible r1 h114)
    (compatible r1 h123)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h166)
    (compatible r1 h174)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h185)
    (compatible r1 h190)
    (compatible r1 h195)
    (compatible r1 h199)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h212)
    (compatible r1 h214)
    (compatible r1 h216)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h234)
    (compatible r1 h247)
    (compatible r1 h251)
    (compatible r1 h257)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h264)
    (compatible r1 h266)
    (compatible r1 h268)
    (compatible r1 h270)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h285)
    (compatible r1 h288)
    (compatible r1 h290)
    (compatible r1 h293)
    (compatible r1 h296)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h93)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h118)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h145)
    (compatible r2 h147)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h201)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h220)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h226)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h234)
    (compatible r2 h240)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h262)
    (compatible r2 h263)
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
    (compatible r2 h281)
    (compatible r2 h282)
    (compatible r2 h283)
    (compatible r2 h284)
    (compatible r2 h285)
    (compatible r2 h287)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h300)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h2)
    (compatible r3 h4)
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h13)
    (compatible r3 h18)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h27)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h64)
    (compatible r3 h67)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h76)
    (compatible r3 h82)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h93)
    (compatible r3 h96)
    (compatible r3 h110)
    (compatible r3 h114)
    (compatible r3 h123)
    (compatible r3 h132)
    (compatible r3 h134)
    (compatible r3 h149)
    (compatible r3 h150)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h166)
    (compatible r3 h174)
    (compatible r3 h176)
    (compatible r3 h177)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h185)
    (compatible r3 h190)
    (compatible r3 h195)
    (compatible r3 h199)
    (compatible r3 h204)
    (compatible r3 h205)
    (compatible r3 h212)
    (compatible r3 h214)
    (compatible r3 h216)
    (compatible r3 h220)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h234)
    (compatible r3 h247)
    (compatible r3 h251)
    (compatible r3 h257)
    (compatible r3 h259)
    (compatible r3 h260)
    (compatible r3 h264)
    (compatible r3 h266)
    (compatible r3 h268)
    (compatible r3 h270)
    (compatible r3 h276)
    (compatible r3 h277)
    (compatible r3 h278)
    (compatible r3 h279)
    (compatible r3 h281)
    (compatible r3 h282)
    (compatible r3 h285)
    (compatible r3 h288)
    (compatible r3 h290)
    (compatible r3 h293)
    (compatible r3 h296)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h2)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h8)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h27)
    (compatible r4 h29)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h46)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h61)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h67)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h78)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h93)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h100)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h107)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h118)
    (compatible r4 h123)
    (compatible r4 h125)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h132)
    (compatible r4 h133)
    (compatible r4 h134)
    (compatible r4 h137)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h147)
    (compatible r4 h149)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h153)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h166)
    (compatible r4 h168)
    (compatible r4 h170)
    (compatible r4 h173)
    (compatible r4 h174)
    (compatible r4 h176)
    (compatible r4 h177)
    (compatible r4 h179)
    (compatible r4 h180)
    (compatible r4 h182)
    (compatible r4 h185)
    (compatible r4 h187)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h195)
    (compatible r4 h199)
    (compatible r4 h201)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h205)
    (compatible r4 h208)
    (compatible r4 h209)
    (compatible r4 h212)
    (compatible r4 h214)
    (compatible r4 h216)
    (compatible r4 h220)
    (compatible r4 h222)
    (compatible r4 h223)
    (compatible r4 h224)
    (compatible r4 h226)
    (compatible r4 h229)
    (compatible r4 h230)
    (compatible r4 h234)
    (compatible r4 h247)
    (compatible r4 h251)
    (compatible r4 h257)
    (compatible r4 h258)
    (compatible r4 h259)
    (compatible r4 h260)
    (compatible r4 h263)
    (compatible r4 h264)
    (compatible r4 h266)
    (compatible r4 h267)
    (compatible r4 h268)
    (compatible r4 h270)
    (compatible r4 h274)
    (compatible r4 h275)
    (compatible r4 h276)
    (compatible r4 h277)
    (compatible r4 h278)
    (compatible r4 h279)
    (compatible r4 h280)
    (compatible r4 h281)
    (compatible r4 h282)
    (compatible r4 h285)
    (compatible r4 h288)
    (compatible r4 h290)
    (compatible r4 h293)
    (compatible r4 h294)
    (compatible r4 h295)
    (compatible r4 h296)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h93)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h118)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h137)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h145)
    (compatible r5 h147)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
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
    (compatible r5 h166)
    (compatible r5 h167)
    (compatible r5 h168)
    (compatible r5 h170)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h175)
    (compatible r5 h176)
    (compatible r5 h177)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h201)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h206)
    (compatible r5 h208)
    (compatible r5 h209)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h212)
    (compatible r5 h214)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h220)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h226)
    (compatible r5 h229)
    (compatible r5 h230)
    (compatible r5 h234)
    (compatible r5 h240)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h246)
    (compatible r5 h247)
    (compatible r5 h250)
    (compatible r5 h251)
    (compatible r5 h252)
    (compatible r5 h254)
    (compatible r5 h255)
    (compatible r5 h257)
    (compatible r5 h258)
    (compatible r5 h259)
    (compatible r5 h260)
    (compatible r5 h261)
    (compatible r5 h262)
    (compatible r5 h263)
    (compatible r5 h264)
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
    (compatible r5 h287)
    (compatible r5 h288)
    (compatible r5 h289)
    (compatible r5 h290)
    (compatible r5 h291)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h295)
    (compatible r5 h296)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
