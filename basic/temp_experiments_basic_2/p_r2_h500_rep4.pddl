(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 h401 h402 h403 h404 h405 h406 h407 h408 h409 h410 h411 h412 h413 h414 h415 h416 h417 h418 h419 h420 h421 h422 h423 h424 h425 h426 h427 h428 h429 h430 h431 h432 h433 h434 h435 h436 h437 h438 h439 h440 h441 h442 h443 h444 h445 h446 h447 h448 h449 h450 h451 h452 h453 h454 h455 h456 h457 h458 h459 h460 h461 h462 h463 h464 h465 h466 h467 h468 h469 h470 h471 h472 h473 h474 h475 h476 h477 h478 h479 h480 h481 h482 h483 h484 h485 h486 h487 h488 h489 h490 h491 h492 h493 h494 h495 h496 h497 h498 h499 h500 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 3 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 3 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 1 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 4 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 2 persones
    ;; h85: 4 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 3 persones
    ;; h90: 4 persones
    ;; h91: 3 persones
    ;; h92: 2 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 4 persones
    ;; h101: 3 persones
    ;; h102: 1 persones
    ;; h103: 3 persones
    ;; h104: 1 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 1 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 2 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 3 persones
    ;; h120: 4 persones
    ;; h121: 1 persones
    ;; h122: 1 persones
    ;; h123: 3 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 4 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 1 persones
    ;; h131: 4 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 3 persones
    ;; h136: 3 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 1 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 1 persones
    ;; h148: 4 persones
    ;; h149: 3 persones
    ;; h150: 2 persones
    ;; h151: 2 persones
    ;; h152: 4 persones
    ;; h153: 4 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 2 persones
    ;; h158: 1 persones
    ;; h159: 2 persones
    ;; h160: 2 persones
    ;; h161: 4 persones
    ;; h162: 2 persones
    ;; h163: 3 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 2 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 3 persones
    ;; h172: 3 persones
    ;; h173: 3 persones
    ;; h174: 3 persones
    ;; h175: 3 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 3 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 3 persones
    ;; h186: 1 persones
    ;; h187: 2 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 1 persones
    ;; h191: 3 persones
    ;; h192: 3 persones
    ;; h193: 1 persones
    ;; h194: 3 persones
    ;; h195: 2 persones
    ;; h196: 3 persones
    ;; h197: 4 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 4 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 3 persones
    ;; h205: 3 persones
    ;; h206: 2 persones
    ;; h207: 2 persones
    ;; h208: 3 persones
    ;; h209: 1 persones
    ;; h210: 3 persones
    ;; h211: 2 persones
    ;; h212: 1 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 1 persones
    ;; h216: 1 persones
    ;; h217: 1 persones
    ;; h218: 2 persones
    ;; h219: 1 persones
    ;; h220: 4 persones
    ;; h221: 2 persones
    ;; h222: 1 persones
    ;; h223: 2 persones
    ;; h224: 2 persones
    ;; h225: 3 persones
    ;; h226: 4 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 4 persones
    ;; h230: 3 persones
    ;; h231: 1 persones
    ;; h232: 2 persones
    ;; h233: 1 persones
    ;; h234: 3 persones
    ;; h235: 3 persones
    ;; h236: 2 persones
    ;; h237: 3 persones
    ;; h238: 4 persones
    ;; h239: 3 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 1 persones
    ;; h244: 2 persones
    ;; h245: 1 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 4 persones
    ;; h249: 3 persones
    ;; h250: 3 persones
    ;; h251: 4 persones
    ;; h252: 4 persones
    ;; h253: 1 persones
    ;; h254: 2 persones
    ;; h255: 2 persones
    ;; h256: 1 persones
    ;; h257: 2 persones
    ;; h258: 4 persones
    ;; h259: 1 persones
    ;; h260: 4 persones
    ;; h261: 1 persones
    ;; h262: 3 persones
    ;; h263: 4 persones
    ;; h264: 3 persones
    ;; h265: 2 persones
    ;; h266: 1 persones
    ;; h267: 2 persones
    ;; h268: 4 persones
    ;; h269: 4 persones
    ;; h270: 2 persones
    ;; h271: 2 persones
    ;; h272: 3 persones
    ;; h273: 3 persones
    ;; h274: 4 persones
    ;; h275: 3 persones
    ;; h276: 3 persones
    ;; h277: 2 persones
    ;; h278: 2 persones
    ;; h279: 3 persones
    ;; h280: 3 persones
    ;; h281: 4 persones
    ;; h282: 3 persones
    ;; h283: 3 persones
    ;; h284: 2 persones
    ;; h285: 1 persones
    ;; h286: 3 persones
    ;; h287: 3 persones
    ;; h288: 2 persones
    ;; h289: 3 persones
    ;; h290: 4 persones
    ;; h291: 2 persones
    ;; h292: 3 persones
    ;; h293: 4 persones
    ;; h294: 3 persones
    ;; h295: 4 persones
    ;; h296: 3 persones
    ;; h297: 1 persones
    ;; h298: 4 persones
    ;; h299: 4 persones
    ;; h300: 4 persones
    ;; h301: 3 persones
    ;; h302: 3 persones
    ;; h303: 4 persones
    ;; h304: 3 persones
    ;; h305: 2 persones
    ;; h306: 4 persones
    ;; h307: 3 persones
    ;; h308: 3 persones
    ;; h309: 3 persones
    ;; h310: 3 persones
    ;; h311: 2 persones
    ;; h312: 2 persones
    ;; h313: 1 persones
    ;; h314: 3 persones
    ;; h315: 2 persones
    ;; h316: 2 persones
    ;; h317: 1 persones
    ;; h318: 4 persones
    ;; h319: 2 persones
    ;; h320: 2 persones
    ;; h321: 1 persones
    ;; h322: 1 persones
    ;; h323: 1 persones
    ;; h324: 2 persones
    ;; h325: 4 persones
    ;; h326: 4 persones
    ;; h327: 2 persones
    ;; h328: 2 persones
    ;; h329: 4 persones
    ;; h330: 4 persones
    ;; h331: 2 persones
    ;; h332: 2 persones
    ;; h333: 3 persones
    ;; h334: 4 persones
    ;; h335: 1 persones
    ;; h336: 1 persones
    ;; h337: 4 persones
    ;; h338: 3 persones
    ;; h339: 1 persones
    ;; h340: 2 persones
    ;; h341: 4 persones
    ;; h342: 1 persones
    ;; h343: 2 persones
    ;; h344: 2 persones
    ;; h345: 3 persones
    ;; h346: 1 persones
    ;; h347: 2 persones
    ;; h348: 1 persones
    ;; h349: 1 persones
    ;; h350: 3 persones
    ;; h351: 2 persones
    ;; h352: 1 persones
    ;; h353: 4 persones
    ;; h354: 1 persones
    ;; h355: 3 persones
    ;; h356: 2 persones
    ;; h357: 3 persones
    ;; h358: 3 persones
    ;; h359: 3 persones
    ;; h360: 4 persones
    ;; h361: 1 persones
    ;; h362: 3 persones
    ;; h363: 3 persones
    ;; h364: 3 persones
    ;; h365: 1 persones
    ;; h366: 3 persones
    ;; h367: 3 persones
    ;; h368: 2 persones
    ;; h369: 4 persones
    ;; h370: 4 persones
    ;; h371: 2 persones
    ;; h372: 4 persones
    ;; h373: 3 persones
    ;; h374: 2 persones
    ;; h375: 2 persones
    ;; h376: 3 persones
    ;; h377: 3 persones
    ;; h378: 3 persones
    ;; h379: 3 persones
    ;; h380: 4 persones
    ;; h381: 4 persones
    ;; h382: 3 persones
    ;; h383: 4 persones
    ;; h384: 4 persones
    ;; h385: 2 persones
    ;; h386: 2 persones
    ;; h387: 2 persones
    ;; h388: 1 persones
    ;; h389: 3 persones
    ;; h390: 2 persones
    ;; h391: 1 persones
    ;; h392: 3 persones
    ;; h393: 4 persones
    ;; h394: 4 persones
    ;; h395: 2 persones
    ;; h396: 3 persones
    ;; h397: 3 persones
    ;; h398: 4 persones
    ;; h399: 2 persones
    ;; h400: 3 persones
    ;; h401: 3 persones
    ;; h402: 1 persones
    ;; h403: 3 persones
    ;; h404: 1 persones
    ;; h405: 1 persones
    ;; h406: 1 persones
    ;; h407: 1 persones
    ;; h408: 3 persones
    ;; h409: 2 persones
    ;; h410: 3 persones
    ;; h411: 4 persones
    ;; h412: 4 persones
    ;; h413: 4 persones
    ;; h414: 3 persones
    ;; h415: 3 persones
    ;; h416: 1 persones
    ;; h417: 1 persones
    ;; h418: 3 persones
    ;; h419: 1 persones
    ;; h420: 3 persones
    ;; h421: 1 persones
    ;; h422: 2 persones
    ;; h423: 4 persones
    ;; h424: 4 persones
    ;; h425: 1 persones
    ;; h426: 1 persones
    ;; h427: 2 persones
    ;; h428: 2 persones
    ;; h429: 3 persones
    ;; h430: 2 persones
    ;; h431: 3 persones
    ;; h432: 4 persones
    ;; h433: 2 persones
    ;; h434: 2 persones
    ;; h435: 3 persones
    ;; h436: 1 persones
    ;; h437: 1 persones
    ;; h438: 4 persones
    ;; h439: 4 persones
    ;; h440: 2 persones
    ;; h441: 2 persones
    ;; h442: 4 persones
    ;; h443: 1 persones
    ;; h444: 4 persones
    ;; h445: 4 persones
    ;; h446: 4 persones
    ;; h447: 4 persones
    ;; h448: 1 persones
    ;; h449: 4 persones
    ;; h450: 2 persones
    ;; h451: 1 persones
    ;; h452: 4 persones
    ;; h453: 1 persones
    ;; h454: 2 persones
    ;; h455: 2 persones
    ;; h456: 3 persones
    ;; h457: 1 persones
    ;; h458: 1 persones
    ;; h459: 2 persones
    ;; h460: 2 persones
    ;; h461: 3 persones
    ;; h462: 2 persones
    ;; h463: 4 persones
    ;; h464: 1 persones
    ;; h465: 2 persones
    ;; h466: 2 persones
    ;; h467: 3 persones
    ;; h468: 4 persones
    ;; h469: 1 persones
    ;; h470: 4 persones
    ;; h471: 4 persones
    ;; h472: 3 persones
    ;; h473: 2 persones
    ;; h474: 4 persones
    ;; h475: 2 persones
    ;; h476: 2 persones
    ;; h477: 2 persones
    ;; h478: 2 persones
    ;; h479: 3 persones
    ;; h480: 1 persones
    ;; h481: 4 persones
    ;; h482: 1 persones
    ;; h483: 2 persones
    ;; h484: 2 persones
    ;; h485: 2 persones
    ;; h486: 3 persones
    ;; h487: 1 persones
    ;; h488: 1 persones
    ;; h489: 4 persones
    ;; h490: 2 persones
    ;; h491: 1 persones
    ;; h492: 2 persones
    ;; h493: 3 persones
    ;; h494: 3 persones
    ;; h495: 2 persones
    ;; h496: 3 persones
    ;; h497: 1 persones
    ;; h498: 4 persones
    ;; h499: 1 persones
    ;; h500: 2 persones

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
    (compatible r1 h401)
    (compatible r1 h402)
    (compatible r1 h403)
    (compatible r1 h404)
    (compatible r1 h405)
    (compatible r1 h406)
    (compatible r1 h407)
    (compatible r1 h408)
    (compatible r1 h409)
    (compatible r1 h410)
    (compatible r1 h411)
    (compatible r1 h412)
    (compatible r1 h413)
    (compatible r1 h414)
    (compatible r1 h415)
    (compatible r1 h416)
    (compatible r1 h417)
    (compatible r1 h418)
    (compatible r1 h419)
    (compatible r1 h420)
    (compatible r1 h421)
    (compatible r1 h422)
    (compatible r1 h423)
    (compatible r1 h424)
    (compatible r1 h425)
    (compatible r1 h426)
    (compatible r1 h427)
    (compatible r1 h428)
    (compatible r1 h429)
    (compatible r1 h430)
    (compatible r1 h431)
    (compatible r1 h432)
    (compatible r1 h433)
    (compatible r1 h434)
    (compatible r1 h435)
    (compatible r1 h436)
    (compatible r1 h437)
    (compatible r1 h438)
    (compatible r1 h439)
    (compatible r1 h440)
    (compatible r1 h441)
    (compatible r1 h442)
    (compatible r1 h443)
    (compatible r1 h444)
    (compatible r1 h445)
    (compatible r1 h446)
    (compatible r1 h447)
    (compatible r1 h448)
    (compatible r1 h449)
    (compatible r1 h450)
    (compatible r1 h451)
    (compatible r1 h452)
    (compatible r1 h453)
    (compatible r1 h454)
    (compatible r1 h455)
    (compatible r1 h456)
    (compatible r1 h457)
    (compatible r1 h458)
    (compatible r1 h459)
    (compatible r1 h460)
    (compatible r1 h461)
    (compatible r1 h462)
    (compatible r1 h463)
    (compatible r1 h464)
    (compatible r1 h465)
    (compatible r1 h466)
    (compatible r1 h467)
    (compatible r1 h468)
    (compatible r1 h469)
    (compatible r1 h470)
    (compatible r1 h471)
    (compatible r1 h472)
    (compatible r1 h473)
    (compatible r1 h474)
    (compatible r1 h475)
    (compatible r1 h476)
    (compatible r1 h477)
    (compatible r1 h478)
    (compatible r1 h479)
    (compatible r1 h480)
    (compatible r1 h481)
    (compatible r1 h482)
    (compatible r1 h483)
    (compatible r1 h484)
    (compatible r1 h485)
    (compatible r1 h486)
    (compatible r1 h487)
    (compatible r1 h488)
    (compatible r1 h489)
    (compatible r1 h490)
    (compatible r1 h491)
    (compatible r1 h492)
    (compatible r1 h493)
    (compatible r1 h494)
    (compatible r1 h495)
    (compatible r1 h496)
    (compatible r1 h497)
    (compatible r1 h498)
    (compatible r1 h499)
    (compatible r1 h500)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h71)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h110)
    (compatible r2 h114)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h131)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h145)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h208)
    (compatible r2 h210)
    (compatible r2 h220)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h242)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h258)
    (compatible r2 h260)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h279)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h282)
    (compatible r2 h283)
    (compatible r2 h286)
    (compatible r2 h287)
    (compatible r2 h289)
    (compatible r2 h290)
    (compatible r2 h292)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h298)
    (compatible r2 h299)
    (compatible r2 h300)
    (compatible r2 h301)
    (compatible r2 h302)
    (compatible r2 h303)
    (compatible r2 h304)
    (compatible r2 h306)
    (compatible r2 h307)
    (compatible r2 h308)
    (compatible r2 h309)
    (compatible r2 h310)
    (compatible r2 h314)
    (compatible r2 h318)
    (compatible r2 h325)
    (compatible r2 h326)
    (compatible r2 h329)
    (compatible r2 h330)
    (compatible r2 h333)
    (compatible r2 h334)
    (compatible r2 h337)
    (compatible r2 h338)
    (compatible r2 h341)
    (compatible r2 h345)
    (compatible r2 h350)
    (compatible r2 h353)
    (compatible r2 h355)
    (compatible r2 h357)
    (compatible r2 h358)
    (compatible r2 h359)
    (compatible r2 h360)
    (compatible r2 h362)
    (compatible r2 h363)
    (compatible r2 h364)
    (compatible r2 h366)
    (compatible r2 h367)
    (compatible r2 h369)
    (compatible r2 h370)
    (compatible r2 h372)
    (compatible r2 h373)
    (compatible r2 h376)
    (compatible r2 h377)
    (compatible r2 h378)
    (compatible r2 h379)
    (compatible r2 h380)
    (compatible r2 h381)
    (compatible r2 h382)
    (compatible r2 h383)
    (compatible r2 h384)
    (compatible r2 h389)
    (compatible r2 h392)
    (compatible r2 h393)
    (compatible r2 h394)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h398)
    (compatible r2 h400)
    (compatible r2 h401)
    (compatible r2 h403)
    (compatible r2 h408)
    (compatible r2 h410)
    (compatible r2 h411)
    (compatible r2 h412)
    (compatible r2 h413)
    (compatible r2 h414)
    (compatible r2 h415)
    (compatible r2 h418)
    (compatible r2 h420)
    (compatible r2 h423)
    (compatible r2 h424)
    (compatible r2 h429)
    (compatible r2 h431)
    (compatible r2 h432)
    (compatible r2 h435)
    (compatible r2 h438)
    (compatible r2 h439)
    (compatible r2 h442)
    (compatible r2 h444)
    (compatible r2 h445)
    (compatible r2 h446)
    (compatible r2 h447)
    (compatible r2 h449)
    (compatible r2 h452)
    (compatible r2 h456)
    (compatible r2 h461)
    (compatible r2 h463)
    (compatible r2 h467)
    (compatible r2 h468)
    (compatible r2 h470)
    (compatible r2 h471)
    (compatible r2 h472)
    (compatible r2 h474)
    (compatible r2 h479)
    (compatible r2 h481)
    (compatible r2 h486)
    (compatible r2 h489)
    (compatible r2 h493)
    (compatible r2 h494)
    (compatible r2 h496)
    (compatible r2 h498)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
