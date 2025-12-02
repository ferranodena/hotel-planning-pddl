(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 3 persones
    ;; h67: 2 persones
    ;; h68: 4 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 4 persones
    ;; h79: 4 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 1 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 1 persones
    ;; h93: 4 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 4 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 1 persones
    ;; h101: 1 persones
    ;; h102: 2 persones
    ;; h103: 3 persones
    ;; h104: 2 persones
    ;; h105: 4 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 2 persones
    ;; h115: 1 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 4 persones
    ;; h121: 2 persones
    ;; h122: 2 persones
    ;; h123: 3 persones
    ;; h124: 3 persones
    ;; h125: 2 persones
    ;; h126: 4 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 3 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 3 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 2 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 1 persones
    ;; h153: 2 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 4 persones
    ;; h159: 3 persones
    ;; h160: 3 persones
    ;; h161: 2 persones
    ;; h162: 4 persones
    ;; h163: 2 persones
    ;; h164: 4 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 4 persones
    ;; h169: 2 persones
    ;; h170: 1 persones
    ;; h171: 2 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 2 persones
    ;; h175: 4 persones
    ;; h176: 1 persones
    ;; h177: 4 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 2 persones
    ;; h185: 1 persones
    ;; h186: 4 persones
    ;; h187: 1 persones
    ;; h188: 2 persones
    ;; h189: 2 persones
    ;; h190: 2 persones
    ;; h191: 1 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 1 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 4 persones
    ;; h200: 4 persones
    ;; h201: 2 persones
    ;; h202: 3 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 1 persones
    ;; h206: 4 persones
    ;; h207: 2 persones
    ;; h208: 4 persones
    ;; h209: 2 persones
    ;; h210: 1 persones
    ;; h211: 3 persones
    ;; h212: 4 persones
    ;; h213: 4 persones
    ;; h214: 2 persones
    ;; h215: 3 persones
    ;; h216: 1 persones
    ;; h217: 2 persones
    ;; h218: 2 persones
    ;; h219: 3 persones
    ;; h220: 4 persones
    ;; h221: 1 persones
    ;; h222: 2 persones
    ;; h223: 4 persones
    ;; h224: 2 persones
    ;; h225: 3 persones
    ;; h226: 1 persones
    ;; h227: 3 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 2 persones
    ;; h231: 1 persones
    ;; h232: 3 persones
    ;; h233: 3 persones
    ;; h234: 3 persones
    ;; h235: 2 persones
    ;; h236: 3 persones
    ;; h237: 2 persones
    ;; h238: 2 persones
    ;; h239: 4 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 2 persones
    ;; h243: 3 persones
    ;; h244: 2 persones
    ;; h245: 4 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 2 persones
    ;; h249: 4 persones
    ;; h250: 3 persones
    ;; h251: 2 persones
    ;; h252: 4 persones
    ;; h253: 2 persones
    ;; h254: 4 persones
    ;; h255: 4 persones
    ;; h256: 4 persones
    ;; h257: 1 persones
    ;; h258: 2 persones
    ;; h259: 4 persones
    ;; h260: 2 persones
    ;; h261: 2 persones
    ;; h262: 3 persones
    ;; h263: 3 persones
    ;; h264: 3 persones
    ;; h265: 2 persones
    ;; h266: 1 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 1 persones
    ;; h270: 2 persones
    ;; h271: 2 persones
    ;; h272: 4 persones
    ;; h273: 4 persones
    ;; h274: 3 persones
    ;; h275: 3 persones
    ;; h276: 3 persones
    ;; h277: 4 persones
    ;; h278: 2 persones
    ;; h279: 1 persones
    ;; h280: 3 persones
    ;; h281: 4 persones
    ;; h282: 2 persones
    ;; h283: 2 persones
    ;; h284: 3 persones
    ;; h285: 3 persones
    ;; h286: 3 persones
    ;; h287: 2 persones
    ;; h288: 3 persones
    ;; h289: 1 persones
    ;; h290: 3 persones
    ;; h291: 2 persones
    ;; h292: 3 persones
    ;; h293: 4 persones
    ;; h294: 3 persones
    ;; h295: 4 persones
    ;; h296: 3 persones
    ;; h297: 4 persones
    ;; h298: 1 persones
    ;; h299: 1 persones
    ;; h300: 3 persones
    ;; h301: 1 persones
    ;; h302: 2 persones
    ;; h303: 3 persones
    ;; h304: 4 persones
    ;; h305: 3 persones
    ;; h306: 2 persones
    ;; h307: 1 persones
    ;; h308: 3 persones
    ;; h309: 1 persones
    ;; h310: 1 persones
    ;; h311: 3 persones
    ;; h312: 3 persones
    ;; h313: 3 persones
    ;; h314: 1 persones
    ;; h315: 2 persones
    ;; h316: 1 persones
    ;; h317: 1 persones
    ;; h318: 2 persones
    ;; h319: 2 persones
    ;; h320: 1 persones
    ;; h321: 2 persones
    ;; h322: 1 persones
    ;; h323: 2 persones
    ;; h324: 2 persones
    ;; h325: 4 persones
    ;; h326: 1 persones
    ;; h327: 4 persones
    ;; h328: 2 persones
    ;; h329: 3 persones
    ;; h330: 3 persones
    ;; h331: 3 persones
    ;; h332: 4 persones
    ;; h333: 2 persones
    ;; h334: 4 persones
    ;; h335: 3 persones
    ;; h336: 4 persones
    ;; h337: 3 persones
    ;; h338: 3 persones
    ;; h339: 2 persones
    ;; h340: 4 persones
    ;; h341: 4 persones
    ;; h342: 3 persones
    ;; h343: 2 persones
    ;; h344: 3 persones
    ;; h345: 2 persones
    ;; h346: 2 persones
    ;; h347: 2 persones
    ;; h348: 4 persones
    ;; h349: 2 persones
    ;; h350: 2 persones
    ;; h351: 4 persones
    ;; h352: 1 persones
    ;; h353: 3 persones
    ;; h354: 1 persones
    ;; h355: 1 persones
    ;; h356: 2 persones
    ;; h357: 3 persones
    ;; h358: 2 persones
    ;; h359: 4 persones
    ;; h360: 2 persones
    ;; h361: 2 persones
    ;; h362: 2 persones
    ;; h363: 4 persones
    ;; h364: 2 persones
    ;; h365: 4 persones
    ;; h366: 2 persones
    ;; h367: 1 persones
    ;; h368: 4 persones
    ;; h369: 4 persones
    ;; h370: 4 persones
    ;; h371: 2 persones
    ;; h372: 1 persones
    ;; h373: 3 persones
    ;; h374: 1 persones
    ;; h375: 4 persones
    ;; h376: 4 persones
    ;; h377: 2 persones
    ;; h378: 1 persones
    ;; h379: 1 persones
    ;; h380: 2 persones
    ;; h381: 4 persones
    ;; h382: 2 persones
    ;; h383: 1 persones
    ;; h384: 1 persones
    ;; h385: 4 persones
    ;; h386: 4 persones
    ;; h387: 1 persones
    ;; h388: 1 persones
    ;; h389: 1 persones
    ;; h390: 3 persones
    ;; h391: 2 persones
    ;; h392: 2 persones
    ;; h393: 3 persones
    ;; h394: 3 persones
    ;; h395: 4 persones
    ;; h396: 4 persones
    ;; h397: 4 persones
    ;; h398: 1 persones
    ;; h399: 2 persones
    ;; h400: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h56)
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
    (compatible r1 h87)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
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
    (compatible r1 h128)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h153)
    (compatible r1 h154)
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
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h206)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h227)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
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
    (compatible r1 h258)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h262)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h265)
    (compatible r1 h267)
    (compatible r1 h268)
    (compatible r1 h270)
    (compatible r1 h271)
    (compatible r1 h272)
    (compatible r1 h273)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h280)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h296)
    (compatible r1 h297)
    (compatible r1 h300)
    (compatible r1 h302)
    (compatible r1 h303)
    (compatible r1 h304)
    (compatible r1 h305)
    (compatible r1 h306)
    (compatible r1 h308)
    (compatible r1 h311)
    (compatible r1 h312)
    (compatible r1 h313)
    (compatible r1 h315)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h321)
    (compatible r1 h323)
    (compatible r1 h324)
    (compatible r1 h325)
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
    (compatible r1 h353)
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
    (compatible r1 h368)
    (compatible r1 h369)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h373)
    (compatible r1 h375)
    (compatible r1 h376)
    (compatible r1 h377)
    (compatible r1 h380)
    (compatible r1 h381)
    (compatible r1 h382)
    (compatible r1 h385)
    (compatible r1 h386)
    (compatible r1 h390)
    (compatible r1 h391)
    (compatible r1 h392)
    (compatible r1 h393)
    (compatible r1 h394)
    (compatible r1 h395)
    (compatible r1 h396)
    (compatible r1 h397)
    (compatible r1 h399)
    (compatible r1 h400)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h44)
    (compatible r2 h49)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h66)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h143)
    (compatible r2 h148)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h162)
    (compatible r2 h164)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h186)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h202)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h223)
    (compatible r2 h225)
    (compatible r2 h227)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h236)
    (compatible r2 h239)
    (compatible r2 h243)
    (compatible r2 h245)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h252)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h256)
    (compatible r2 h259)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h268)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h277)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h284)
    (compatible r2 h285)
    (compatible r2 h286)
    (compatible r2 h288)
    (compatible r2 h290)
    (compatible r2 h292)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h297)
    (compatible r2 h300)
    (compatible r2 h303)
    (compatible r2 h304)
    (compatible r2 h305)
    (compatible r2 h308)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h325)
    (compatible r2 h327)
    (compatible r2 h329)
    (compatible r2 h330)
    (compatible r2 h331)
    (compatible r2 h332)
    (compatible r2 h334)
    (compatible r2 h335)
    (compatible r2 h336)
    (compatible r2 h337)
    (compatible r2 h338)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h342)
    (compatible r2 h344)
    (compatible r2 h348)
    (compatible r2 h351)
    (compatible r2 h353)
    (compatible r2 h357)
    (compatible r2 h359)
    (compatible r2 h363)
    (compatible r2 h365)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h370)
    (compatible r2 h373)
    (compatible r2 h375)
    (compatible r2 h376)
    (compatible r2 h381)
    (compatible r2 h385)
    (compatible r2 h386)
    (compatible r2 h390)
    (compatible r2 h393)
    (compatible r2 h394)
    (compatible r2 h395)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h400)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r2 d1)
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
