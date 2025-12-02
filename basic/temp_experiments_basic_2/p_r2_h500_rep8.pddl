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
    ;; h2: 2 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 3 persones
    ;; h61: 4 persones
    ;; h62: 3 persones
    ;; h63: 4 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 4 persones
    ;; h80: 4 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 3 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 2 persones
    ;; h91: 2 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 2 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 3 persones
    ;; h101: 4 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 2 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 4 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 2 persones
    ;; h114: 2 persones
    ;; h115: 1 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 2 persones
    ;; h119: 3 persones
    ;; h120: 3 persones
    ;; h121: 1 persones
    ;; h122: 4 persones
    ;; h123: 1 persones
    ;; h124: 4 persones
    ;; h125: 4 persones
    ;; h126: 4 persones
    ;; h127: 2 persones
    ;; h128: 3 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 3 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 3 persones
    ;; h140: 3 persones
    ;; h141: 3 persones
    ;; h142: 4 persones
    ;; h143: 2 persones
    ;; h144: 1 persones
    ;; h145: 4 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 4 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 3 persones
    ;; h153: 2 persones
    ;; h154: 4 persones
    ;; h155: 3 persones
    ;; h156: 1 persones
    ;; h157: 4 persones
    ;; h158: 3 persones
    ;; h159: 4 persones
    ;; h160: 4 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 3 persones
    ;; h170: 3 persones
    ;; h171: 3 persones
    ;; h172: 1 persones
    ;; h173: 1 persones
    ;; h174: 1 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 1 persones
    ;; h178: 3 persones
    ;; h179: 2 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 1 persones
    ;; h183: 1 persones
    ;; h184: 3 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 3 persones
    ;; h188: 3 persones
    ;; h189: 3 persones
    ;; h190: 2 persones
    ;; h191: 3 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 2 persones
    ;; h196: 4 persones
    ;; h197: 2 persones
    ;; h198: 3 persones
    ;; h199: 3 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 3 persones
    ;; h203: 4 persones
    ;; h204: 3 persones
    ;; h205: 4 persones
    ;; h206: 4 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 3 persones
    ;; h210: 1 persones
    ;; h211: 3 persones
    ;; h212: 4 persones
    ;; h213: 1 persones
    ;; h214: 2 persones
    ;; h215: 1 persones
    ;; h216: 3 persones
    ;; h217: 3 persones
    ;; h218: 2 persones
    ;; h219: 4 persones
    ;; h220: 1 persones
    ;; h221: 4 persones
    ;; h222: 4 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 3 persones
    ;; h226: 4 persones
    ;; h227: 1 persones
    ;; h228: 4 persones
    ;; h229: 1 persones
    ;; h230: 4 persones
    ;; h231: 1 persones
    ;; h232: 3 persones
    ;; h233: 3 persones
    ;; h234: 1 persones
    ;; h235: 2 persones
    ;; h236: 2 persones
    ;; h237: 3 persones
    ;; h238: 2 persones
    ;; h239: 1 persones
    ;; h240: 3 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 3 persones
    ;; h244: 3 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 1 persones
    ;; h249: 1 persones
    ;; h250: 2 persones
    ;; h251: 1 persones
    ;; h252: 1 persones
    ;; h253: 1 persones
    ;; h254: 2 persones
    ;; h255: 3 persones
    ;; h256: 3 persones
    ;; h257: 1 persones
    ;; h258: 2 persones
    ;; h259: 2 persones
    ;; h260: 4 persones
    ;; h261: 4 persones
    ;; h262: 2 persones
    ;; h263: 2 persones
    ;; h264: 4 persones
    ;; h265: 2 persones
    ;; h266: 1 persones
    ;; h267: 3 persones
    ;; h268: 1 persones
    ;; h269: 1 persones
    ;; h270: 2 persones
    ;; h271: 2 persones
    ;; h272: 4 persones
    ;; h273: 1 persones
    ;; h274: 2 persones
    ;; h275: 1 persones
    ;; h276: 3 persones
    ;; h277: 3 persones
    ;; h278: 4 persones
    ;; h279: 4 persones
    ;; h280: 4 persones
    ;; h281: 1 persones
    ;; h282: 4 persones
    ;; h283: 2 persones
    ;; h284: 2 persones
    ;; h285: 2 persones
    ;; h286: 2 persones
    ;; h287: 1 persones
    ;; h288: 4 persones
    ;; h289: 1 persones
    ;; h290: 2 persones
    ;; h291: 2 persones
    ;; h292: 4 persones
    ;; h293: 1 persones
    ;; h294: 1 persones
    ;; h295: 2 persones
    ;; h296: 2 persones
    ;; h297: 3 persones
    ;; h298: 2 persones
    ;; h299: 4 persones
    ;; h300: 4 persones
    ;; h301: 1 persones
    ;; h302: 4 persones
    ;; h303: 3 persones
    ;; h304: 4 persones
    ;; h305: 2 persones
    ;; h306: 4 persones
    ;; h307: 3 persones
    ;; h308: 1 persones
    ;; h309: 3 persones
    ;; h310: 4 persones
    ;; h311: 4 persones
    ;; h312: 1 persones
    ;; h313: 1 persones
    ;; h314: 3 persones
    ;; h315: 1 persones
    ;; h316: 3 persones
    ;; h317: 3 persones
    ;; h318: 3 persones
    ;; h319: 4 persones
    ;; h320: 3 persones
    ;; h321: 3 persones
    ;; h322: 2 persones
    ;; h323: 3 persones
    ;; h324: 4 persones
    ;; h325: 4 persones
    ;; h326: 4 persones
    ;; h327: 2 persones
    ;; h328: 3 persones
    ;; h329: 3 persones
    ;; h330: 3 persones
    ;; h331: 4 persones
    ;; h332: 1 persones
    ;; h333: 4 persones
    ;; h334: 3 persones
    ;; h335: 3 persones
    ;; h336: 1 persones
    ;; h337: 1 persones
    ;; h338: 2 persones
    ;; h339: 2 persones
    ;; h340: 4 persones
    ;; h341: 2 persones
    ;; h342: 4 persones
    ;; h343: 2 persones
    ;; h344: 4 persones
    ;; h345: 2 persones
    ;; h346: 1 persones
    ;; h347: 3 persones
    ;; h348: 3 persones
    ;; h349: 1 persones
    ;; h350: 3 persones
    ;; h351: 2 persones
    ;; h352: 4 persones
    ;; h353: 3 persones
    ;; h354: 2 persones
    ;; h355: 1 persones
    ;; h356: 3 persones
    ;; h357: 4 persones
    ;; h358: 4 persones
    ;; h359: 3 persones
    ;; h360: 2 persones
    ;; h361: 2 persones
    ;; h362: 1 persones
    ;; h363: 3 persones
    ;; h364: 3 persones
    ;; h365: 3 persones
    ;; h366: 4 persones
    ;; h367: 3 persones
    ;; h368: 1 persones
    ;; h369: 2 persones
    ;; h370: 3 persones
    ;; h371: 4 persones
    ;; h372: 2 persones
    ;; h373: 4 persones
    ;; h374: 1 persones
    ;; h375: 4 persones
    ;; h376: 3 persones
    ;; h377: 1 persones
    ;; h378: 3 persones
    ;; h379: 2 persones
    ;; h380: 1 persones
    ;; h381: 3 persones
    ;; h382: 2 persones
    ;; h383: 1 persones
    ;; h384: 3 persones
    ;; h385: 4 persones
    ;; h386: 2 persones
    ;; h387: 4 persones
    ;; h388: 2 persones
    ;; h389: 4 persones
    ;; h390: 4 persones
    ;; h391: 3 persones
    ;; h392: 3 persones
    ;; h393: 4 persones
    ;; h394: 1 persones
    ;; h395: 2 persones
    ;; h396: 3 persones
    ;; h397: 2 persones
    ;; h398: 2 persones
    ;; h399: 2 persones
    ;; h400: 2 persones
    ;; h401: 3 persones
    ;; h402: 2 persones
    ;; h403: 1 persones
    ;; h404: 1 persones
    ;; h405: 3 persones
    ;; h406: 1 persones
    ;; h407: 4 persones
    ;; h408: 1 persones
    ;; h409: 4 persones
    ;; h410: 3 persones
    ;; h411: 3 persones
    ;; h412: 2 persones
    ;; h413: 2 persones
    ;; h414: 3 persones
    ;; h415: 2 persones
    ;; h416: 4 persones
    ;; h417: 4 persones
    ;; h418: 4 persones
    ;; h419: 3 persones
    ;; h420: 1 persones
    ;; h421: 2 persones
    ;; h422: 1 persones
    ;; h423: 4 persones
    ;; h424: 3 persones
    ;; h425: 1 persones
    ;; h426: 1 persones
    ;; h427: 3 persones
    ;; h428: 3 persones
    ;; h429: 1 persones
    ;; h430: 1 persones
    ;; h431: 4 persones
    ;; h432: 3 persones
    ;; h433: 3 persones
    ;; h434: 1 persones
    ;; h435: 3 persones
    ;; h436: 4 persones
    ;; h437: 3 persones
    ;; h438: 3 persones
    ;; h439: 1 persones
    ;; h440: 2 persones
    ;; h441: 2 persones
    ;; h442: 2 persones
    ;; h443: 1 persones
    ;; h444: 1 persones
    ;; h445: 1 persones
    ;; h446: 1 persones
    ;; h447: 3 persones
    ;; h448: 2 persones
    ;; h449: 1 persones
    ;; h450: 4 persones
    ;; h451: 2 persones
    ;; h452: 4 persones
    ;; h453: 1 persones
    ;; h454: 3 persones
    ;; h455: 1 persones
    ;; h456: 3 persones
    ;; h457: 4 persones
    ;; h458: 4 persones
    ;; h459: 2 persones
    ;; h460: 3 persones
    ;; h461: 4 persones
    ;; h462: 3 persones
    ;; h463: 3 persones
    ;; h464: 3 persones
    ;; h465: 1 persones
    ;; h466: 1 persones
    ;; h467: 1 persones
    ;; h468: 3 persones
    ;; h469: 3 persones
    ;; h470: 3 persones
    ;; h471: 2 persones
    ;; h472: 4 persones
    ;; h473: 4 persones
    ;; h474: 2 persones
    ;; h475: 1 persones
    ;; h476: 4 persones
    ;; h477: 1 persones
    ;; h478: 4 persones
    ;; h479: 2 persones
    ;; h480: 1 persones
    ;; h481: 3 persones
    ;; h482: 1 persones
    ;; h483: 4 persones
    ;; h484: 2 persones
    ;; h485: 2 persones
    ;; h486: 4 persones
    ;; h487: 3 persones
    ;; h488: 1 persones
    ;; h489: 4 persones
    ;; h490: 4 persones
    ;; h491: 2 persones
    ;; h492: 1 persones
    ;; h493: 1 persones
    ;; h494: 4 persones
    ;; h495: 1 persones
    ;; h496: 2 persones
    ;; h497: 4 persones
    ;; h498: 4 persones
    ;; h499: 2 persones
    ;; h500: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h112)
    (compatible r1 h117)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h130)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h175)
    (compatible r1 h178)
    (compatible r1 h180)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h196)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h219)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h228)
    (compatible r1 h230)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h237)
    (compatible r1 h240)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h255)
    (compatible r1 h256)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h264)
    (compatible r1 h267)
    (compatible r1 h272)
    (compatible r1 h276)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h282)
    (compatible r1 h288)
    (compatible r1 h292)
    (compatible r1 h297)
    (compatible r1 h299)
    (compatible r1 h300)
    (compatible r1 h302)
    (compatible r1 h303)
    (compatible r1 h304)
    (compatible r1 h306)
    (compatible r1 h307)
    (compatible r1 h309)
    (compatible r1 h310)
    (compatible r1 h311)
    (compatible r1 h314)
    (compatible r1 h316)
    (compatible r1 h317)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h320)
    (compatible r1 h321)
    (compatible r1 h323)
    (compatible r1 h324)
    (compatible r1 h325)
    (compatible r1 h326)
    (compatible r1 h328)
    (compatible r1 h329)
    (compatible r1 h330)
    (compatible r1 h331)
    (compatible r1 h333)
    (compatible r1 h334)
    (compatible r1 h335)
    (compatible r1 h340)
    (compatible r1 h342)
    (compatible r1 h344)
    (compatible r1 h347)
    (compatible r1 h348)
    (compatible r1 h350)
    (compatible r1 h352)
    (compatible r1 h353)
    (compatible r1 h356)
    (compatible r1 h357)
    (compatible r1 h358)
    (compatible r1 h359)
    (compatible r1 h363)
    (compatible r1 h364)
    (compatible r1 h365)
    (compatible r1 h366)
    (compatible r1 h367)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h373)
    (compatible r1 h375)
    (compatible r1 h376)
    (compatible r1 h378)
    (compatible r1 h381)
    (compatible r1 h384)
    (compatible r1 h385)
    (compatible r1 h387)
    (compatible r1 h389)
    (compatible r1 h390)
    (compatible r1 h391)
    (compatible r1 h392)
    (compatible r1 h393)
    (compatible r1 h396)
    (compatible r1 h401)
    (compatible r1 h405)
    (compatible r1 h407)
    (compatible r1 h409)
    (compatible r1 h410)
    (compatible r1 h411)
    (compatible r1 h414)
    (compatible r1 h416)
    (compatible r1 h417)
    (compatible r1 h418)
    (compatible r1 h419)
    (compatible r1 h423)
    (compatible r1 h424)
    (compatible r1 h427)
    (compatible r1 h428)
    (compatible r1 h431)
    (compatible r1 h432)
    (compatible r1 h433)
    (compatible r1 h435)
    (compatible r1 h436)
    (compatible r1 h437)
    (compatible r1 h438)
    (compatible r1 h447)
    (compatible r1 h450)
    (compatible r1 h452)
    (compatible r1 h454)
    (compatible r1 h456)
    (compatible r1 h457)
    (compatible r1 h458)
    (compatible r1 h460)
    (compatible r1 h461)
    (compatible r1 h462)
    (compatible r1 h463)
    (compatible r1 h464)
    (compatible r1 h468)
    (compatible r1 h469)
    (compatible r1 h470)
    (compatible r1 h472)
    (compatible r1 h473)
    (compatible r1 h476)
    (compatible r1 h478)
    (compatible r1 h481)
    (compatible r1 h483)
    (compatible r1 h486)
    (compatible r1 h487)
    (compatible r1 h489)
    (compatible r1 h490)
    (compatible r1 h494)
    (compatible r1 h497)
    (compatible r1 h498)
    (compatible r1 h500)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h71)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h97)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h107)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h136)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h175)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h184)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h196)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h219)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h228)
    (compatible r2 h230)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h237)
    (compatible r2 h240)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h255)
    (compatible r2 h256)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h264)
    (compatible r2 h267)
    (compatible r2 h272)
    (compatible r2 h276)
    (compatible r2 h277)
    (compatible r2 h278)
    (compatible r2 h279)
    (compatible r2 h280)
    (compatible r2 h282)
    (compatible r2 h288)
    (compatible r2 h292)
    (compatible r2 h297)
    (compatible r2 h299)
    (compatible r2 h300)
    (compatible r2 h302)
    (compatible r2 h303)
    (compatible r2 h304)
    (compatible r2 h306)
    (compatible r2 h307)
    (compatible r2 h309)
    (compatible r2 h310)
    (compatible r2 h311)
    (compatible r2 h314)
    (compatible r2 h316)
    (compatible r2 h317)
    (compatible r2 h318)
    (compatible r2 h319)
    (compatible r2 h320)
    (compatible r2 h321)
    (compatible r2 h323)
    (compatible r2 h324)
    (compatible r2 h325)
    (compatible r2 h326)
    (compatible r2 h328)
    (compatible r2 h329)
    (compatible r2 h330)
    (compatible r2 h331)
    (compatible r2 h333)
    (compatible r2 h334)
    (compatible r2 h335)
    (compatible r2 h340)
    (compatible r2 h342)
    (compatible r2 h344)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h350)
    (compatible r2 h352)
    (compatible r2 h353)
    (compatible r2 h356)
    (compatible r2 h357)
    (compatible r2 h358)
    (compatible r2 h359)
    (compatible r2 h363)
    (compatible r2 h364)
    (compatible r2 h365)
    (compatible r2 h366)
    (compatible r2 h367)
    (compatible r2 h370)
    (compatible r2 h371)
    (compatible r2 h373)
    (compatible r2 h375)
    (compatible r2 h376)
    (compatible r2 h378)
    (compatible r2 h381)
    (compatible r2 h384)
    (compatible r2 h385)
    (compatible r2 h387)
    (compatible r2 h389)
    (compatible r2 h390)
    (compatible r2 h391)
    (compatible r2 h392)
    (compatible r2 h393)
    (compatible r2 h396)
    (compatible r2 h401)
    (compatible r2 h405)
    (compatible r2 h407)
    (compatible r2 h409)
    (compatible r2 h410)
    (compatible r2 h411)
    (compatible r2 h414)
    (compatible r2 h416)
    (compatible r2 h417)
    (compatible r2 h418)
    (compatible r2 h419)
    (compatible r2 h423)
    (compatible r2 h424)
    (compatible r2 h427)
    (compatible r2 h428)
    (compatible r2 h431)
    (compatible r2 h432)
    (compatible r2 h433)
    (compatible r2 h435)
    (compatible r2 h436)
    (compatible r2 h437)
    (compatible r2 h438)
    (compatible r2 h447)
    (compatible r2 h450)
    (compatible r2 h452)
    (compatible r2 h454)
    (compatible r2 h456)
    (compatible r2 h457)
    (compatible r2 h458)
    (compatible r2 h460)
    (compatible r2 h461)
    (compatible r2 h462)
    (compatible r2 h463)
    (compatible r2 h464)
    (compatible r2 h468)
    (compatible r2 h469)
    (compatible r2 h470)
    (compatible r2 h472)
    (compatible r2 h473)
    (compatible r2 h476)
    (compatible r2 h478)
    (compatible r2 h481)
    (compatible r2 h483)
    (compatible r2 h486)
    (compatible r2 h487)
    (compatible r2 h489)
    (compatible r2 h490)
    (compatible r2 h494)
    (compatible r2 h497)
    (compatible r2 h498)
    (compatible r2 h500)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
