(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 h401 h402 h403 h404 h405 h406 h407 h408 h409 h410 h411 h412 h413 h414 h415 h416 h417 h418 h419 h420 h421 h422 h423 h424 h425 h426 h427 h428 h429 h430 h431 h432 h433 h434 h435 h436 h437 h438 h439 h440 h441 h442 h443 h444 h445 h446 h447 h448 h449 h450 h451 h452 h453 h454 h455 h456 h457 h458 h459 h460 h461 h462 h463 h464 h465 h466 h467 h468 h469 h470 h471 h472 h473 h474 h475 h476 h477 h478 h479 h480 h481 h482 h483 h484 h485 h486 h487 h488 h489 h490 h491 h492 h493 h494 h495 h496 h497 h498 h499 h500 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 2 persones
    ;; h15: 3 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 2 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 3 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 1 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 2 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 1 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 3 persones
    ;; h77: 2 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 4 persones
    ;; h90: 1 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 3 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 1 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 2 persones
    ;; h100: 4 persones
    ;; h101: 4 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 2 persones
    ;; h111: 4 persones
    ;; h112: 4 persones
    ;; h113: 1 persones
    ;; h114: 2 persones
    ;; h115: 1 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 3 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 2 persones
    ;; h124: 4 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 3 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 2 persones
    ;; h138: 3 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 3 persones
    ;; h142: 1 persones
    ;; h143: 2 persones
    ;; h144: 1 persones
    ;; h145: 1 persones
    ;; h146: 1 persones
    ;; h147: 3 persones
    ;; h148: 2 persones
    ;; h149: 3 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 3 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 3 persones
    ;; h158: 1 persones
    ;; h159: 3 persones
    ;; h160: 3 persones
    ;; h161: 1 persones
    ;; h162: 2 persones
    ;; h163: 3 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 3 persones
    ;; h168: 1 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 2 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 1 persones
    ;; h175: 4 persones
    ;; h176: 3 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 1 persones
    ;; h181: 1 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 2 persones
    ;; h189: 4 persones
    ;; h190: 1 persones
    ;; h191: 4 persones
    ;; h192: 1 persones
    ;; h193: 4 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 4 persones
    ;; h201: 2 persones
    ;; h202: 4 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 3 persones
    ;; h206: 2 persones
    ;; h207: 4 persones
    ;; h208: 2 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 2 persones
    ;; h212: 1 persones
    ;; h213: 4 persones
    ;; h214: 3 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 4 persones
    ;; h218: 3 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 2 persones
    ;; h222: 2 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 2 persones
    ;; h226: 2 persones
    ;; h227: 1 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 4 persones
    ;; h231: 1 persones
    ;; h232: 1 persones
    ;; h233: 1 persones
    ;; h234: 3 persones
    ;; h235: 3 persones
    ;; h236: 2 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 1 persones
    ;; h240: 4 persones
    ;; h241: 1 persones
    ;; h242: 2 persones
    ;; h243: 3 persones
    ;; h244: 2 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 3 persones
    ;; h248: 1 persones
    ;; h249: 1 persones
    ;; h250: 3 persones
    ;; h251: 1 persones
    ;; h252: 1 persones
    ;; h253: 1 persones
    ;; h254: 1 persones
    ;; h255: 3 persones
    ;; h256: 1 persones
    ;; h257: 1 persones
    ;; h258: 4 persones
    ;; h259: 3 persones
    ;; h260: 3 persones
    ;; h261: 4 persones
    ;; h262: 2 persones
    ;; h263: 3 persones
    ;; h264: 2 persones
    ;; h265: 3 persones
    ;; h266: 4 persones
    ;; h267: 1 persones
    ;; h268: 4 persones
    ;; h269: 1 persones
    ;; h270: 4 persones
    ;; h271: 4 persones
    ;; h272: 3 persones
    ;; h273: 2 persones
    ;; h274: 1 persones
    ;; h275: 4 persones
    ;; h276: 4 persones
    ;; h277: 2 persones
    ;; h278: 3 persones
    ;; h279: 2 persones
    ;; h280: 3 persones
    ;; h281: 2 persones
    ;; h282: 3 persones
    ;; h283: 1 persones
    ;; h284: 1 persones
    ;; h285: 1 persones
    ;; h286: 3 persones
    ;; h287: 4 persones
    ;; h288: 1 persones
    ;; h289: 4 persones
    ;; h290: 4 persones
    ;; h291: 2 persones
    ;; h292: 4 persones
    ;; h293: 2 persones
    ;; h294: 3 persones
    ;; h295: 3 persones
    ;; h296: 2 persones
    ;; h297: 2 persones
    ;; h298: 2 persones
    ;; h299: 2 persones
    ;; h300: 1 persones
    ;; h301: 3 persones
    ;; h302: 4 persones
    ;; h303: 4 persones
    ;; h304: 4 persones
    ;; h305: 1 persones
    ;; h306: 2 persones
    ;; h307: 4 persones
    ;; h308: 1 persones
    ;; h309: 2 persones
    ;; h310: 4 persones
    ;; h311: 4 persones
    ;; h312: 1 persones
    ;; h313: 4 persones
    ;; h314: 1 persones
    ;; h315: 1 persones
    ;; h316: 3 persones
    ;; h317: 1 persones
    ;; h318: 3 persones
    ;; h319: 4 persones
    ;; h320: 3 persones
    ;; h321: 4 persones
    ;; h322: 2 persones
    ;; h323: 3 persones
    ;; h324: 4 persones
    ;; h325: 2 persones
    ;; h326: 3 persones
    ;; h327: 4 persones
    ;; h328: 4 persones
    ;; h329: 1 persones
    ;; h330: 4 persones
    ;; h331: 3 persones
    ;; h332: 3 persones
    ;; h333: 1 persones
    ;; h334: 4 persones
    ;; h335: 2 persones
    ;; h336: 4 persones
    ;; h337: 3 persones
    ;; h338: 3 persones
    ;; h339: 1 persones
    ;; h340: 1 persones
    ;; h341: 2 persones
    ;; h342: 2 persones
    ;; h343: 1 persones
    ;; h344: 1 persones
    ;; h345: 1 persones
    ;; h346: 1 persones
    ;; h347: 3 persones
    ;; h348: 4 persones
    ;; h349: 1 persones
    ;; h350: 1 persones
    ;; h351: 4 persones
    ;; h352: 4 persones
    ;; h353: 4 persones
    ;; h354: 2 persones
    ;; h355: 3 persones
    ;; h356: 1 persones
    ;; h357: 4 persones
    ;; h358: 1 persones
    ;; h359: 3 persones
    ;; h360: 2 persones
    ;; h361: 3 persones
    ;; h362: 2 persones
    ;; h363: 1 persones
    ;; h364: 2 persones
    ;; h365: 1 persones
    ;; h366: 3 persones
    ;; h367: 1 persones
    ;; h368: 2 persones
    ;; h369: 1 persones
    ;; h370: 4 persones
    ;; h371: 3 persones
    ;; h372: 3 persones
    ;; h373: 2 persones
    ;; h374: 3 persones
    ;; h375: 3 persones
    ;; h376: 3 persones
    ;; h377: 1 persones
    ;; h378: 4 persones
    ;; h379: 1 persones
    ;; h380: 2 persones
    ;; h381: 2 persones
    ;; h382: 1 persones
    ;; h383: 3 persones
    ;; h384: 3 persones
    ;; h385: 4 persones
    ;; h386: 3 persones
    ;; h387: 1 persones
    ;; h388: 1 persones
    ;; h389: 2 persones
    ;; h390: 3 persones
    ;; h391: 2 persones
    ;; h392: 2 persones
    ;; h393: 2 persones
    ;; h394: 2 persones
    ;; h395: 3 persones
    ;; h396: 2 persones
    ;; h397: 3 persones
    ;; h398: 1 persones
    ;; h399: 2 persones
    ;; h400: 1 persones
    ;; h401: 4 persones
    ;; h402: 2 persones
    ;; h403: 1 persones
    ;; h404: 2 persones
    ;; h405: 3 persones
    ;; h406: 3 persones
    ;; h407: 4 persones
    ;; h408: 2 persones
    ;; h409: 3 persones
    ;; h410: 3 persones
    ;; h411: 4 persones
    ;; h412: 1 persones
    ;; h413: 1 persones
    ;; h414: 3 persones
    ;; h415: 1 persones
    ;; h416: 1 persones
    ;; h417: 4 persones
    ;; h418: 3 persones
    ;; h419: 3 persones
    ;; h420: 3 persones
    ;; h421: 3 persones
    ;; h422: 1 persones
    ;; h423: 4 persones
    ;; h424: 4 persones
    ;; h425: 2 persones
    ;; h426: 4 persones
    ;; h427: 1 persones
    ;; h428: 3 persones
    ;; h429: 2 persones
    ;; h430: 4 persones
    ;; h431: 1 persones
    ;; h432: 4 persones
    ;; h433: 2 persones
    ;; h434: 1 persones
    ;; h435: 4 persones
    ;; h436: 3 persones
    ;; h437: 2 persones
    ;; h438: 2 persones
    ;; h439: 2 persones
    ;; h440: 4 persones
    ;; h441: 3 persones
    ;; h442: 2 persones
    ;; h443: 3 persones
    ;; h444: 4 persones
    ;; h445: 4 persones
    ;; h446: 4 persones
    ;; h447: 2 persones
    ;; h448: 4 persones
    ;; h449: 4 persones
    ;; h450: 1 persones
    ;; h451: 1 persones
    ;; h452: 1 persones
    ;; h453: 1 persones
    ;; h454: 4 persones
    ;; h455: 2 persones
    ;; h456: 1 persones
    ;; h457: 4 persones
    ;; h458: 2 persones
    ;; h459: 1 persones
    ;; h460: 2 persones
    ;; h461: 3 persones
    ;; h462: 2 persones
    ;; h463: 1 persones
    ;; h464: 2 persones
    ;; h465: 4 persones
    ;; h466: 4 persones
    ;; h467: 4 persones
    ;; h468: 3 persones
    ;; h469: 4 persones
    ;; h470: 2 persones
    ;; h471: 2 persones
    ;; h472: 4 persones
    ;; h473: 2 persones
    ;; h474: 2 persones
    ;; h475: 4 persones
    ;; h476: 3 persones
    ;; h477: 4 persones
    ;; h478: 2 persones
    ;; h479: 4 persones
    ;; h480: 2 persones
    ;; h481: 3 persones
    ;; h482: 4 persones
    ;; h483: 4 persones
    ;; h484: 3 persones
    ;; h485: 4 persones
    ;; h486: 1 persones
    ;; h487: 2 persones
    ;; h488: 4 persones
    ;; h489: 2 persones
    ;; h490: 1 persones
    ;; h491: 1 persones
    ;; h492: 1 persones
    ;; h493: 1 persones
    ;; h494: 3 persones
    ;; h495: 2 persones
    ;; h496: 3 persones
    ;; h497: 1 persones
    ;; h498: 3 persones
    ;; h499: 3 persones
    ;; h500: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h57)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h98)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h107)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h157)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h163)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h169)
    (compatible r1 h173)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h183)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h189)
    (compatible r1 h191)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h198)
    (compatible r1 h200)
    (compatible r1 h202)
    (compatible r1 h205)
    (compatible r1 h207)
    (compatible r1 h209)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h230)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h238)
    (compatible r1 h240)
    (compatible r1 h243)
    (compatible r1 h247)
    (compatible r1 h250)
    (compatible r1 h255)
    (compatible r1 h258)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h265)
    (compatible r1 h266)
    (compatible r1 h268)
    (compatible r1 h270)
    (compatible r1 h271)
    (compatible r1 h272)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h278)
    (compatible r1 h280)
    (compatible r1 h282)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h292)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h301)
    (compatible r1 h302)
    (compatible r1 h303)
    (compatible r1 h304)
    (compatible r1 h307)
    (compatible r1 h310)
    (compatible r1 h311)
    (compatible r1 h313)
    (compatible r1 h316)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h320)
    (compatible r1 h321)
    (compatible r1 h323)
    (compatible r1 h324)
    (compatible r1 h326)
    (compatible r1 h327)
    (compatible r1 h328)
    (compatible r1 h330)
    (compatible r1 h331)
    (compatible r1 h332)
    (compatible r1 h334)
    (compatible r1 h336)
    (compatible r1 h337)
    (compatible r1 h338)
    (compatible r1 h347)
    (compatible r1 h348)
    (compatible r1 h351)
    (compatible r1 h352)
    (compatible r1 h353)
    (compatible r1 h355)
    (compatible r1 h357)
    (compatible r1 h359)
    (compatible r1 h361)
    (compatible r1 h366)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h372)
    (compatible r1 h374)
    (compatible r1 h375)
    (compatible r1 h376)
    (compatible r1 h378)
    (compatible r1 h383)
    (compatible r1 h384)
    (compatible r1 h385)
    (compatible r1 h386)
    (compatible r1 h390)
    (compatible r1 h395)
    (compatible r1 h397)
    (compatible r1 h401)
    (compatible r1 h405)
    (compatible r1 h406)
    (compatible r1 h407)
    (compatible r1 h409)
    (compatible r1 h410)
    (compatible r1 h411)
    (compatible r1 h414)
    (compatible r1 h417)
    (compatible r1 h418)
    (compatible r1 h419)
    (compatible r1 h420)
    (compatible r1 h421)
    (compatible r1 h423)
    (compatible r1 h424)
    (compatible r1 h426)
    (compatible r1 h428)
    (compatible r1 h430)
    (compatible r1 h432)
    (compatible r1 h435)
    (compatible r1 h436)
    (compatible r1 h440)
    (compatible r1 h441)
    (compatible r1 h443)
    (compatible r1 h444)
    (compatible r1 h445)
    (compatible r1 h446)
    (compatible r1 h448)
    (compatible r1 h449)
    (compatible r1 h454)
    (compatible r1 h457)
    (compatible r1 h461)
    (compatible r1 h465)
    (compatible r1 h466)
    (compatible r1 h467)
    (compatible r1 h468)
    (compatible r1 h469)
    (compatible r1 h472)
    (compatible r1 h475)
    (compatible r1 h476)
    (compatible r1 h477)
    (compatible r1 h479)
    (compatible r1 h481)
    (compatible r1 h482)
    (compatible r1 h483)
    (compatible r1 h484)
    (compatible r1 h485)
    (compatible r1 h488)
    (compatible r1 h494)
    (compatible r1 h496)
    (compatible r1 h498)
    (compatible r1 h499)
    (compatible r1 h500)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h13)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h34)
    (compatible r2 h39)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h57)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h73)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h107)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h132)
    (compatible r2 h139)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h154)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h183)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h191)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h200)
    (compatible r2 h202)
    (compatible r2 h207)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h223)
    (compatible r2 h230)
    (compatible r2 h238)
    (compatible r2 h240)
    (compatible r2 h258)
    (compatible r2 h261)
    (compatible r2 h266)
    (compatible r2 h268)
    (compatible r2 h270)
    (compatible r2 h271)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h287)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h292)
    (compatible r2 h302)
    (compatible r2 h303)
    (compatible r2 h304)
    (compatible r2 h307)
    (compatible r2 h310)
    (compatible r2 h311)
    (compatible r2 h313)
    (compatible r2 h319)
    (compatible r2 h321)
    (compatible r2 h324)
    (compatible r2 h327)
    (compatible r2 h328)
    (compatible r2 h330)
    (compatible r2 h334)
    (compatible r2 h336)
    (compatible r2 h348)
    (compatible r2 h351)
    (compatible r2 h352)
    (compatible r2 h353)
    (compatible r2 h357)
    (compatible r2 h370)
    (compatible r2 h378)
    (compatible r2 h385)
    (compatible r2 h401)
    (compatible r2 h407)
    (compatible r2 h411)
    (compatible r2 h417)
    (compatible r2 h423)
    (compatible r2 h424)
    (compatible r2 h426)
    (compatible r2 h430)
    (compatible r2 h432)
    (compatible r2 h435)
    (compatible r2 h440)
    (compatible r2 h444)
    (compatible r2 h445)
    (compatible r2 h446)
    (compatible r2 h448)
    (compatible r2 h449)
    (compatible r2 h454)
    (compatible r2 h457)
    (compatible r2 h465)
    (compatible r2 h466)
    (compatible r2 h467)
    (compatible r2 h469)
    (compatible r2 h472)
    (compatible r2 h475)
    (compatible r2 h477)
    (compatible r2 h479)
    (compatible r2 h482)
    (compatible r2 h483)
    (compatible r2 h485)
    (compatible r2 h488)
    (compatible r2 h500)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
