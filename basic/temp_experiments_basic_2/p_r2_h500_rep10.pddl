(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 h401 h402 h403 h404 h405 h406 h407 h408 h409 h410 h411 h412 h413 h414 h415 h416 h417 h418 h419 h420 h421 h422 h423 h424 h425 h426 h427 h428 h429 h430 h431 h432 h433 h434 h435 h436 h437 h438 h439 h440 h441 h442 h443 h444 h445 h446 h447 h448 h449 h450 h451 h452 h453 h454 h455 h456 h457 h458 h459 h460 h461 h462 h463 h464 h465 h466 h467 h468 h469 h470 h471 h472 h473 h474 h475 h476 h477 h478 h479 h480 h481 h482 h483 h484 h485 h486 h487 h488 h489 h490 h491 h492 h493 h494 h495 h496 h497 h498 h499 h500 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 4 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 3 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 2 persones
    ;; h60: 3 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 4 persones
    ;; h69: 4 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 2 persones
    ;; h75: 4 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 3 persones
    ;; h87: 2 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 1 persones
    ;; h98: 1 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 4 persones
    ;; h102: 3 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 1 persones
    ;; h119: 3 persones
    ;; h120: 4 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 4 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 3 persones
    ;; h133: 2 persones
    ;; h134: 1 persones
    ;; h135: 4 persones
    ;; h136: 2 persones
    ;; h137: 2 persones
    ;; h138: 3 persones
    ;; h139: 4 persones
    ;; h140: 2 persones
    ;; h141: 4 persones
    ;; h142: 3 persones
    ;; h143: 2 persones
    ;; h144: 2 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 2 persones
    ;; h149: 3 persones
    ;; h150: 2 persones
    ;; h151: 3 persones
    ;; h152: 4 persones
    ;; h153: 1 persones
    ;; h154: 2 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 1 persones
    ;; h162: 3 persones
    ;; h163: 4 persones
    ;; h164: 4 persones
    ;; h165: 3 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 1 persones
    ;; h170: 4 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 1 persones
    ;; h178: 1 persones
    ;; h179: 1 persones
    ;; h180: 4 persones
    ;; h181: 3 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 4 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 2 persones
    ;; h189: 2 persones
    ;; h190: 3 persones
    ;; h191: 1 persones
    ;; h192: 2 persones
    ;; h193: 4 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 4 persones
    ;; h199: 3 persones
    ;; h200: 2 persones
    ;; h201: 4 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 1 persones
    ;; h205: 1 persones
    ;; h206: 2 persones
    ;; h207: 1 persones
    ;; h208: 1 persones
    ;; h209: 4 persones
    ;; h210: 1 persones
    ;; h211: 3 persones
    ;; h212: 2 persones
    ;; h213: 1 persones
    ;; h214: 1 persones
    ;; h215: 1 persones
    ;; h216: 3 persones
    ;; h217: 3 persones
    ;; h218: 3 persones
    ;; h219: 2 persones
    ;; h220: 4 persones
    ;; h221: 1 persones
    ;; h222: 4 persones
    ;; h223: 3 persones
    ;; h224: 2 persones
    ;; h225: 3 persones
    ;; h226: 3 persones
    ;; h227: 2 persones
    ;; h228: 2 persones
    ;; h229: 3 persones
    ;; h230: 1 persones
    ;; h231: 1 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 1 persones
    ;; h235: 2 persones
    ;; h236: 1 persones
    ;; h237: 3 persones
    ;; h238: 2 persones
    ;; h239: 1 persones
    ;; h240: 3 persones
    ;; h241: 4 persones
    ;; h242: 3 persones
    ;; h243: 4 persones
    ;; h244: 2 persones
    ;; h245: 4 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 4 persones
    ;; h249: 4 persones
    ;; h250: 2 persones
    ;; h251: 3 persones
    ;; h252: 4 persones
    ;; h253: 3 persones
    ;; h254: 4 persones
    ;; h255: 3 persones
    ;; h256: 2 persones
    ;; h257: 4 persones
    ;; h258: 4 persones
    ;; h259: 4 persones
    ;; h260: 1 persones
    ;; h261: 4 persones
    ;; h262: 2 persones
    ;; h263: 3 persones
    ;; h264: 1 persones
    ;; h265: 4 persones
    ;; h266: 3 persones
    ;; h267: 1 persones
    ;; h268: 3 persones
    ;; h269: 4 persones
    ;; h270: 2 persones
    ;; h271: 1 persones
    ;; h272: 3 persones
    ;; h273: 3 persones
    ;; h274: 2 persones
    ;; h275: 3 persones
    ;; h276: 3 persones
    ;; h277: 2 persones
    ;; h278: 3 persones
    ;; h279: 3 persones
    ;; h280: 3 persones
    ;; h281: 4 persones
    ;; h282: 2 persones
    ;; h283: 1 persones
    ;; h284: 3 persones
    ;; h285: 4 persones
    ;; h286: 3 persones
    ;; h287: 1 persones
    ;; h288: 3 persones
    ;; h289: 2 persones
    ;; h290: 2 persones
    ;; h291: 4 persones
    ;; h292: 1 persones
    ;; h293: 3 persones
    ;; h294: 4 persones
    ;; h295: 1 persones
    ;; h296: 3 persones
    ;; h297: 4 persones
    ;; h298: 2 persones
    ;; h299: 3 persones
    ;; h300: 3 persones
    ;; h301: 4 persones
    ;; h302: 3 persones
    ;; h303: 3 persones
    ;; h304: 2 persones
    ;; h305: 3 persones
    ;; h306: 1 persones
    ;; h307: 3 persones
    ;; h308: 3 persones
    ;; h309: 1 persones
    ;; h310: 1 persones
    ;; h311: 2 persones
    ;; h312: 2 persones
    ;; h313: 4 persones
    ;; h314: 3 persones
    ;; h315: 1 persones
    ;; h316: 4 persones
    ;; h317: 2 persones
    ;; h318: 3 persones
    ;; h319: 4 persones
    ;; h320: 3 persones
    ;; h321: 1 persones
    ;; h322: 1 persones
    ;; h323: 3 persones
    ;; h324: 1 persones
    ;; h325: 3 persones
    ;; h326: 3 persones
    ;; h327: 1 persones
    ;; h328: 3 persones
    ;; h329: 2 persones
    ;; h330: 2 persones
    ;; h331: 4 persones
    ;; h332: 3 persones
    ;; h333: 3 persones
    ;; h334: 2 persones
    ;; h335: 4 persones
    ;; h336: 1 persones
    ;; h337: 3 persones
    ;; h338: 3 persones
    ;; h339: 2 persones
    ;; h340: 4 persones
    ;; h341: 4 persones
    ;; h342: 2 persones
    ;; h343: 2 persones
    ;; h344: 3 persones
    ;; h345: 1 persones
    ;; h346: 3 persones
    ;; h347: 3 persones
    ;; h348: 2 persones
    ;; h349: 1 persones
    ;; h350: 1 persones
    ;; h351: 1 persones
    ;; h352: 3 persones
    ;; h353: 2 persones
    ;; h354: 4 persones
    ;; h355: 1 persones
    ;; h356: 3 persones
    ;; h357: 2 persones
    ;; h358: 3 persones
    ;; h359: 2 persones
    ;; h360: 1 persones
    ;; h361: 1 persones
    ;; h362: 1 persones
    ;; h363: 1 persones
    ;; h364: 3 persones
    ;; h365: 1 persones
    ;; h366: 2 persones
    ;; h367: 4 persones
    ;; h368: 2 persones
    ;; h369: 2 persones
    ;; h370: 4 persones
    ;; h371: 4 persones
    ;; h372: 3 persones
    ;; h373: 1 persones
    ;; h374: 4 persones
    ;; h375: 3 persones
    ;; h376: 2 persones
    ;; h377: 3 persones
    ;; h378: 4 persones
    ;; h379: 3 persones
    ;; h380: 2 persones
    ;; h381: 4 persones
    ;; h382: 2 persones
    ;; h383: 4 persones
    ;; h384: 3 persones
    ;; h385: 1 persones
    ;; h386: 2 persones
    ;; h387: 1 persones
    ;; h388: 2 persones
    ;; h389: 3 persones
    ;; h390: 2 persones
    ;; h391: 3 persones
    ;; h392: 1 persones
    ;; h393: 1 persones
    ;; h394: 3 persones
    ;; h395: 1 persones
    ;; h396: 4 persones
    ;; h397: 4 persones
    ;; h398: 2 persones
    ;; h399: 2 persones
    ;; h400: 4 persones
    ;; h401: 4 persones
    ;; h402: 3 persones
    ;; h403: 2 persones
    ;; h404: 3 persones
    ;; h405: 1 persones
    ;; h406: 1 persones
    ;; h407: 2 persones
    ;; h408: 1 persones
    ;; h409: 1 persones
    ;; h410: 4 persones
    ;; h411: 1 persones
    ;; h412: 2 persones
    ;; h413: 1 persones
    ;; h414: 1 persones
    ;; h415: 1 persones
    ;; h416: 4 persones
    ;; h417: 2 persones
    ;; h418: 1 persones
    ;; h419: 4 persones
    ;; h420: 4 persones
    ;; h421: 4 persones
    ;; h422: 1 persones
    ;; h423: 1 persones
    ;; h424: 4 persones
    ;; h425: 2 persones
    ;; h426: 3 persones
    ;; h427: 1 persones
    ;; h428: 3 persones
    ;; h429: 4 persones
    ;; h430: 4 persones
    ;; h431: 1 persones
    ;; h432: 2 persones
    ;; h433: 2 persones
    ;; h434: 1 persones
    ;; h435: 4 persones
    ;; h436: 1 persones
    ;; h437: 1 persones
    ;; h438: 4 persones
    ;; h439: 3 persones
    ;; h440: 1 persones
    ;; h441: 1 persones
    ;; h442: 2 persones
    ;; h443: 3 persones
    ;; h444: 3 persones
    ;; h445: 2 persones
    ;; h446: 1 persones
    ;; h447: 2 persones
    ;; h448: 2 persones
    ;; h449: 1 persones
    ;; h450: 1 persones
    ;; h451: 3 persones
    ;; h452: 4 persones
    ;; h453: 1 persones
    ;; h454: 4 persones
    ;; h455: 2 persones
    ;; h456: 1 persones
    ;; h457: 1 persones
    ;; h458: 4 persones
    ;; h459: 2 persones
    ;; h460: 2 persones
    ;; h461: 1 persones
    ;; h462: 3 persones
    ;; h463: 3 persones
    ;; h464: 1 persones
    ;; h465: 3 persones
    ;; h466: 2 persones
    ;; h467: 4 persones
    ;; h468: 1 persones
    ;; h469: 3 persones
    ;; h470: 3 persones
    ;; h471: 4 persones
    ;; h472: 1 persones
    ;; h473: 2 persones
    ;; h474: 2 persones
    ;; h475: 4 persones
    ;; h476: 3 persones
    ;; h477: 1 persones
    ;; h478: 1 persones
    ;; h479: 4 persones
    ;; h480: 1 persones
    ;; h481: 3 persones
    ;; h482: 1 persones
    ;; h483: 1 persones
    ;; h484: 3 persones
    ;; h485: 2 persones
    ;; h486: 3 persones
    ;; h487: 4 persones
    ;; h488: 4 persones
    ;; h489: 2 persones
    ;; h490: 1 persones
    ;; h491: 3 persones
    ;; h492: 4 persones
    ;; h493: 2 persones
    ;; h494: 1 persones
    ;; h495: 1 persones
    ;; h496: 1 persones
    ;; h497: 2 persones
    ;; h498: 3 persones
    ;; h499: 3 persones
    ;; h500: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
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
    (compatible r1 h52)
    (compatible r1 h53)
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
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h99)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
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
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h160)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h168)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h206)
    (compatible r1 h209)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
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
    (compatible r1 h261)
    (compatible r1 h262)
    (compatible r1 h263)
    (compatible r1 h265)
    (compatible r1 h266)
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
    (compatible r1 h280)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h288)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h293)
    (compatible r1 h294)
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
    (compatible r1 h307)
    (compatible r1 h308)
    (compatible r1 h311)
    (compatible r1 h312)
    (compatible r1 h313)
    (compatible r1 h314)
    (compatible r1 h316)
    (compatible r1 h317)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h320)
    (compatible r1 h323)
    (compatible r1 h325)
    (compatible r1 h326)
    (compatible r1 h328)
    (compatible r1 h329)
    (compatible r1 h330)
    (compatible r1 h331)
    (compatible r1 h332)
    (compatible r1 h333)
    (compatible r1 h334)
    (compatible r1 h335)
    (compatible r1 h337)
    (compatible r1 h338)
    (compatible r1 h339)
    (compatible r1 h340)
    (compatible r1 h341)
    (compatible r1 h342)
    (compatible r1 h343)
    (compatible r1 h344)
    (compatible r1 h346)
    (compatible r1 h347)
    (compatible r1 h348)
    (compatible r1 h352)
    (compatible r1 h353)
    (compatible r1 h354)
    (compatible r1 h356)
    (compatible r1 h357)
    (compatible r1 h358)
    (compatible r1 h359)
    (compatible r1 h364)
    (compatible r1 h366)
    (compatible r1 h367)
    (compatible r1 h368)
    (compatible r1 h369)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h372)
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
    (compatible r1 h386)
    (compatible r1 h388)
    (compatible r1 h389)
    (compatible r1 h390)
    (compatible r1 h391)
    (compatible r1 h394)
    (compatible r1 h396)
    (compatible r1 h397)
    (compatible r1 h398)
    (compatible r1 h399)
    (compatible r1 h400)
    (compatible r1 h401)
    (compatible r1 h402)
    (compatible r1 h403)
    (compatible r1 h404)
    (compatible r1 h407)
    (compatible r1 h410)
    (compatible r1 h412)
    (compatible r1 h416)
    (compatible r1 h417)
    (compatible r1 h419)
    (compatible r1 h420)
    (compatible r1 h421)
    (compatible r1 h424)
    (compatible r1 h425)
    (compatible r1 h426)
    (compatible r1 h428)
    (compatible r1 h429)
    (compatible r1 h430)
    (compatible r1 h432)
    (compatible r1 h433)
    (compatible r1 h435)
    (compatible r1 h438)
    (compatible r1 h439)
    (compatible r1 h442)
    (compatible r1 h443)
    (compatible r1 h444)
    (compatible r1 h445)
    (compatible r1 h447)
    (compatible r1 h448)
    (compatible r1 h451)
    (compatible r1 h452)
    (compatible r1 h454)
    (compatible r1 h455)
    (compatible r1 h458)
    (compatible r1 h459)
    (compatible r1 h460)
    (compatible r1 h462)
    (compatible r1 h463)
    (compatible r1 h465)
    (compatible r1 h466)
    (compatible r1 h467)
    (compatible r1 h469)
    (compatible r1 h470)
    (compatible r1 h471)
    (compatible r1 h473)
    (compatible r1 h474)
    (compatible r1 h475)
    (compatible r1 h476)
    (compatible r1 h479)
    (compatible r1 h481)
    (compatible r1 h484)
    (compatible r1 h485)
    (compatible r1 h486)
    (compatible r1 h487)
    (compatible r1 h488)
    (compatible r1 h489)
    (compatible r1 h491)
    (compatible r1 h492)
    (compatible r1 h493)
    (compatible r1 h497)
    (compatible r1 h498)
    (compatible r1 h499)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
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
    (compatible r2 h52)
    (compatible r2 h53)
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
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
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
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h160)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h206)
    (compatible r2 h209)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
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
    (compatible r2 h261)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h265)
    (compatible r2 h266)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h270)
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
    (compatible r2 h284)
    (compatible r2 h285)
    (compatible r2 h286)
    (compatible r2 h288)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h293)
    (compatible r2 h294)
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
    (compatible r2 h307)
    (compatible r2 h308)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h314)
    (compatible r2 h316)
    (compatible r2 h317)
    (compatible r2 h318)
    (compatible r2 h319)
    (compatible r2 h320)
    (compatible r2 h323)
    (compatible r2 h325)
    (compatible r2 h326)
    (compatible r2 h328)
    (compatible r2 h329)
    (compatible r2 h330)
    (compatible r2 h331)
    (compatible r2 h332)
    (compatible r2 h333)
    (compatible r2 h334)
    (compatible r2 h335)
    (compatible r2 h337)
    (compatible r2 h338)
    (compatible r2 h339)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h342)
    (compatible r2 h343)
    (compatible r2 h344)
    (compatible r2 h346)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h352)
    (compatible r2 h353)
    (compatible r2 h354)
    (compatible r2 h356)
    (compatible r2 h357)
    (compatible r2 h358)
    (compatible r2 h359)
    (compatible r2 h364)
    (compatible r2 h366)
    (compatible r2 h367)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h370)
    (compatible r2 h371)
    (compatible r2 h372)
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
    (compatible r2 h386)
    (compatible r2 h388)
    (compatible r2 h389)
    (compatible r2 h390)
    (compatible r2 h391)
    (compatible r2 h394)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h398)
    (compatible r2 h399)
    (compatible r2 h400)
    (compatible r2 h401)
    (compatible r2 h402)
    (compatible r2 h403)
    (compatible r2 h404)
    (compatible r2 h407)
    (compatible r2 h410)
    (compatible r2 h412)
    (compatible r2 h416)
    (compatible r2 h417)
    (compatible r2 h419)
    (compatible r2 h420)
    (compatible r2 h421)
    (compatible r2 h424)
    (compatible r2 h425)
    (compatible r2 h426)
    (compatible r2 h428)
    (compatible r2 h429)
    (compatible r2 h430)
    (compatible r2 h432)
    (compatible r2 h433)
    (compatible r2 h435)
    (compatible r2 h438)
    (compatible r2 h439)
    (compatible r2 h442)
    (compatible r2 h443)
    (compatible r2 h444)
    (compatible r2 h445)
    (compatible r2 h447)
    (compatible r2 h448)
    (compatible r2 h451)
    (compatible r2 h452)
    (compatible r2 h454)
    (compatible r2 h455)
    (compatible r2 h458)
    (compatible r2 h459)
    (compatible r2 h460)
    (compatible r2 h462)
    (compatible r2 h463)
    (compatible r2 h465)
    (compatible r2 h466)
    (compatible r2 h467)
    (compatible r2 h469)
    (compatible r2 h470)
    (compatible r2 h471)
    (compatible r2 h473)
    (compatible r2 h474)
    (compatible r2 h475)
    (compatible r2 h476)
    (compatible r2 h479)
    (compatible r2 h481)
    (compatible r2 h484)
    (compatible r2 h485)
    (compatible r2 h486)
    (compatible r2 h487)
    (compatible r2 h488)
    (compatible r2 h489)
    (compatible r2 h491)
    (compatible r2 h492)
    (compatible r2 h493)
    (compatible r2 h497)
    (compatible r2 h498)
    (compatible r2 h499)

    ;; Calendari de reserves
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
