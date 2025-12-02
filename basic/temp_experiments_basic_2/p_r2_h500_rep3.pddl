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
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 4 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 2 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 1 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 3 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 4 persones
    ;; h96: 2 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 1 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 4 persones
    ;; h109: 4 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 1 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 3 persones
    ;; h129: 3 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 4 persones
    ;; h135: 4 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 4 persones
    ;; h139: 3 persones
    ;; h140: 4 persones
    ;; h141: 1 persones
    ;; h142: 3 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 1 persones
    ;; h148: 1 persones
    ;; h149: 1 persones
    ;; h150: 1 persones
    ;; h151: 4 persones
    ;; h152: 1 persones
    ;; h153: 3 persones
    ;; h154: 2 persones
    ;; h155: 1 persones
    ;; h156: 4 persones
    ;; h157: 1 persones
    ;; h158: 4 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 3 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 4 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 4 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 1 persones
    ;; h174: 4 persones
    ;; h175: 1 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 4 persones
    ;; h179: 1 persones
    ;; h180: 2 persones
    ;; h181: 3 persones
    ;; h182: 1 persones
    ;; h183: 1 persones
    ;; h184: 4 persones
    ;; h185: 2 persones
    ;; h186: 3 persones
    ;; h187: 3 persones
    ;; h188: 3 persones
    ;; h189: 4 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 1 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 4 persones
    ;; h196: 1 persones
    ;; h197: 1 persones
    ;; h198: 3 persones
    ;; h199: 4 persones
    ;; h200: 3 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 1 persones
    ;; h204: 3 persones
    ;; h205: 2 persones
    ;; h206: 3 persones
    ;; h207: 1 persones
    ;; h208: 1 persones
    ;; h209: 2 persones
    ;; h210: 4 persones
    ;; h211: 3 persones
    ;; h212: 1 persones
    ;; h213: 4 persones
    ;; h214: 1 persones
    ;; h215: 3 persones
    ;; h216: 1 persones
    ;; h217: 4 persones
    ;; h218: 4 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 3 persones
    ;; h222: 1 persones
    ;; h223: 4 persones
    ;; h224: 1 persones
    ;; h225: 1 persones
    ;; h226: 2 persones
    ;; h227: 3 persones
    ;; h228: 2 persones
    ;; h229: 4 persones
    ;; h230: 2 persones
    ;; h231: 3 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 4 persones
    ;; h235: 1 persones
    ;; h236: 2 persones
    ;; h237: 4 persones
    ;; h238: 3 persones
    ;; h239: 1 persones
    ;; h240: 2 persones
    ;; h241: 3 persones
    ;; h242: 4 persones
    ;; h243: 2 persones
    ;; h244: 2 persones
    ;; h245: 4 persones
    ;; h246: 2 persones
    ;; h247: 4 persones
    ;; h248: 2 persones
    ;; h249: 4 persones
    ;; h250: 3 persones
    ;; h251: 2 persones
    ;; h252: 1 persones
    ;; h253: 2 persones
    ;; h254: 3 persones
    ;; h255: 2 persones
    ;; h256: 1 persones
    ;; h257: 2 persones
    ;; h258: 1 persones
    ;; h259: 4 persones
    ;; h260: 3 persones
    ;; h261: 4 persones
    ;; h262: 1 persones
    ;; h263: 3 persones
    ;; h264: 2 persones
    ;; h265: 3 persones
    ;; h266: 3 persones
    ;; h267: 2 persones
    ;; h268: 2 persones
    ;; h269: 3 persones
    ;; h270: 2 persones
    ;; h271: 2 persones
    ;; h272: 4 persones
    ;; h273: 2 persones
    ;; h274: 4 persones
    ;; h275: 3 persones
    ;; h276: 3 persones
    ;; h277: 1 persones
    ;; h278: 3 persones
    ;; h279: 3 persones
    ;; h280: 4 persones
    ;; h281: 3 persones
    ;; h282: 2 persones
    ;; h283: 4 persones
    ;; h284: 3 persones
    ;; h285: 4 persones
    ;; h286: 4 persones
    ;; h287: 3 persones
    ;; h288: 1 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 4 persones
    ;; h292: 3 persones
    ;; h293: 3 persones
    ;; h294: 3 persones
    ;; h295: 2 persones
    ;; h296: 3 persones
    ;; h297: 2 persones
    ;; h298: 3 persones
    ;; h299: 4 persones
    ;; h300: 4 persones
    ;; h301: 2 persones
    ;; h302: 4 persones
    ;; h303: 4 persones
    ;; h304: 1 persones
    ;; h305: 4 persones
    ;; h306: 3 persones
    ;; h307: 4 persones
    ;; h308: 4 persones
    ;; h309: 1 persones
    ;; h310: 4 persones
    ;; h311: 4 persones
    ;; h312: 3 persones
    ;; h313: 4 persones
    ;; h314: 1 persones
    ;; h315: 4 persones
    ;; h316: 2 persones
    ;; h317: 2 persones
    ;; h318: 1 persones
    ;; h319: 3 persones
    ;; h320: 3 persones
    ;; h321: 2 persones
    ;; h322: 4 persones
    ;; h323: 4 persones
    ;; h324: 2 persones
    ;; h325: 1 persones
    ;; h326: 2 persones
    ;; h327: 1 persones
    ;; h328: 3 persones
    ;; h329: 2 persones
    ;; h330: 4 persones
    ;; h331: 1 persones
    ;; h332: 3 persones
    ;; h333: 2 persones
    ;; h334: 1 persones
    ;; h335: 1 persones
    ;; h336: 3 persones
    ;; h337: 3 persones
    ;; h338: 2 persones
    ;; h339: 2 persones
    ;; h340: 4 persones
    ;; h341: 2 persones
    ;; h342: 4 persones
    ;; h343: 4 persones
    ;; h344: 3 persones
    ;; h345: 1 persones
    ;; h346: 1 persones
    ;; h347: 2 persones
    ;; h348: 2 persones
    ;; h349: 1 persones
    ;; h350: 1 persones
    ;; h351: 4 persones
    ;; h352: 4 persones
    ;; h353: 3 persones
    ;; h354: 1 persones
    ;; h355: 4 persones
    ;; h356: 2 persones
    ;; h357: 4 persones
    ;; h358: 1 persones
    ;; h359: 2 persones
    ;; h360: 2 persones
    ;; h361: 2 persones
    ;; h362: 3 persones
    ;; h363: 2 persones
    ;; h364: 4 persones
    ;; h365: 3 persones
    ;; h366: 1 persones
    ;; h367: 4 persones
    ;; h368: 3 persones
    ;; h369: 4 persones
    ;; h370: 1 persones
    ;; h371: 3 persones
    ;; h372: 1 persones
    ;; h373: 2 persones
    ;; h374: 3 persones
    ;; h375: 1 persones
    ;; h376: 4 persones
    ;; h377: 3 persones
    ;; h378: 1 persones
    ;; h379: 1 persones
    ;; h380: 3 persones
    ;; h381: 4 persones
    ;; h382: 3 persones
    ;; h383: 2 persones
    ;; h384: 4 persones
    ;; h385: 1 persones
    ;; h386: 1 persones
    ;; h387: 2 persones
    ;; h388: 2 persones
    ;; h389: 4 persones
    ;; h390: 3 persones
    ;; h391: 1 persones
    ;; h392: 3 persones
    ;; h393: 2 persones
    ;; h394: 2 persones
    ;; h395: 2 persones
    ;; h396: 3 persones
    ;; h397: 4 persones
    ;; h398: 3 persones
    ;; h399: 4 persones
    ;; h400: 3 persones
    ;; h401: 2 persones
    ;; h402: 3 persones
    ;; h403: 4 persones
    ;; h404: 1 persones
    ;; h405: 4 persones
    ;; h406: 1 persones
    ;; h407: 3 persones
    ;; h408: 1 persones
    ;; h409: 3 persones
    ;; h410: 2 persones
    ;; h411: 2 persones
    ;; h412: 3 persones
    ;; h413: 3 persones
    ;; h414: 1 persones
    ;; h415: 4 persones
    ;; h416: 3 persones
    ;; h417: 4 persones
    ;; h418: 1 persones
    ;; h419: 1 persones
    ;; h420: 2 persones
    ;; h421: 1 persones
    ;; h422: 4 persones
    ;; h423: 4 persones
    ;; h424: 2 persones
    ;; h425: 4 persones
    ;; h426: 4 persones
    ;; h427: 1 persones
    ;; h428: 1 persones
    ;; h429: 4 persones
    ;; h430: 3 persones
    ;; h431: 4 persones
    ;; h432: 4 persones
    ;; h433: 4 persones
    ;; h434: 1 persones
    ;; h435: 2 persones
    ;; h436: 4 persones
    ;; h437: 1 persones
    ;; h438: 3 persones
    ;; h439: 2 persones
    ;; h440: 1 persones
    ;; h441: 2 persones
    ;; h442: 4 persones
    ;; h443: 4 persones
    ;; h444: 3 persones
    ;; h445: 2 persones
    ;; h446: 4 persones
    ;; h447: 2 persones
    ;; h448: 1 persones
    ;; h449: 3 persones
    ;; h450: 1 persones
    ;; h451: 1 persones
    ;; h452: 2 persones
    ;; h453: 4 persones
    ;; h454: 2 persones
    ;; h455: 2 persones
    ;; h456: 4 persones
    ;; h457: 4 persones
    ;; h458: 2 persones
    ;; h459: 2 persones
    ;; h460: 3 persones
    ;; h461: 4 persones
    ;; h462: 1 persones
    ;; h463: 4 persones
    ;; h464: 3 persones
    ;; h465: 4 persones
    ;; h466: 2 persones
    ;; h467: 1 persones
    ;; h468: 2 persones
    ;; h469: 1 persones
    ;; h470: 1 persones
    ;; h471: 3 persones
    ;; h472: 2 persones
    ;; h473: 1 persones
    ;; h474: 4 persones
    ;; h475: 4 persones
    ;; h476: 3 persones
    ;; h477: 4 persones
    ;; h478: 2 persones
    ;; h479: 3 persones
    ;; h480: 4 persones
    ;; h481: 4 persones
    ;; h482: 3 persones
    ;; h483: 4 persones
    ;; h484: 3 persones
    ;; h485: 2 persones
    ;; h486: 4 persones
    ;; h487: 3 persones
    ;; h488: 2 persones
    ;; h489: 1 persones
    ;; h490: 2 persones
    ;; h491: 1 persones
    ;; h492: 2 persones
    ;; h493: 2 persones
    ;; h494: 4 persones
    ;; h495: 1 persones
    ;; h496: 4 persones
    ;; h497: 1 persones
    ;; h498: 4 persones
    ;; h499: 1 persones
    ;; h500: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h62)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h95)
    (compatible r1 h98)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h151)
    (compatible r1 h153)
    (compatible r1 h156)
    (compatible r1 h158)
    (compatible r1 h161)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h174)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h181)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h204)
    (compatible r1 h206)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h213)
    (compatible r1 h215)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h223)
    (compatible r1 h227)
    (compatible r1 h229)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h245)
    (compatible r1 h247)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h254)
    (compatible r1 h259)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h265)
    (compatible r1 h266)
    (compatible r1 h269)
    (compatible r1 h272)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h276)
    (compatible r1 h278)
    (compatible r1 h279)
    (compatible r1 h280)
    (compatible r1 h281)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h286)
    (compatible r1 h287)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h292)
    (compatible r1 h293)
    (compatible r1 h294)
    (compatible r1 h296)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)
    (compatible r1 h302)
    (compatible r1 h303)
    (compatible r1 h305)
    (compatible r1 h306)
    (compatible r1 h307)
    (compatible r1 h308)
    (compatible r1 h310)
    (compatible r1 h311)
    (compatible r1 h312)
    (compatible r1 h313)
    (compatible r1 h315)
    (compatible r1 h319)
    (compatible r1 h320)
    (compatible r1 h322)
    (compatible r1 h323)
    (compatible r1 h328)
    (compatible r1 h330)
    (compatible r1 h332)
    (compatible r1 h336)
    (compatible r1 h337)
    (compatible r1 h340)
    (compatible r1 h342)
    (compatible r1 h343)
    (compatible r1 h344)
    (compatible r1 h351)
    (compatible r1 h352)
    (compatible r1 h353)
    (compatible r1 h355)
    (compatible r1 h357)
    (compatible r1 h362)
    (compatible r1 h364)
    (compatible r1 h365)
    (compatible r1 h367)
    (compatible r1 h368)
    (compatible r1 h369)
    (compatible r1 h371)
    (compatible r1 h374)
    (compatible r1 h376)
    (compatible r1 h377)
    (compatible r1 h380)
    (compatible r1 h381)
    (compatible r1 h382)
    (compatible r1 h384)
    (compatible r1 h389)
    (compatible r1 h390)
    (compatible r1 h392)
    (compatible r1 h396)
    (compatible r1 h397)
    (compatible r1 h398)
    (compatible r1 h399)
    (compatible r1 h400)
    (compatible r1 h402)
    (compatible r1 h403)
    (compatible r1 h405)
    (compatible r1 h407)
    (compatible r1 h409)
    (compatible r1 h412)
    (compatible r1 h413)
    (compatible r1 h415)
    (compatible r1 h416)
    (compatible r1 h417)
    (compatible r1 h422)
    (compatible r1 h423)
    (compatible r1 h425)
    (compatible r1 h426)
    (compatible r1 h429)
    (compatible r1 h430)
    (compatible r1 h431)
    (compatible r1 h432)
    (compatible r1 h433)
    (compatible r1 h436)
    (compatible r1 h438)
    (compatible r1 h442)
    (compatible r1 h443)
    (compatible r1 h444)
    (compatible r1 h446)
    (compatible r1 h449)
    (compatible r1 h453)
    (compatible r1 h456)
    (compatible r1 h457)
    (compatible r1 h460)
    (compatible r1 h461)
    (compatible r1 h463)
    (compatible r1 h464)
    (compatible r1 h465)
    (compatible r1 h471)
    (compatible r1 h474)
    (compatible r1 h475)
    (compatible r1 h476)
    (compatible r1 h477)
    (compatible r1 h479)
    (compatible r1 h480)
    (compatible r1 h481)
    (compatible r1 h482)
    (compatible r1 h483)
    (compatible r1 h484)
    (compatible r1 h486)
    (compatible r1 h487)
    (compatible r1 h494)
    (compatible r1 h496)
    (compatible r1 h498)

    ;; Reserva r2 (2 pax): 
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
    (compatible r2 h29)
    (compatible r2 h30)
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
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h50)
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
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
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
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
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
    (compatible r2 h142)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h151)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h158)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h202)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h223)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
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
    (compatible r2 h253)
    (compatible r2 h254)
    (compatible r2 h255)
    (compatible r2 h257)
    (compatible r2 h259)
    (compatible r2 h260)
    (compatible r2 h261)
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
    (compatible r2 h305)
    (compatible r2 h306)
    (compatible r2 h307)
    (compatible r2 h308)
    (compatible r2 h310)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h315)
    (compatible r2 h316)
    (compatible r2 h317)
    (compatible r2 h319)
    (compatible r2 h320)
    (compatible r2 h321)
    (compatible r2 h322)
    (compatible r2 h323)
    (compatible r2 h324)
    (compatible r2 h326)
    (compatible r2 h328)
    (compatible r2 h329)
    (compatible r2 h330)
    (compatible r2 h332)
    (compatible r2 h333)
    (compatible r2 h336)
    (compatible r2 h337)
    (compatible r2 h338)
    (compatible r2 h339)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h342)
    (compatible r2 h343)
    (compatible r2 h344)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h351)
    (compatible r2 h352)
    (compatible r2 h353)
    (compatible r2 h355)
    (compatible r2 h356)
    (compatible r2 h357)
    (compatible r2 h359)
    (compatible r2 h360)
    (compatible r2 h361)
    (compatible r2 h362)
    (compatible r2 h363)
    (compatible r2 h364)
    (compatible r2 h365)
    (compatible r2 h367)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h371)
    (compatible r2 h373)
    (compatible r2 h374)
    (compatible r2 h376)
    (compatible r2 h377)
    (compatible r2 h380)
    (compatible r2 h381)
    (compatible r2 h382)
    (compatible r2 h383)
    (compatible r2 h384)
    (compatible r2 h387)
    (compatible r2 h388)
    (compatible r2 h389)
    (compatible r2 h390)
    (compatible r2 h392)
    (compatible r2 h393)
    (compatible r2 h394)
    (compatible r2 h395)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h398)
    (compatible r2 h399)
    (compatible r2 h400)
    (compatible r2 h401)
    (compatible r2 h402)
    (compatible r2 h403)
    (compatible r2 h405)
    (compatible r2 h407)
    (compatible r2 h409)
    (compatible r2 h410)
    (compatible r2 h411)
    (compatible r2 h412)
    (compatible r2 h413)
    (compatible r2 h415)
    (compatible r2 h416)
    (compatible r2 h417)
    (compatible r2 h420)
    (compatible r2 h422)
    (compatible r2 h423)
    (compatible r2 h424)
    (compatible r2 h425)
    (compatible r2 h426)
    (compatible r2 h429)
    (compatible r2 h430)
    (compatible r2 h431)
    (compatible r2 h432)
    (compatible r2 h433)
    (compatible r2 h435)
    (compatible r2 h436)
    (compatible r2 h438)
    (compatible r2 h439)
    (compatible r2 h441)
    (compatible r2 h442)
    (compatible r2 h443)
    (compatible r2 h444)
    (compatible r2 h445)
    (compatible r2 h446)
    (compatible r2 h447)
    (compatible r2 h449)
    (compatible r2 h452)
    (compatible r2 h453)
    (compatible r2 h454)
    (compatible r2 h455)
    (compatible r2 h456)
    (compatible r2 h457)
    (compatible r2 h458)
    (compatible r2 h459)
    (compatible r2 h460)
    (compatible r2 h461)
    (compatible r2 h463)
    (compatible r2 h464)
    (compatible r2 h465)
    (compatible r2 h466)
    (compatible r2 h468)
    (compatible r2 h471)
    (compatible r2 h472)
    (compatible r2 h474)
    (compatible r2 h475)
    (compatible r2 h476)
    (compatible r2 h477)
    (compatible r2 h478)
    (compatible r2 h479)
    (compatible r2 h480)
    (compatible r2 h481)
    (compatible r2 h482)
    (compatible r2 h483)
    (compatible r2 h484)
    (compatible r2 h485)
    (compatible r2 h486)
    (compatible r2 h487)
    (compatible r2 h488)
    (compatible r2 h490)
    (compatible r2 h492)
    (compatible r2 h493)
    (compatible r2 h494)
    (compatible r2 h496)
    (compatible r2 h498)
    (compatible r2 h500)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
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
