(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 3 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 3 persones
    ;; h34: 3 persones
    ;; h35: 1 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 2 persones
    ;; h51: 1 persones
    ;; h52: 1 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 4 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 1 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 3 persones
    ;; h78: 4 persones
    ;; h79: 3 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 4 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 3 persones
    ;; h99: 2 persones
    ;; h100: 3 persones
    ;; h101: 3 persones
    ;; h102: 1 persones
    ;; h103: 2 persones
    ;; h104: 1 persones
    ;; h105: 1 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 1 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 3 persones
    ;; h115: 2 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 1 persones
    ;; h120: 2 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 4 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 4 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 3 persones
    ;; h137: 4 persones
    ;; h138: 1 persones
    ;; h139: 2 persones
    ;; h140: 3 persones
    ;; h141: 1 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 1 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 4 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 4 persones
    ;; h157: 4 persones
    ;; h158: 1 persones
    ;; h159: 1 persones
    ;; h160: 1 persones
    ;; h161: 1 persones
    ;; h162: 4 persones
    ;; h163: 1 persones
    ;; h164: 1 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 3 persones
    ;; h168: 1 persones
    ;; h169: 1 persones
    ;; h170: 1 persones
    ;; h171: 3 persones
    ;; h172: 3 persones
    ;; h173: 4 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 2 persones
    ;; h177: 1 persones
    ;; h178: 3 persones
    ;; h179: 3 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 2 persones
    ;; h185: 3 persones
    ;; h186: 3 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 4 persones
    ;; h193: 3 persones
    ;; h194: 1 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 2 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 1 persones
    ;; h204: 4 persones
    ;; h205: 4 persones
    ;; h206: 4 persones
    ;; h207: 1 persones
    ;; h208: 4 persones
    ;; h209: 1 persones
    ;; h210: 3 persones
    ;; h211: 4 persones
    ;; h212: 1 persones
    ;; h213: 4 persones
    ;; h214: 1 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 2 persones
    ;; h218: 1 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 4 persones
    ;; h222: 3 persones
    ;; h223: 3 persones
    ;; h224: 4 persones
    ;; h225: 1 persones
    ;; h226: 1 persones
    ;; h227: 4 persones
    ;; h228: 4 persones
    ;; h229: 4 persones
    ;; h230: 1 persones
    ;; h231: 3 persones
    ;; h232: 2 persones
    ;; h233: 2 persones
    ;; h234: 4 persones
    ;; h235: 3 persones
    ;; h236: 3 persones
    ;; h237: 2 persones
    ;; h238: 3 persones
    ;; h239: 3 persones
    ;; h240: 4 persones
    ;; h241: 1 persones
    ;; h242: 1 persones
    ;; h243: 1 persones
    ;; h244: 3 persones
    ;; h245: 2 persones
    ;; h246: 4 persones
    ;; h247: 4 persones
    ;; h248: 3 persones
    ;; h249: 1 persones
    ;; h250: 2 persones
    ;; h251: 1 persones
    ;; h252: 3 persones
    ;; h253: 2 persones
    ;; h254: 4 persones
    ;; h255: 2 persones
    ;; h256: 1 persones
    ;; h257: 4 persones
    ;; h258: 4 persones
    ;; h259: 1 persones
    ;; h260: 3 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 4 persones
    ;; h264: 2 persones
    ;; h265: 2 persones
    ;; h266: 3 persones
    ;; h267: 3 persones
    ;; h268: 2 persones
    ;; h269: 2 persones
    ;; h270: 2 persones
    ;; h271: 1 persones
    ;; h272: 3 persones
    ;; h273: 3 persones
    ;; h274: 4 persones
    ;; h275: 3 persones
    ;; h276: 2 persones
    ;; h277: 3 persones
    ;; h278: 2 persones
    ;; h279: 4 persones
    ;; h280: 1 persones
    ;; h281: 4 persones
    ;; h282: 1 persones
    ;; h283: 1 persones
    ;; h284: 1 persones
    ;; h285: 1 persones
    ;; h286: 1 persones
    ;; h287: 3 persones
    ;; h288: 4 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 2 persones
    ;; h292: 4 persones
    ;; h293: 4 persones
    ;; h294: 2 persones
    ;; h295: 2 persones
    ;; h296: 2 persones
    ;; h297: 1 persones
    ;; h298: 3 persones
    ;; h299: 1 persones
    ;; h300: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h53)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h103)
    (compatible r1 h107)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h162)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h201)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h213)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h248)
    (compatible r1 h250)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h262)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h265)
    (compatible r1 h266)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h269)
    (compatible r1 h270)
    (compatible r1 h272)
    (compatible r1 h273)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h281)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h296)
    (compatible r1 h298)
    (compatible r1 h300)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h14)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h53)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h113)
    (compatible r2 h123)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h137)
    (compatible r2 h145)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h162)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h183)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h196)
    (compatible r2 h199)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h211)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h221)
    (compatible r2 h224)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h234)
    (compatible r2 h240)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h254)
    (compatible r2 h257)
    (compatible r2 h258)
    (compatible r2 h263)
    (compatible r2 h274)
    (compatible r2 h279)
    (compatible r2 h281)
    (compatible r2 h288)
    (compatible r2 h292)
    (compatible r2 h293)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
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
