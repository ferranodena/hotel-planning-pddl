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
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 1 persones
    ;; h12: 3 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 4 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 4 persones
    ;; h74: 2 persones
    ;; h75: 2 persones
    ;; h76: 3 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 4 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 1 persones
    ;; h85: 2 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 4 persones
    ;; h92: 4 persones
    ;; h93: 3 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 4 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 1 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 1 persones
    ;; h116: 1 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 1 persones
    ;; h121: 4 persones
    ;; h122: 1 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 4 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 1 persones
    ;; h133: 2 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 1 persones
    ;; h139: 2 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 4 persones
    ;; h151: 2 persones
    ;; h152: 2 persones
    ;; h153: 1 persones
    ;; h154: 3 persones
    ;; h155: 2 persones
    ;; h156: 3 persones
    ;; h157: 2 persones
    ;; h158: 1 persones
    ;; h159: 4 persones
    ;; h160: 4 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 2 persones
    ;; h164: 1 persones
    ;; h165: 3 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 1 persones
    ;; h169: 2 persones
    ;; h170: 2 persones
    ;; h171: 1 persones
    ;; h172: 4 persones
    ;; h173: 3 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 3 persones
    ;; h177: 3 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 3 persones
    ;; h183: 3 persones
    ;; h184: 1 persones
    ;; h185: 4 persones
    ;; h186: 4 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 3 persones
    ;; h190: 1 persones
    ;; h191: 4 persones
    ;; h192: 2 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 2 persones
    ;; h196: 2 persones
    ;; h197: 4 persones
    ;; h198: 3 persones
    ;; h199: 3 persones
    ;; h200: 1 persones
    ;; h201: 2 persones
    ;; h202: 1 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 2 persones
    ;; h206: 1 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 3 persones
    ;; h210: 3 persones
    ;; h211: 2 persones
    ;; h212: 2 persones
    ;; h213: 4 persones
    ;; h214: 2 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 1 persones
    ;; h218: 1 persones
    ;; h219: 4 persones
    ;; h220: 1 persones
    ;; h221: 4 persones
    ;; h222: 2 persones
    ;; h223: 3 persones
    ;; h224: 1 persones
    ;; h225: 3 persones
    ;; h226: 2 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 2 persones
    ;; h230: 1 persones
    ;; h231: 2 persones
    ;; h232: 2 persones
    ;; h233: 3 persones
    ;; h234: 1 persones
    ;; h235: 2 persones
    ;; h236: 2 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 4 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 3 persones
    ;; h244: 3 persones
    ;; h245: 4 persones
    ;; h246: 2 persones
    ;; h247: 3 persones
    ;; h248: 3 persones
    ;; h249: 2 persones
    ;; h250: 4 persones
    ;; h251: 2 persones
    ;; h252: 1 persones
    ;; h253: 1 persones
    ;; h254: 3 persones
    ;; h255: 4 persones
    ;; h256: 3 persones
    ;; h257: 2 persones
    ;; h258: 1 persones
    ;; h259: 1 persones
    ;; h260: 2 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 4 persones
    ;; h264: 4 persones
    ;; h265: 1 persones
    ;; h266: 1 persones
    ;; h267: 4 persones
    ;; h268: 2 persones
    ;; h269: 3 persones
    ;; h270: 4 persones
    ;; h271: 2 persones
    ;; h272: 2 persones
    ;; h273: 1 persones
    ;; h274: 2 persones
    ;; h275: 3 persones
    ;; h276: 4 persones
    ;; h277: 4 persones
    ;; h278: 4 persones
    ;; h279: 4 persones
    ;; h280: 4 persones
    ;; h281: 2 persones
    ;; h282: 4 persones
    ;; h283: 3 persones
    ;; h284: 3 persones
    ;; h285: 4 persones
    ;; h286: 2 persones
    ;; h287: 1 persones
    ;; h288: 2 persones
    ;; h289: 2 persones
    ;; h290: 1 persones
    ;; h291: 1 persones
    ;; h292: 2 persones
    ;; h293: 3 persones
    ;; h294: 3 persones
    ;; h295: 2 persones
    ;; h296: 1 persones
    ;; h297: 1 persones
    ;; h298: 1 persones
    ;; h299: 1 persones
    ;; h300: 4 persones
    ;; h301: 1 persones
    ;; h302: 4 persones
    ;; h303: 1 persones
    ;; h304: 2 persones
    ;; h305: 1 persones
    ;; h306: 3 persones
    ;; h307: 1 persones
    ;; h308: 2 persones
    ;; h309: 1 persones
    ;; h310: 3 persones
    ;; h311: 1 persones
    ;; h312: 4 persones
    ;; h313: 4 persones
    ;; h314: 4 persones
    ;; h315: 4 persones
    ;; h316: 3 persones
    ;; h317: 4 persones
    ;; h318: 2 persones
    ;; h319: 2 persones
    ;; h320: 3 persones
    ;; h321: 1 persones
    ;; h322: 2 persones
    ;; h323: 4 persones
    ;; h324: 2 persones
    ;; h325: 4 persones
    ;; h326: 1 persones
    ;; h327: 4 persones
    ;; h328: 4 persones
    ;; h329: 4 persones
    ;; h330: 2 persones
    ;; h331: 3 persones
    ;; h332: 1 persones
    ;; h333: 1 persones
    ;; h334: 1 persones
    ;; h335: 2 persones
    ;; h336: 1 persones
    ;; h337: 4 persones
    ;; h338: 2 persones
    ;; h339: 1 persones
    ;; h340: 3 persones
    ;; h341: 1 persones
    ;; h342: 4 persones
    ;; h343: 1 persones
    ;; h344: 2 persones
    ;; h345: 1 persones
    ;; h346: 4 persones
    ;; h347: 2 persones
    ;; h348: 1 persones
    ;; h349: 2 persones
    ;; h350: 4 persones
    ;; h351: 2 persones
    ;; h352: 3 persones
    ;; h353: 3 persones
    ;; h354: 1 persones
    ;; h355: 4 persones
    ;; h356: 2 persones
    ;; h357: 4 persones
    ;; h358: 2 persones
    ;; h359: 4 persones
    ;; h360: 2 persones
    ;; h361: 1 persones
    ;; h362: 4 persones
    ;; h363: 1 persones
    ;; h364: 1 persones
    ;; h365: 2 persones
    ;; h366: 3 persones
    ;; h367: 1 persones
    ;; h368: 1 persones
    ;; h369: 3 persones
    ;; h370: 2 persones
    ;; h371: 1 persones
    ;; h372: 2 persones
    ;; h373: 2 persones
    ;; h374: 4 persones
    ;; h375: 3 persones
    ;; h376: 3 persones
    ;; h377: 4 persones
    ;; h378: 3 persones
    ;; h379: 2 persones
    ;; h380: 3 persones
    ;; h381: 1 persones
    ;; h382: 1 persones
    ;; h383: 3 persones
    ;; h384: 4 persones
    ;; h385: 2 persones
    ;; h386: 2 persones
    ;; h387: 4 persones
    ;; h388: 2 persones
    ;; h389: 2 persones
    ;; h390: 3 persones
    ;; h391: 4 persones
    ;; h392: 3 persones
    ;; h393: 1 persones
    ;; h394: 2 persones
    ;; h395: 4 persones
    ;; h396: 4 persones
    ;; h397: 2 persones
    ;; h398: 2 persones
    ;; h399: 2 persones
    ;; h400: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h13)
    (compatible r1 h18)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h32)
    (compatible r1 h36)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h62)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h79)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h103)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h127)
    (compatible r1 h130)
    (compatible r1 h140)
    (compatible r1 h144)
    (compatible r1 h150)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h172)
    (compatible r1 h175)
    (compatible r1 h179)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h191)
    (compatible r1 h197)
    (compatible r1 h213)
    (compatible r1 h216)
    (compatible r1 h219)
    (compatible r1 h221)
    (compatible r1 h228)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h242)
    (compatible r1 h245)
    (compatible r1 h250)
    (compatible r1 h255)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h267)
    (compatible r1 h270)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h282)
    (compatible r1 h285)
    (compatible r1 h300)
    (compatible r1 h302)
    (compatible r1 h312)
    (compatible r1 h313)
    (compatible r1 h314)
    (compatible r1 h315)
    (compatible r1 h317)
    (compatible r1 h323)
    (compatible r1 h325)
    (compatible r1 h327)
    (compatible r1 h328)
    (compatible r1 h329)
    (compatible r1 h337)
    (compatible r1 h342)
    (compatible r1 h346)
    (compatible r1 h350)
    (compatible r1 h355)
    (compatible r1 h357)
    (compatible r1 h359)
    (compatible r1 h362)
    (compatible r1 h374)
    (compatible r1 h377)
    (compatible r1 h384)
    (compatible r1 h387)
    (compatible r1 h391)
    (compatible r1 h395)
    (compatible r1 h396)

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
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
