(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 1 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 1 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 1 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 3 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 4 persones
    ;; h96: 4 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 4 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 3 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 3 persones
    ;; h111: 4 persones
    ;; h112: 4 persones
    ;; h113: 4 persones
    ;; h114: 4 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 2 persones
    ;; h118: 1 persones
    ;; h119: 3 persones
    ;; h120: 1 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 4 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 3 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 1 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 4 persones
    ;; h138: 1 persones
    ;; h139: 1 persones
    ;; h140: 4 persones
    ;; h141: 1 persones
    ;; h142: 3 persones
    ;; h143: 4 persones
    ;; h144: 3 persones
    ;; h145: 3 persones
    ;; h146: 4 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 4 persones
    ;; h150: 3 persones
    ;; h151: 2 persones
    ;; h152: 3 persones
    ;; h153: 3 persones
    ;; h154: 4 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 2 persones
    ;; h160: 4 persones
    ;; h161: 1 persones
    ;; h162: 2 persones
    ;; h163: 2 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 1 persones
    ;; h170: 3 persones
    ;; h171: 3 persones
    ;; h172: 1 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 1 persones
    ;; h176: 4 persones
    ;; h177: 3 persones
    ;; h178: 2 persones
    ;; h179: 1 persones
    ;; h180: 2 persones
    ;; h181: 4 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 3 persones
    ;; h185: 1 persones
    ;; h186: 3 persones
    ;; h187: 4 persones
    ;; h188: 1 persones
    ;; h189: 4 persones
    ;; h190: 2 persones
    ;; h191: 1 persones
    ;; h192: 1 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 2 persones
    ;; h196: 1 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 3 persones
    ;; h200: 1 persones
    ;; h201: 2 persones
    ;; h202: 2 persones
    ;; h203: 3 persones
    ;; h204: 3 persones
    ;; h205: 2 persones
    ;; h206: 1 persones
    ;; h207: 1 persones
    ;; h208: 4 persones
    ;; h209: 4 persones
    ;; h210: 3 persones
    ;; h211: 2 persones
    ;; h212: 1 persones
    ;; h213: 3 persones
    ;; h214: 4 persones
    ;; h215: 2 persones
    ;; h216: 3 persones
    ;; h217: 1 persones
    ;; h218: 4 persones
    ;; h219: 2 persones
    ;; h220: 2 persones
    ;; h221: 1 persones
    ;; h222: 3 persones
    ;; h223: 1 persones
    ;; h224: 4 persones
    ;; h225: 4 persones
    ;; h226: 2 persones
    ;; h227: 4 persones
    ;; h228: 3 persones
    ;; h229: 4 persones
    ;; h230: 3 persones
    ;; h231: 3 persones
    ;; h232: 2 persones
    ;; h233: 2 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 2 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 4 persones
    ;; h240: 4 persones
    ;; h241: 2 persones
    ;; h242: 3 persones
    ;; h243: 3 persones
    ;; h244: 3 persones
    ;; h245: 2 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 2 persones
    ;; h249: 1 persones
    ;; h250: 2 persones
    ;; h251: 2 persones
    ;; h252: 4 persones
    ;; h253: 4 persones
    ;; h254: 4 persones
    ;; h255: 3 persones
    ;; h256: 2 persones
    ;; h257: 4 persones
    ;; h258: 3 persones
    ;; h259: 4 persones
    ;; h260: 4 persones
    ;; h261: 2 persones
    ;; h262: 1 persones
    ;; h263: 2 persones
    ;; h264: 1 persones
    ;; h265: 4 persones
    ;; h266: 1 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 1 persones
    ;; h270: 2 persones
    ;; h271: 4 persones
    ;; h272: 2 persones
    ;; h273: 4 persones
    ;; h274: 3 persones
    ;; h275: 2 persones
    ;; h276: 2 persones
    ;; h277: 2 persones
    ;; h278: 2 persones
    ;; h279: 1 persones
    ;; h280: 4 persones
    ;; h281: 1 persones
    ;; h282: 3 persones
    ;; h283: 2 persones
    ;; h284: 3 persones
    ;; h285: 1 persones
    ;; h286: 2 persones
    ;; h287: 3 persones
    ;; h288: 1 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 3 persones
    ;; h292: 4 persones
    ;; h293: 2 persones
    ;; h294: 2 persones
    ;; h295: 3 persones
    ;; h296: 1 persones
    ;; h297: 2 persones
    ;; h298: 4 persones
    ;; h299: 4 persones
    ;; h300: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h107)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h116)
    (compatible r1 h119)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h133)
    (compatible r1 h135)
    (compatible r1 h137)
    (compatible r1 h140)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h160)
    (compatible r1 h164)
    (compatible r1 h166)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h181)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h189)
    (compatible r1 h193)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h210)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h216)
    (compatible r1 h218)
    (compatible r1 h222)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h265)
    (compatible r1 h268)
    (compatible r1 h271)
    (compatible r1 h273)
    (compatible r1 h274)
    (compatible r1 h280)
    (compatible r1 h282)
    (compatible r1 h284)
    (compatible r1 h287)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h295)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h8)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h34)
    (compatible r2 h41)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h50)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h72)
    (compatible r2 h79)
    (compatible r2 h82)
    (compatible r2 h84)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h116)
    (compatible r2 h124)
    (compatible r2 h133)
    (compatible r2 h137)
    (compatible r2 h140)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h149)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h160)
    (compatible r2 h173)
    (compatible r2 h176)
    (compatible r2 h181)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h214)
    (compatible r2 h218)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h227)
    (compatible r2 h229)
    (compatible r2 h235)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h257)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h265)
    (compatible r2 h268)
    (compatible r2 h271)
    (compatible r2 h273)
    (compatible r2 h280)
    (compatible r2 h292)
    (compatible r2 h298)
    (compatible r2 h299)

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

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h5)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h38)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h50)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h72)
    (compatible r4 h75)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h119)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h131)
    (compatible r4 h133)
    (compatible r4 h135)
    (compatible r4 h136)
    (compatible r4 h137)
    (compatible r4 h140)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h153)
    (compatible r4 h154)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h162)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h166)
    (compatible r4 h168)
    (compatible r4 h170)
    (compatible r4 h171)
    (compatible r4 h173)
    (compatible r4 h174)
    (compatible r4 h176)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h180)
    (compatible r4 h181)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h189)
    (compatible r4 h190)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h195)
    (compatible r4 h198)
    (compatible r4 h199)
    (compatible r4 h201)
    (compatible r4 h202)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h205)
    (compatible r4 h208)
    (compatible r4 h209)
    (compatible r4 h210)
    (compatible r4 h211)
    (compatible r4 h213)
    (compatible r4 h214)
    (compatible r4 h215)
    (compatible r4 h216)
    (compatible r4 h218)
    (compatible r4 h219)
    (compatible r4 h220)
    (compatible r4 h222)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h226)
    (compatible r4 h227)
    (compatible r4 h228)
    (compatible r4 h229)
    (compatible r4 h230)
    (compatible r4 h231)
    (compatible r4 h232)
    (compatible r4 h233)
    (compatible r4 h234)
    (compatible r4 h235)
    (compatible r4 h236)
    (compatible r4 h237)
    (compatible r4 h238)
    (compatible r4 h239)
    (compatible r4 h240)
    (compatible r4 h241)
    (compatible r4 h242)
    (compatible r4 h243)
    (compatible r4 h244)
    (compatible r4 h245)
    (compatible r4 h246)
    (compatible r4 h247)
    (compatible r4 h248)
    (compatible r4 h250)
    (compatible r4 h251)
    (compatible r4 h252)
    (compatible r4 h253)
    (compatible r4 h254)
    (compatible r4 h255)
    (compatible r4 h256)
    (compatible r4 h257)
    (compatible r4 h258)
    (compatible r4 h259)
    (compatible r4 h260)
    (compatible r4 h261)
    (compatible r4 h263)
    (compatible r4 h265)
    (compatible r4 h267)
    (compatible r4 h268)
    (compatible r4 h270)
    (compatible r4 h271)
    (compatible r4 h272)
    (compatible r4 h273)
    (compatible r4 h274)
    (compatible r4 h275)
    (compatible r4 h276)
    (compatible r4 h277)
    (compatible r4 h278)
    (compatible r4 h280)
    (compatible r4 h282)
    (compatible r4 h283)
    (compatible r4 h284)
    (compatible r4 h286)
    (compatible r4 h287)
    (compatible r4 h289)
    (compatible r4 h290)
    (compatible r4 h291)
    (compatible r4 h292)
    (compatible r4 h293)
    (compatible r4 h294)
    (compatible r4 h295)
    (compatible r4 h297)
    (compatible r4 h298)
    (compatible r4 h299)
    (compatible r4 h300)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h38)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h50)
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
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h72)
    (compatible r5 h75)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h90)
    (compatible r5 h91)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h119)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h131)
    (compatible r5 h133)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h140)
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
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h166)
    (compatible r5 h168)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h176)
    (compatible r5 h177)
    (compatible r5 h178)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h183)
    (compatible r5 h184)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h201)
    (compatible r5 h202)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h208)
    (compatible r5 h209)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h213)
    (compatible r5 h214)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h218)
    (compatible r5 h219)
    (compatible r5 h220)
    (compatible r5 h222)
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
    (compatible r5 h263)
    (compatible r5 h265)
    (compatible r5 h267)
    (compatible r5 h268)
    (compatible r5 h270)
    (compatible r5 h271)
    (compatible r5 h272)
    (compatible r5 h273)
    (compatible r5 h274)
    (compatible r5 h275)
    (compatible r5 h276)
    (compatible r5 h277)
    (compatible r5 h278)
    (compatible r5 h280)
    (compatible r5 h282)
    (compatible r5 h283)
    (compatible r5 h284)
    (compatible r5 h286)
    (compatible r5 h287)
    (compatible r5 h289)
    (compatible r5 h290)
    (compatible r5 h291)
    (compatible r5 h292)
    (compatible r5 h293)
    (compatible r5 h294)
    (compatible r5 h295)
    (compatible r5 h297)
    (compatible r5 h298)
    (compatible r5 h299)
    (compatible r5 h300)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d5)
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
