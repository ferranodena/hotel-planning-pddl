(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 h401 h402 h403 h404 h405 h406 h407 h408 h409 h410 h411 h412 h413 h414 h415 h416 h417 h418 h419 h420 h421 h422 h423 h424 h425 h426 h427 h428 h429 h430 h431 h432 h433 h434 h435 h436 h437 h438 h439 h440 h441 h442 h443 h444 h445 h446 h447 h448 h449 h450 h451 h452 h453 h454 h455 h456 h457 h458 h459 h460 h461 h462 h463 h464 h465 h466 h467 h468 h469 h470 h471 h472 h473 h474 h475 h476 h477 h478 h479 h480 h481 h482 h483 h484 h485 h486 h487 h488 h489 h490 h491 h492 h493 h494 h495 h496 h497 h498 h499 h500 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 2 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 1 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 3 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 2 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 3 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 3 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 4 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 1 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 3 persones
    ;; h111: 3 persones
    ;; h112: 1 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 1 persones
    ;; h116: 2 persones
    ;; h117: 4 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 1 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 1 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 1 persones
    ;; h138: 4 persones
    ;; h139: 1 persones
    ;; h140: 3 persones
    ;; h141: 2 persones
    ;; h142: 4 persones
    ;; h143: 2 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 2 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 3 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 3 persones
    ;; h163: 4 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 4 persones
    ;; h167: 2 persones
    ;; h168: 3 persones
    ;; h169: 1 persones
    ;; h170: 2 persones
    ;; h171: 4 persones
    ;; h172: 3 persones
    ;; h173: 3 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 2 persones
    ;; h180: 3 persones
    ;; h181: 2 persones
    ;; h182: 4 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 1 persones
    ;; h186: 3 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 3 persones
    ;; h190: 1 persones
    ;; h191: 4 persones
    ;; h192: 1 persones
    ;; h193: 4 persones
    ;; h194: 2 persones
    ;; h195: 4 persones
    ;; h196: 1 persones
    ;; h197: 3 persones
    ;; h198: 3 persones
    ;; h199: 3 persones
    ;; h200: 4 persones
    ;; h201: 1 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 4 persones
    ;; h205: 2 persones
    ;; h206: 3 persones
    ;; h207: 2 persones
    ;; h208: 2 persones
    ;; h209: 1 persones
    ;; h210: 3 persones
    ;; h211: 2 persones
    ;; h212: 1 persones
    ;; h213: 4 persones
    ;; h214: 3 persones
    ;; h215: 1 persones
    ;; h216: 2 persones
    ;; h217: 2 persones
    ;; h218: 2 persones
    ;; h219: 4 persones
    ;; h220: 3 persones
    ;; h221: 4 persones
    ;; h222: 3 persones
    ;; h223: 3 persones
    ;; h224: 2 persones
    ;; h225: 2 persones
    ;; h226: 1 persones
    ;; h227: 1 persones
    ;; h228: 2 persones
    ;; h229: 1 persones
    ;; h230: 2 persones
    ;; h231: 2 persones
    ;; h232: 2 persones
    ;; h233: 2 persones
    ;; h234: 4 persones
    ;; h235: 3 persones
    ;; h236: 2 persones
    ;; h237: 2 persones
    ;; h238: 2 persones
    ;; h239: 1 persones
    ;; h240: 2 persones
    ;; h241: 2 persones
    ;; h242: 3 persones
    ;; h243: 3 persones
    ;; h244: 1 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 1 persones
    ;; h248: 4 persones
    ;; h249: 1 persones
    ;; h250: 4 persones
    ;; h251: 4 persones
    ;; h252: 2 persones
    ;; h253: 2 persones
    ;; h254: 2 persones
    ;; h255: 3 persones
    ;; h256: 1 persones
    ;; h257: 1 persones
    ;; h258: 2 persones
    ;; h259: 2 persones
    ;; h260: 1 persones
    ;; h261: 1 persones
    ;; h262: 2 persones
    ;; h263: 2 persones
    ;; h264: 1 persones
    ;; h265: 2 persones
    ;; h266: 1 persones
    ;; h267: 3 persones
    ;; h268: 1 persones
    ;; h269: 3 persones
    ;; h270: 2 persones
    ;; h271: 3 persones
    ;; h272: 2 persones
    ;; h273: 2 persones
    ;; h274: 4 persones
    ;; h275: 3 persones
    ;; h276: 2 persones
    ;; h277: 2 persones
    ;; h278: 1 persones
    ;; h279: 2 persones
    ;; h280: 2 persones
    ;; h281: 4 persones
    ;; h282: 2 persones
    ;; h283: 1 persones
    ;; h284: 2 persones
    ;; h285: 4 persones
    ;; h286: 2 persones
    ;; h287: 3 persones
    ;; h288: 3 persones
    ;; h289: 2 persones
    ;; h290: 3 persones
    ;; h291: 4 persones
    ;; h292: 2 persones
    ;; h293: 1 persones
    ;; h294: 4 persones
    ;; h295: 2 persones
    ;; h296: 4 persones
    ;; h297: 2 persones
    ;; h298: 4 persones
    ;; h299: 3 persones
    ;; h300: 3 persones
    ;; h301: 2 persones
    ;; h302: 1 persones
    ;; h303: 2 persones
    ;; h304: 1 persones
    ;; h305: 3 persones
    ;; h306: 1 persones
    ;; h307: 4 persones
    ;; h308: 3 persones
    ;; h309: 2 persones
    ;; h310: 3 persones
    ;; h311: 1 persones
    ;; h312: 1 persones
    ;; h313: 4 persones
    ;; h314: 3 persones
    ;; h315: 3 persones
    ;; h316: 1 persones
    ;; h317: 4 persones
    ;; h318: 3 persones
    ;; h319: 4 persones
    ;; h320: 2 persones
    ;; h321: 4 persones
    ;; h322: 3 persones
    ;; h323: 3 persones
    ;; h324: 3 persones
    ;; h325: 2 persones
    ;; h326: 3 persones
    ;; h327: 3 persones
    ;; h328: 2 persones
    ;; h329: 2 persones
    ;; h330: 1 persones
    ;; h331: 1 persones
    ;; h332: 3 persones
    ;; h333: 3 persones
    ;; h334: 1 persones
    ;; h335: 1 persones
    ;; h336: 4 persones
    ;; h337: 4 persones
    ;; h338: 2 persones
    ;; h339: 1 persones
    ;; h340: 4 persones
    ;; h341: 4 persones
    ;; h342: 1 persones
    ;; h343: 4 persones
    ;; h344: 1 persones
    ;; h345: 1 persones
    ;; h346: 2 persones
    ;; h347: 3 persones
    ;; h348: 4 persones
    ;; h349: 2 persones
    ;; h350: 1 persones
    ;; h351: 2 persones
    ;; h352: 3 persones
    ;; h353: 3 persones
    ;; h354: 3 persones
    ;; h355: 2 persones
    ;; h356: 2 persones
    ;; h357: 2 persones
    ;; h358: 2 persones
    ;; h359: 4 persones
    ;; h360: 3 persones
    ;; h361: 1 persones
    ;; h362: 2 persones
    ;; h363: 3 persones
    ;; h364: 1 persones
    ;; h365: 2 persones
    ;; h366: 1 persones
    ;; h367: 1 persones
    ;; h368: 2 persones
    ;; h369: 3 persones
    ;; h370: 2 persones
    ;; h371: 1 persones
    ;; h372: 1 persones
    ;; h373: 1 persones
    ;; h374: 1 persones
    ;; h375: 2 persones
    ;; h376: 1 persones
    ;; h377: 3 persones
    ;; h378: 4 persones
    ;; h379: 2 persones
    ;; h380: 3 persones
    ;; h381: 4 persones
    ;; h382: 3 persones
    ;; h383: 4 persones
    ;; h384: 4 persones
    ;; h385: 4 persones
    ;; h386: 2 persones
    ;; h387: 1 persones
    ;; h388: 1 persones
    ;; h389: 4 persones
    ;; h390: 2 persones
    ;; h391: 1 persones
    ;; h392: 4 persones
    ;; h393: 3 persones
    ;; h394: 3 persones
    ;; h395: 1 persones
    ;; h396: 2 persones
    ;; h397: 2 persones
    ;; h398: 1 persones
    ;; h399: 2 persones
    ;; h400: 2 persones
    ;; h401: 3 persones
    ;; h402: 3 persones
    ;; h403: 2 persones
    ;; h404: 2 persones
    ;; h405: 4 persones
    ;; h406: 4 persones
    ;; h407: 4 persones
    ;; h408: 2 persones
    ;; h409: 3 persones
    ;; h410: 2 persones
    ;; h411: 3 persones
    ;; h412: 1 persones
    ;; h413: 1 persones
    ;; h414: 2 persones
    ;; h415: 1 persones
    ;; h416: 4 persones
    ;; h417: 1 persones
    ;; h418: 1 persones
    ;; h419: 2 persones
    ;; h420: 2 persones
    ;; h421: 2 persones
    ;; h422: 2 persones
    ;; h423: 1 persones
    ;; h424: 1 persones
    ;; h425: 3 persones
    ;; h426: 3 persones
    ;; h427: 4 persones
    ;; h428: 4 persones
    ;; h429: 4 persones
    ;; h430: 4 persones
    ;; h431: 3 persones
    ;; h432: 4 persones
    ;; h433: 2 persones
    ;; h434: 3 persones
    ;; h435: 4 persones
    ;; h436: 3 persones
    ;; h437: 4 persones
    ;; h438: 4 persones
    ;; h439: 2 persones
    ;; h440: 1 persones
    ;; h441: 2 persones
    ;; h442: 2 persones
    ;; h443: 1 persones
    ;; h444: 2 persones
    ;; h445: 1 persones
    ;; h446: 1 persones
    ;; h447: 1 persones
    ;; h448: 4 persones
    ;; h449: 3 persones
    ;; h450: 4 persones
    ;; h451: 2 persones
    ;; h452: 3 persones
    ;; h453: 2 persones
    ;; h454: 1 persones
    ;; h455: 3 persones
    ;; h456: 1 persones
    ;; h457: 1 persones
    ;; h458: 2 persones
    ;; h459: 1 persones
    ;; h460: 1 persones
    ;; h461: 2 persones
    ;; h462: 3 persones
    ;; h463: 2 persones
    ;; h464: 4 persones
    ;; h465: 2 persones
    ;; h466: 1 persones
    ;; h467: 3 persones
    ;; h468: 1 persones
    ;; h469: 2 persones
    ;; h470: 4 persones
    ;; h471: 4 persones
    ;; h472: 2 persones
    ;; h473: 2 persones
    ;; h474: 2 persones
    ;; h475: 3 persones
    ;; h476: 2 persones
    ;; h477: 2 persones
    ;; h478: 3 persones
    ;; h479: 4 persones
    ;; h480: 1 persones
    ;; h481: 4 persones
    ;; h482: 3 persones
    ;; h483: 3 persones
    ;; h484: 2 persones
    ;; h485: 4 persones
    ;; h486: 2 persones
    ;; h487: 3 persones
    ;; h488: 4 persones
    ;; h489: 4 persones
    ;; h490: 2 persones
    ;; h491: 3 persones
    ;; h492: 4 persones
    ;; h493: 4 persones
    ;; h494: 2 persones
    ;; h495: 1 persones
    ;; h496: 3 persones
    ;; h497: 2 persones
    ;; h498: 4 persones
    ;; h499: 3 persones
    ;; h500: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h31)
    (compatible r1 h35)
    (compatible r1 h43)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h114)
    (compatible r1 h117)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h138)
    (compatible r1 h140)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h150)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h159)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h166)
    (compatible r1 h168)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h191)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h206)
    (compatible r1 h210)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h248)
    (compatible r1 h250)
    (compatible r1 h251)
    (compatible r1 h255)
    (compatible r1 h267)
    (compatible r1 h269)
    (compatible r1 h271)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h281)
    (compatible r1 h285)
    (compatible r1 h287)
    (compatible r1 h288)
    (compatible r1 h290)
    (compatible r1 h291)
    (compatible r1 h294)
    (compatible r1 h296)
    (compatible r1 h298)
    (compatible r1 h299)
    (compatible r1 h300)
    (compatible r1 h305)
    (compatible r1 h307)
    (compatible r1 h308)
    (compatible r1 h310)
    (compatible r1 h313)
    (compatible r1 h314)
    (compatible r1 h315)
    (compatible r1 h317)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h321)
    (compatible r1 h322)
    (compatible r1 h323)
    (compatible r1 h324)
    (compatible r1 h326)
    (compatible r1 h327)
    (compatible r1 h332)
    (compatible r1 h333)
    (compatible r1 h336)
    (compatible r1 h337)
    (compatible r1 h340)
    (compatible r1 h341)
    (compatible r1 h343)
    (compatible r1 h347)
    (compatible r1 h348)
    (compatible r1 h352)
    (compatible r1 h353)
    (compatible r1 h354)
    (compatible r1 h359)
    (compatible r1 h360)
    (compatible r1 h363)
    (compatible r1 h369)
    (compatible r1 h377)
    (compatible r1 h378)
    (compatible r1 h380)
    (compatible r1 h381)
    (compatible r1 h382)
    (compatible r1 h383)
    (compatible r1 h384)
    (compatible r1 h385)
    (compatible r1 h389)
    (compatible r1 h392)
    (compatible r1 h393)
    (compatible r1 h394)
    (compatible r1 h401)
    (compatible r1 h402)
    (compatible r1 h405)
    (compatible r1 h406)
    (compatible r1 h407)
    (compatible r1 h409)
    (compatible r1 h411)
    (compatible r1 h416)
    (compatible r1 h425)
    (compatible r1 h426)
    (compatible r1 h427)
    (compatible r1 h428)
    (compatible r1 h429)
    (compatible r1 h430)
    (compatible r1 h431)
    (compatible r1 h432)
    (compatible r1 h434)
    (compatible r1 h435)
    (compatible r1 h436)
    (compatible r1 h437)
    (compatible r1 h438)
    (compatible r1 h448)
    (compatible r1 h449)
    (compatible r1 h450)
    (compatible r1 h452)
    (compatible r1 h455)
    (compatible r1 h462)
    (compatible r1 h464)
    (compatible r1 h467)
    (compatible r1 h470)
    (compatible r1 h471)
    (compatible r1 h475)
    (compatible r1 h478)
    (compatible r1 h479)
    (compatible r1 h481)
    (compatible r1 h482)
    (compatible r1 h483)
    (compatible r1 h485)
    (compatible r1 h487)
    (compatible r1 h488)
    (compatible r1 h489)
    (compatible r1 h491)
    (compatible r1 h492)
    (compatible r1 h493)
    (compatible r1 h496)
    (compatible r1 h498)
    (compatible r1 h499)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h20)
    (compatible r2 h35)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h60)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h72)
    (compatible r2 h75)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h88)
    (compatible r2 h92)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h107)
    (compatible r2 h114)
    (compatible r2 h117)
    (compatible r2 h134)
    (compatible r2 h136)
    (compatible r2 h138)
    (compatible r2 h142)
    (compatible r2 h150)
    (compatible r2 h156)
    (compatible r2 h159)
    (compatible r2 h163)
    (compatible r2 h166)
    (compatible r2 h171)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h187)
    (compatible r2 h191)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h200)
    (compatible r2 h202)
    (compatible r2 h204)
    (compatible r2 h213)
    (compatible r2 h219)
    (compatible r2 h221)
    (compatible r2 h234)
    (compatible r2 h248)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h274)
    (compatible r2 h281)
    (compatible r2 h285)
    (compatible r2 h291)
    (compatible r2 h294)
    (compatible r2 h296)
    (compatible r2 h298)
    (compatible r2 h307)
    (compatible r2 h313)
    (compatible r2 h317)
    (compatible r2 h319)
    (compatible r2 h321)
    (compatible r2 h336)
    (compatible r2 h337)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h343)
    (compatible r2 h348)
    (compatible r2 h359)
    (compatible r2 h378)
    (compatible r2 h381)
    (compatible r2 h383)
    (compatible r2 h384)
    (compatible r2 h385)
    (compatible r2 h389)
    (compatible r2 h392)
    (compatible r2 h405)
    (compatible r2 h406)
    (compatible r2 h407)
    (compatible r2 h416)
    (compatible r2 h427)
    (compatible r2 h428)
    (compatible r2 h429)
    (compatible r2 h430)
    (compatible r2 h432)
    (compatible r2 h435)
    (compatible r2 h437)
    (compatible r2 h438)
    (compatible r2 h448)
    (compatible r2 h450)
    (compatible r2 h464)
    (compatible r2 h470)
    (compatible r2 h471)
    (compatible r2 h479)
    (compatible r2 h481)
    (compatible r2 h485)
    (compatible r2 h488)
    (compatible r2 h489)
    (compatible r2 h492)
    (compatible r2 h493)
    (compatible r2 h498)

    ;; Calendari de reserves
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
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
