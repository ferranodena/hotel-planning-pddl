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
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 1 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 3 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 3 persones
    ;; h63: 4 persones
    ;; h64: 4 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 4 persones
    ;; h96: 3 persones
    ;; h97: 4 persones
    ;; h98: 4 persones
    ;; h99: 2 persones
    ;; h100: 3 persones
    ;; h101: 1 persones
    ;; h102: 1 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 4 persones
    ;; h107: 1 persones
    ;; h108: 4 persones
    ;; h109: 2 persones
    ;; h110: 2 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 2 persones
    ;; h117: 4 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 1 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 4 persones
    ;; h126: 2 persones
    ;; h127: 2 persones
    ;; h128: 1 persones
    ;; h129: 3 persones
    ;; h130: 4 persones
    ;; h131: 4 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 4 persones
    ;; h136: 4 persones
    ;; h137: 4 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 1 persones
    ;; h147: 3 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 2 persones
    ;; h152: 1 persones
    ;; h153: 2 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 4 persones
    ;; h158: 1 persones
    ;; h159: 2 persones
    ;; h160: 4 persones
    ;; h161: 1 persones
    ;; h162: 1 persones
    ;; h163: 2 persones
    ;; h164: 1 persones
    ;; h165: 4 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 1 persones
    ;; h170: 4 persones
    ;; h171: 4 persones
    ;; h172: 4 persones
    ;; h173: 3 persones
    ;; h174: 2 persones
    ;; h175: 3 persones
    ;; h176: 4 persones
    ;; h177: 2 persones
    ;; h178: 2 persones
    ;; h179: 2 persones
    ;; h180: 4 persones
    ;; h181: 4 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 4 persones
    ;; h188: 2 persones
    ;; h189: 1 persones
    ;; h190: 4 persones
    ;; h191: 3 persones
    ;; h192: 4 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 4 persones
    ;; h196: 2 persones
    ;; h197: 2 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 1 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 2 persones
    ;; h204: 1 persones
    ;; h205: 3 persones
    ;; h206: 4 persones
    ;; h207: 1 persones
    ;; h208: 1 persones
    ;; h209: 4 persones
    ;; h210: 1 persones
    ;; h211: 2 persones
    ;; h212: 3 persones
    ;; h213: 3 persones
    ;; h214: 3 persones
    ;; h215: 1 persones
    ;; h216: 1 persones
    ;; h217: 3 persones
    ;; h218: 4 persones
    ;; h219: 1 persones
    ;; h220: 4 persones
    ;; h221: 2 persones
    ;; h222: 1 persones
    ;; h223: 4 persones
    ;; h224: 1 persones
    ;; h225: 4 persones
    ;; h226: 4 persones
    ;; h227: 3 persones
    ;; h228: 3 persones
    ;; h229: 4 persones
    ;; h230: 1 persones
    ;; h231: 3 persones
    ;; h232: 4 persones
    ;; h233: 1 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 1 persones
    ;; h238: 2 persones
    ;; h239: 2 persones
    ;; h240: 4 persones
    ;; h241: 4 persones
    ;; h242: 3 persones
    ;; h243: 4 persones
    ;; h244: 1 persones
    ;; h245: 3 persones
    ;; h246: 3 persones
    ;; h247: 4 persones
    ;; h248: 3 persones
    ;; h249: 1 persones
    ;; h250: 4 persones
    ;; h251: 3 persones
    ;; h252: 3 persones
    ;; h253: 4 persones
    ;; h254: 2 persones
    ;; h255: 3 persones
    ;; h256: 2 persones
    ;; h257: 4 persones
    ;; h258: 2 persones
    ;; h259: 2 persones
    ;; h260: 4 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 2 persones
    ;; h264: 4 persones
    ;; h265: 1 persones
    ;; h266: 1 persones
    ;; h267: 3 persones
    ;; h268: 2 persones
    ;; h269: 4 persones
    ;; h270: 1 persones
    ;; h271: 4 persones
    ;; h272: 4 persones
    ;; h273: 4 persones
    ;; h274: 4 persones
    ;; h275: 4 persones
    ;; h276: 4 persones
    ;; h277: 1 persones
    ;; h278: 1 persones
    ;; h279: 2 persones
    ;; h280: 3 persones
    ;; h281: 2 persones
    ;; h282: 3 persones
    ;; h283: 4 persones
    ;; h284: 2 persones
    ;; h285: 4 persones
    ;; h286: 1 persones
    ;; h287: 4 persones
    ;; h288: 2 persones
    ;; h289: 2 persones
    ;; h290: 4 persones
    ;; h291: 4 persones
    ;; h292: 1 persones
    ;; h293: 1 persones
    ;; h294: 4 persones
    ;; h295: 2 persones
    ;; h296: 1 persones
    ;; h297: 3 persones
    ;; h298: 3 persones
    ;; h299: 3 persones
    ;; h300: 1 persones
    ;; h301: 3 persones
    ;; h302: 4 persones
    ;; h303: 4 persones
    ;; h304: 2 persones
    ;; h305: 2 persones
    ;; h306: 3 persones
    ;; h307: 2 persones
    ;; h308: 2 persones
    ;; h309: 1 persones
    ;; h310: 2 persones
    ;; h311: 4 persones
    ;; h312: 4 persones
    ;; h313: 4 persones
    ;; h314: 1 persones
    ;; h315: 1 persones
    ;; h316: 3 persones
    ;; h317: 1 persones
    ;; h318: 3 persones
    ;; h319: 2 persones
    ;; h320: 2 persones
    ;; h321: 2 persones
    ;; h322: 1 persones
    ;; h323: 2 persones
    ;; h324: 1 persones
    ;; h325: 2 persones
    ;; h326: 1 persones
    ;; h327: 3 persones
    ;; h328: 1 persones
    ;; h329: 3 persones
    ;; h330: 2 persones
    ;; h331: 3 persones
    ;; h332: 4 persones
    ;; h333: 3 persones
    ;; h334: 3 persones
    ;; h335: 4 persones
    ;; h336: 1 persones
    ;; h337: 3 persones
    ;; h338: 1 persones
    ;; h339: 4 persones
    ;; h340: 1 persones
    ;; h341: 2 persones
    ;; h342: 3 persones
    ;; h343: 2 persones
    ;; h344: 3 persones
    ;; h345: 2 persones
    ;; h346: 2 persones
    ;; h347: 2 persones
    ;; h348: 1 persones
    ;; h349: 1 persones
    ;; h350: 2 persones
    ;; h351: 4 persones
    ;; h352: 4 persones
    ;; h353: 2 persones
    ;; h354: 3 persones
    ;; h355: 1 persones
    ;; h356: 4 persones
    ;; h357: 3 persones
    ;; h358: 1 persones
    ;; h359: 1 persones
    ;; h360: 3 persones
    ;; h361: 4 persones
    ;; h362: 4 persones
    ;; h363: 2 persones
    ;; h364: 3 persones
    ;; h365: 3 persones
    ;; h366: 4 persones
    ;; h367: 4 persones
    ;; h368: 2 persones
    ;; h369: 2 persones
    ;; h370: 4 persones
    ;; h371: 1 persones
    ;; h372: 1 persones
    ;; h373: 3 persones
    ;; h374: 1 persones
    ;; h375: 3 persones
    ;; h376: 1 persones
    ;; h377: 3 persones
    ;; h378: 3 persones
    ;; h379: 1 persones
    ;; h380: 2 persones
    ;; h381: 4 persones
    ;; h382: 4 persones
    ;; h383: 2 persones
    ;; h384: 3 persones
    ;; h385: 4 persones
    ;; h386: 4 persones
    ;; h387: 4 persones
    ;; h388: 1 persones
    ;; h389: 2 persones
    ;; h390: 1 persones
    ;; h391: 3 persones
    ;; h392: 2 persones
    ;; h393: 3 persones
    ;; h394: 3 persones
    ;; h395: 3 persones
    ;; h396: 4 persones
    ;; h397: 3 persones
    ;; h398: 1 persones
    ;; h399: 2 persones
    ;; h400: 4 persones
    ;; h401: 1 persones
    ;; h402: 2 persones
    ;; h403: 1 persones
    ;; h404: 3 persones
    ;; h405: 3 persones
    ;; h406: 2 persones
    ;; h407: 2 persones
    ;; h408: 1 persones
    ;; h409: 3 persones
    ;; h410: 2 persones
    ;; h411: 2 persones
    ;; h412: 1 persones
    ;; h413: 1 persones
    ;; h414: 2 persones
    ;; h415: 4 persones
    ;; h416: 3 persones
    ;; h417: 2 persones
    ;; h418: 1 persones
    ;; h419: 1 persones
    ;; h420: 4 persones
    ;; h421: 1 persones
    ;; h422: 2 persones
    ;; h423: 3 persones
    ;; h424: 3 persones
    ;; h425: 4 persones
    ;; h426: 4 persones
    ;; h427: 2 persones
    ;; h428: 1 persones
    ;; h429: 2 persones
    ;; h430: 2 persones
    ;; h431: 4 persones
    ;; h432: 4 persones
    ;; h433: 4 persones
    ;; h434: 2 persones
    ;; h435: 1 persones
    ;; h436: 4 persones
    ;; h437: 4 persones
    ;; h438: 2 persones
    ;; h439: 3 persones
    ;; h440: 1 persones
    ;; h441: 1 persones
    ;; h442: 4 persones
    ;; h443: 2 persones
    ;; h444: 3 persones
    ;; h445: 2 persones
    ;; h446: 2 persones
    ;; h447: 3 persones
    ;; h448: 2 persones
    ;; h449: 4 persones
    ;; h450: 1 persones
    ;; h451: 2 persones
    ;; h452: 1 persones
    ;; h453: 4 persones
    ;; h454: 2 persones
    ;; h455: 4 persones
    ;; h456: 1 persones
    ;; h457: 2 persones
    ;; h458: 4 persones
    ;; h459: 2 persones
    ;; h460: 4 persones
    ;; h461: 4 persones
    ;; h462: 1 persones
    ;; h463: 4 persones
    ;; h464: 4 persones
    ;; h465: 2 persones
    ;; h466: 3 persones
    ;; h467: 2 persones
    ;; h468: 1 persones
    ;; h469: 3 persones
    ;; h470: 1 persones
    ;; h471: 3 persones
    ;; h472: 4 persones
    ;; h473: 3 persones
    ;; h474: 3 persones
    ;; h475: 1 persones
    ;; h476: 1 persones
    ;; h477: 2 persones
    ;; h478: 4 persones
    ;; h479: 4 persones
    ;; h480: 4 persones
    ;; h481: 2 persones
    ;; h482: 4 persones
    ;; h483: 1 persones
    ;; h484: 4 persones
    ;; h485: 1 persones
    ;; h486: 1 persones
    ;; h487: 4 persones
    ;; h488: 1 persones
    ;; h489: 1 persones
    ;; h490: 4 persones
    ;; h491: 4 persones
    ;; h492: 3 persones
    ;; h493: 1 persones
    ;; h494: 3 persones
    ;; h495: 2 persones
    ;; h496: 4 persones
    ;; h497: 3 persones
    ;; h498: 1 persones
    ;; h499: 3 persones
    ;; h500: 1 persones

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

    ;; Reserva r2 (4 pax): 
    (compatible r2 h11)
    (compatible r2 h15)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h42)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h58)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h75)
    (compatible r2 h91)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h123)
    (compatible r2 h125)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h150)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h160)
    (compatible r2 h165)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h176)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h187)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h195)
    (compatible r2 h206)
    (compatible r2 h209)
    (compatible r2 h218)
    (compatible r2 h220)
    (compatible r2 h223)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h229)
    (compatible r2 h232)
    (compatible r2 h235)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h243)
    (compatible r2 h247)
    (compatible r2 h250)
    (compatible r2 h253)
    (compatible r2 h257)
    (compatible r2 h260)
    (compatible r2 h264)
    (compatible r2 h269)
    (compatible r2 h271)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h283)
    (compatible r2 h285)
    (compatible r2 h287)
    (compatible r2 h290)
    (compatible r2 h291)
    (compatible r2 h294)
    (compatible r2 h302)
    (compatible r2 h303)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h332)
    (compatible r2 h335)
    (compatible r2 h339)
    (compatible r2 h351)
    (compatible r2 h352)
    (compatible r2 h356)
    (compatible r2 h361)
    (compatible r2 h362)
    (compatible r2 h366)
    (compatible r2 h367)
    (compatible r2 h370)
    (compatible r2 h381)
    (compatible r2 h382)
    (compatible r2 h385)
    (compatible r2 h386)
    (compatible r2 h387)
    (compatible r2 h396)
    (compatible r2 h400)
    (compatible r2 h415)
    (compatible r2 h420)
    (compatible r2 h425)
    (compatible r2 h426)
    (compatible r2 h431)
    (compatible r2 h432)
    (compatible r2 h433)
    (compatible r2 h436)
    (compatible r2 h437)
    (compatible r2 h442)
    (compatible r2 h449)
    (compatible r2 h453)
    (compatible r2 h455)
    (compatible r2 h458)
    (compatible r2 h460)
    (compatible r2 h461)
    (compatible r2 h463)
    (compatible r2 h464)
    (compatible r2 h472)
    (compatible r2 h478)
    (compatible r2 h479)
    (compatible r2 h480)
    (compatible r2 h482)
    (compatible r2 h484)
    (compatible r2 h487)
    (compatible r2 h490)
    (compatible r2 h491)
    (compatible r2 h496)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
