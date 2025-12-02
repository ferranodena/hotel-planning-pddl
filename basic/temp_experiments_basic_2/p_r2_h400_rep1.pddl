(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 1 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 4 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 1 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 3 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 1 persones
    ;; h89: 2 persones
    ;; h90: 3 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 3 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 4 persones
    ;; h98: 4 persones
    ;; h99: 2 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 1 persones
    ;; h103: 2 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 4 persones
    ;; h111: 4 persones
    ;; h112: 4 persones
    ;; h113: 3 persones
    ;; h114: 2 persones
    ;; h115: 1 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 4 persones
    ;; h119: 2 persones
    ;; h120: 2 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 1 persones
    ;; h124: 4 persones
    ;; h125: 4 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 3 persones
    ;; h133: 3 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 4 persones
    ;; h137: 3 persones
    ;; h138: 1 persones
    ;; h139: 4 persones
    ;; h140: 3 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 1 persones
    ;; h146: 2 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 2 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 1 persones
    ;; h155: 2 persones
    ;; h156: 1 persones
    ;; h157: 1 persones
    ;; h158: 3 persones
    ;; h159: 4 persones
    ;; h160: 4 persones
    ;; h161: 1 persones
    ;; h162: 4 persones
    ;; h163: 4 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 1 persones
    ;; h169: 2 persones
    ;; h170: 1 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 1 persones
    ;; h174: 2 persones
    ;; h175: 4 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 2 persones
    ;; h179: 2 persones
    ;; h180: 2 persones
    ;; h181: 4 persones
    ;; h182: 2 persones
    ;; h183: 1 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 2 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 3 persones
    ;; h190: 2 persones
    ;; h191: 4 persones
    ;; h192: 1 persones
    ;; h193: 1 persones
    ;; h194: 1 persones
    ;; h195: 1 persones
    ;; h196: 3 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 1 persones
    ;; h201: 4 persones
    ;; h202: 1 persones
    ;; h203: 3 persones
    ;; h204: 2 persones
    ;; h205: 4 persones
    ;; h206: 4 persones
    ;; h207: 3 persones
    ;; h208: 1 persones
    ;; h209: 3 persones
    ;; h210: 4 persones
    ;; h211: 3 persones
    ;; h212: 1 persones
    ;; h213: 3 persones
    ;; h214: 3 persones
    ;; h215: 3 persones
    ;; h216: 2 persones
    ;; h217: 4 persones
    ;; h218: 3 persones
    ;; h219: 2 persones
    ;; h220: 4 persones
    ;; h221: 2 persones
    ;; h222: 1 persones
    ;; h223: 2 persones
    ;; h224: 3 persones
    ;; h225: 1 persones
    ;; h226: 2 persones
    ;; h227: 4 persones
    ;; h228: 2 persones
    ;; h229: 2 persones
    ;; h230: 2 persones
    ;; h231: 4 persones
    ;; h232: 3 persones
    ;; h233: 3 persones
    ;; h234: 4 persones
    ;; h235: 1 persones
    ;; h236: 2 persones
    ;; h237: 3 persones
    ;; h238: 3 persones
    ;; h239: 1 persones
    ;; h240: 1 persones
    ;; h241: 3 persones
    ;; h242: 2 persones
    ;; h243: 4 persones
    ;; h244: 2 persones
    ;; h245: 2 persones
    ;; h246: 3 persones
    ;; h247: 3 persones
    ;; h248: 3 persones
    ;; h249: 4 persones
    ;; h250: 2 persones
    ;; h251: 3 persones
    ;; h252: 2 persones
    ;; h253: 2 persones
    ;; h254: 1 persones
    ;; h255: 1 persones
    ;; h256: 3 persones
    ;; h257: 4 persones
    ;; h258: 4 persones
    ;; h259: 4 persones
    ;; h260: 1 persones
    ;; h261: 4 persones
    ;; h262: 3 persones
    ;; h263: 3 persones
    ;; h264: 1 persones
    ;; h265: 3 persones
    ;; h266: 2 persones
    ;; h267: 3 persones
    ;; h268: 1 persones
    ;; h269: 1 persones
    ;; h270: 3 persones
    ;; h271: 4 persones
    ;; h272: 1 persones
    ;; h273: 4 persones
    ;; h274: 2 persones
    ;; h275: 3 persones
    ;; h276: 1 persones
    ;; h277: 1 persones
    ;; h278: 3 persones
    ;; h279: 4 persones
    ;; h280: 2 persones
    ;; h281: 4 persones
    ;; h282: 1 persones
    ;; h283: 2 persones
    ;; h284: 4 persones
    ;; h285: 2 persones
    ;; h286: 1 persones
    ;; h287: 2 persones
    ;; h288: 3 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 2 persones
    ;; h292: 1 persones
    ;; h293: 3 persones
    ;; h294: 3 persones
    ;; h295: 1 persones
    ;; h296: 3 persones
    ;; h297: 2 persones
    ;; h298: 4 persones
    ;; h299: 3 persones
    ;; h300: 2 persones
    ;; h301: 4 persones
    ;; h302: 4 persones
    ;; h303: 1 persones
    ;; h304: 1 persones
    ;; h305: 4 persones
    ;; h306: 2 persones
    ;; h307: 2 persones
    ;; h308: 2 persones
    ;; h309: 1 persones
    ;; h310: 2 persones
    ;; h311: 1 persones
    ;; h312: 4 persones
    ;; h313: 1 persones
    ;; h314: 2 persones
    ;; h315: 1 persones
    ;; h316: 2 persones
    ;; h317: 4 persones
    ;; h318: 3 persones
    ;; h319: 2 persones
    ;; h320: 4 persones
    ;; h321: 4 persones
    ;; h322: 2 persones
    ;; h323: 4 persones
    ;; h324: 3 persones
    ;; h325: 3 persones
    ;; h326: 2 persones
    ;; h327: 4 persones
    ;; h328: 2 persones
    ;; h329: 1 persones
    ;; h330: 2 persones
    ;; h331: 3 persones
    ;; h332: 2 persones
    ;; h333: 3 persones
    ;; h334: 4 persones
    ;; h335: 2 persones
    ;; h336: 1 persones
    ;; h337: 1 persones
    ;; h338: 2 persones
    ;; h339: 4 persones
    ;; h340: 4 persones
    ;; h341: 1 persones
    ;; h342: 3 persones
    ;; h343: 1 persones
    ;; h344: 3 persones
    ;; h345: 1 persones
    ;; h346: 3 persones
    ;; h347: 2 persones
    ;; h348: 1 persones
    ;; h349: 1 persones
    ;; h350: 1 persones
    ;; h351: 1 persones
    ;; h352: 1 persones
    ;; h353: 1 persones
    ;; h354: 3 persones
    ;; h355: 2 persones
    ;; h356: 3 persones
    ;; h357: 4 persones
    ;; h358: 1 persones
    ;; h359: 1 persones
    ;; h360: 4 persones
    ;; h361: 4 persones
    ;; h362: 2 persones
    ;; h363: 2 persones
    ;; h364: 3 persones
    ;; h365: 4 persones
    ;; h366: 4 persones
    ;; h367: 3 persones
    ;; h368: 1 persones
    ;; h369: 1 persones
    ;; h370: 3 persones
    ;; h371: 2 persones
    ;; h372: 1 persones
    ;; h373: 1 persones
    ;; h374: 2 persones
    ;; h375: 4 persones
    ;; h376: 1 persones
    ;; h377: 1 persones
    ;; h378: 3 persones
    ;; h379: 2 persones
    ;; h380: 2 persones
    ;; h381: 3 persones
    ;; h382: 2 persones
    ;; h383: 1 persones
    ;; h384: 4 persones
    ;; h385: 2 persones
    ;; h386: 4 persones
    ;; h387: 2 persones
    ;; h388: 4 persones
    ;; h389: 3 persones
    ;; h390: 3 persones
    ;; h391: 1 persones
    ;; h392: 1 persones
    ;; h393: 3 persones
    ;; h394: 4 persones
    ;; h395: 4 persones
    ;; h396: 4 persones
    ;; h397: 1 persones
    ;; h398: 4 persones
    ;; h399: 2 persones
    ;; h400: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
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
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
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
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
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
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h230)
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
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h251)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h256)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h259)
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
    (compatible r1 h271)
    (compatible r1 h272)
    (compatible r1 h273)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
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
    (compatible r1 h297)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)
    (compatible r1 h301)
    (compatible r1 h302)
    (compatible r1 h303)
    (compatible r1 h304)
    (compatible r1 h305)
    (compatible r1 h306)
    (compatible r1 h307)
    (compatible r1 h308)
    (compatible r1 h309)
    (compatible r1 h310)
    (compatible r1 h311)
    (compatible r1 h312)
    (compatible r1 h313)
    (compatible r1 h314)
    (compatible r1 h315)
    (compatible r1 h316)
    (compatible r1 h317)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h320)
    (compatible r1 h321)
    (compatible r1 h322)
    (compatible r1 h323)
    (compatible r1 h324)
    (compatible r1 h325)
    (compatible r1 h326)
    (compatible r1 h327)
    (compatible r1 h328)
    (compatible r1 h329)
    (compatible r1 h330)
    (compatible r1 h331)
    (compatible r1 h332)
    (compatible r1 h333)
    (compatible r1 h334)
    (compatible r1 h335)
    (compatible r1 h336)
    (compatible r1 h337)
    (compatible r1 h338)
    (compatible r1 h339)
    (compatible r1 h340)
    (compatible r1 h341)
    (compatible r1 h342)
    (compatible r1 h343)
    (compatible r1 h344)
    (compatible r1 h345)
    (compatible r1 h346)
    (compatible r1 h347)
    (compatible r1 h348)
    (compatible r1 h349)
    (compatible r1 h350)
    (compatible r1 h351)
    (compatible r1 h352)
    (compatible r1 h353)
    (compatible r1 h354)
    (compatible r1 h355)
    (compatible r1 h356)
    (compatible r1 h357)
    (compatible r1 h358)
    (compatible r1 h359)
    (compatible r1 h360)
    (compatible r1 h361)
    (compatible r1 h362)
    (compatible r1 h363)
    (compatible r1 h364)
    (compatible r1 h365)
    (compatible r1 h366)
    (compatible r1 h367)
    (compatible r1 h368)
    (compatible r1 h369)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h372)
    (compatible r1 h373)
    (compatible r1 h374)
    (compatible r1 h375)
    (compatible r1 h376)
    (compatible r1 h377)
    (compatible r1 h378)
    (compatible r1 h379)
    (compatible r1 h380)
    (compatible r1 h381)
    (compatible r1 h382)
    (compatible r1 h383)
    (compatible r1 h384)
    (compatible r1 h385)
    (compatible r1 h386)
    (compatible r1 h387)
    (compatible r1 h388)
    (compatible r1 h389)
    (compatible r1 h390)
    (compatible r1 h391)
    (compatible r1 h392)
    (compatible r1 h393)
    (compatible r1 h394)
    (compatible r1 h395)
    (compatible r1 h396)
    (compatible r1 h397)
    (compatible r1 h398)
    (compatible r1 h399)
    (compatible r1 h400)

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
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
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
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
    (compatible r2 h222)
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
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)
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
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h265)
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
    (compatible r2 h286)
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
    (compatible r2 h297)
    (compatible r2 h298)
    (compatible r2 h299)
    (compatible r2 h300)
    (compatible r2 h301)
    (compatible r2 h302)
    (compatible r2 h303)
    (compatible r2 h304)
    (compatible r2 h305)
    (compatible r2 h306)
    (compatible r2 h307)
    (compatible r2 h308)
    (compatible r2 h309)
    (compatible r2 h310)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h314)
    (compatible r2 h315)
    (compatible r2 h316)
    (compatible r2 h317)
    (compatible r2 h318)
    (compatible r2 h319)
    (compatible r2 h320)
    (compatible r2 h321)
    (compatible r2 h322)
    (compatible r2 h323)
    (compatible r2 h324)
    (compatible r2 h325)
    (compatible r2 h326)
    (compatible r2 h327)
    (compatible r2 h328)
    (compatible r2 h329)
    (compatible r2 h330)
    (compatible r2 h331)
    (compatible r2 h332)
    (compatible r2 h333)
    (compatible r2 h334)
    (compatible r2 h335)
    (compatible r2 h336)
    (compatible r2 h337)
    (compatible r2 h338)
    (compatible r2 h339)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h342)
    (compatible r2 h343)
    (compatible r2 h344)
    (compatible r2 h345)
    (compatible r2 h346)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h349)
    (compatible r2 h350)
    (compatible r2 h351)
    (compatible r2 h352)
    (compatible r2 h353)
    (compatible r2 h354)
    (compatible r2 h355)
    (compatible r2 h356)
    (compatible r2 h357)
    (compatible r2 h358)
    (compatible r2 h359)
    (compatible r2 h360)
    (compatible r2 h361)
    (compatible r2 h362)
    (compatible r2 h363)
    (compatible r2 h364)
    (compatible r2 h365)
    (compatible r2 h366)
    (compatible r2 h367)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h370)
    (compatible r2 h371)
    (compatible r2 h372)
    (compatible r2 h373)
    (compatible r2 h374)
    (compatible r2 h375)
    (compatible r2 h376)
    (compatible r2 h377)
    (compatible r2 h378)
    (compatible r2 h379)
    (compatible r2 h380)
    (compatible r2 h381)
    (compatible r2 h382)
    (compatible r2 h383)
    (compatible r2 h384)
    (compatible r2 h385)
    (compatible r2 h386)
    (compatible r2 h387)
    (compatible r2 h388)
    (compatible r2 h389)
    (compatible r2 h390)
    (compatible r2 h391)
    (compatible r2 h392)
    (compatible r2 h393)
    (compatible r2 h394)
    (compatible r2 h395)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h398)
    (compatible r2 h399)
    (compatible r2 h400)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
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
