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
    ;; h4: 2 persones
    ;; h5: 3 persones
    ;; h6: 1 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 4 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 2 persones
    ;; h37: 3 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 3 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 1 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 3 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 1 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 1 persones
    ;; h89: 2 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 4 persones
    ;; h96: 1 persones
    ;; h97: 4 persones
    ;; h98: 1 persones
    ;; h99: 1 persones
    ;; h100: 4 persones
    ;; h101: 4 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 3 persones
    ;; h106: 1 persones
    ;; h107: 1 persones
    ;; h108: 3 persones
    ;; h109: 2 persones
    ;; h110: 4 persones
    ;; h111: 3 persones
    ;; h112: 3 persones
    ;; h113: 3 persones
    ;; h114: 2 persones
    ;; h115: 2 persones
    ;; h116: 1 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 1 persones
    ;; h124: 4 persones
    ;; h125: 2 persones
    ;; h126: 2 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 4 persones
    ;; h133: 4 persones
    ;; h134: 1 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 4 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 2 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 2 persones
    ;; h150: 3 persones
    ;; h151: 4 persones
    ;; h152: 1 persones
    ;; h153: 3 persones
    ;; h154: 2 persones
    ;; h155: 2 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 3 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 4 persones
    ;; h166: 1 persones
    ;; h167: 4 persones
    ;; h168: 1 persones
    ;; h169: 2 persones
    ;; h170: 2 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 3 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 4 persones
    ;; h177: 4 persones
    ;; h178: 2 persones
    ;; h179: 1 persones
    ;; h180: 3 persones
    ;; h181: 1 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 2 persones
    ;; h186: 1 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 2 persones
    ;; h190: 2 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 4 persones
    ;; h194: 4 persones
    ;; h195: 3 persones
    ;; h196: 3 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 1 persones
    ;; h200: 1 persones
    ;; h201: 3 persones
    ;; h202: 2 persones
    ;; h203: 4 persones
    ;; h204: 4 persones
    ;; h205: 4 persones
    ;; h206: 3 persones
    ;; h207: 1 persones
    ;; h208: 2 persones
    ;; h209: 4 persones
    ;; h210: 1 persones
    ;; h211: 3 persones
    ;; h212: 2 persones
    ;; h213: 2 persones
    ;; h214: 1 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 1 persones
    ;; h218: 3 persones
    ;; h219: 4 persones
    ;; h220: 4 persones
    ;; h221: 3 persones
    ;; h222: 1 persones
    ;; h223: 2 persones
    ;; h224: 4 persones
    ;; h225: 2 persones
    ;; h226: 4 persones
    ;; h227: 1 persones
    ;; h228: 2 persones
    ;; h229: 2 persones
    ;; h230: 2 persones
    ;; h231: 1 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 1 persones
    ;; h239: 2 persones
    ;; h240: 2 persones
    ;; h241: 2 persones
    ;; h242: 4 persones
    ;; h243: 2 persones
    ;; h244: 2 persones
    ;; h245: 3 persones
    ;; h246: 3 persones
    ;; h247: 4 persones
    ;; h248: 4 persones
    ;; h249: 4 persones
    ;; h250: 4 persones
    ;; h251: 2 persones
    ;; h252: 4 persones
    ;; h253: 1 persones
    ;; h254: 2 persones
    ;; h255: 1 persones
    ;; h256: 4 persones
    ;; h257: 2 persones
    ;; h258: 4 persones
    ;; h259: 2 persones
    ;; h260: 3 persones
    ;; h261: 2 persones
    ;; h262: 1 persones
    ;; h263: 4 persones
    ;; h264: 2 persones
    ;; h265: 2 persones
    ;; h266: 2 persones
    ;; h267: 4 persones
    ;; h268: 3 persones
    ;; h269: 4 persones
    ;; h270: 2 persones
    ;; h271: 1 persones
    ;; h272: 2 persones
    ;; h273: 1 persones
    ;; h274: 3 persones
    ;; h275: 3 persones
    ;; h276: 2 persones
    ;; h277: 3 persones
    ;; h278: 1 persones
    ;; h279: 2 persones
    ;; h280: 4 persones
    ;; h281: 3 persones
    ;; h282: 1 persones
    ;; h283: 1 persones
    ;; h284: 1 persones
    ;; h285: 1 persones
    ;; h286: 2 persones
    ;; h287: 1 persones
    ;; h288: 4 persones
    ;; h289: 1 persones
    ;; h290: 1 persones
    ;; h291: 2 persones
    ;; h292: 4 persones
    ;; h293: 2 persones
    ;; h294: 2 persones
    ;; h295: 4 persones
    ;; h296: 1 persones
    ;; h297: 4 persones
    ;; h298: 1 persones
    ;; h299: 3 persones
    ;; h300: 4 persones
    ;; h301: 1 persones
    ;; h302: 2 persones
    ;; h303: 2 persones
    ;; h304: 3 persones
    ;; h305: 2 persones
    ;; h306: 1 persones
    ;; h307: 3 persones
    ;; h308: 4 persones
    ;; h309: 2 persones
    ;; h310: 4 persones
    ;; h311: 3 persones
    ;; h312: 4 persones
    ;; h313: 1 persones
    ;; h314: 2 persones
    ;; h315: 2 persones
    ;; h316: 2 persones
    ;; h317: 1 persones
    ;; h318: 1 persones
    ;; h319: 1 persones
    ;; h320: 1 persones
    ;; h321: 1 persones
    ;; h322: 2 persones
    ;; h323: 1 persones
    ;; h324: 1 persones
    ;; h325: 4 persones
    ;; h326: 4 persones
    ;; h327: 2 persones
    ;; h328: 3 persones
    ;; h329: 2 persones
    ;; h330: 2 persones
    ;; h331: 2 persones
    ;; h332: 1 persones
    ;; h333: 1 persones
    ;; h334: 4 persones
    ;; h335: 3 persones
    ;; h336: 1 persones
    ;; h337: 2 persones
    ;; h338: 3 persones
    ;; h339: 4 persones
    ;; h340: 3 persones
    ;; h341: 4 persones
    ;; h342: 1 persones
    ;; h343: 1 persones
    ;; h344: 1 persones
    ;; h345: 3 persones
    ;; h346: 4 persones
    ;; h347: 2 persones
    ;; h348: 1 persones
    ;; h349: 3 persones
    ;; h350: 1 persones
    ;; h351: 3 persones
    ;; h352: 4 persones
    ;; h353: 1 persones
    ;; h354: 3 persones
    ;; h355: 2 persones
    ;; h356: 3 persones
    ;; h357: 1 persones
    ;; h358: 4 persones
    ;; h359: 3 persones
    ;; h360: 4 persones
    ;; h361: 1 persones
    ;; h362: 2 persones
    ;; h363: 3 persones
    ;; h364: 3 persones
    ;; h365: 3 persones
    ;; h366: 4 persones
    ;; h367: 2 persones
    ;; h368: 1 persones
    ;; h369: 3 persones
    ;; h370: 4 persones
    ;; h371: 4 persones
    ;; h372: 2 persones
    ;; h373: 2 persones
    ;; h374: 4 persones
    ;; h375: 2 persones
    ;; h376: 3 persones
    ;; h377: 1 persones
    ;; h378: 4 persones
    ;; h379: 4 persones
    ;; h380: 2 persones
    ;; h381: 3 persones
    ;; h382: 1 persones
    ;; h383: 1 persones
    ;; h384: 2 persones
    ;; h385: 2 persones
    ;; h386: 1 persones
    ;; h387: 2 persones
    ;; h388: 4 persones
    ;; h389: 3 persones
    ;; h390: 1 persones
    ;; h391: 1 persones
    ;; h392: 1 persones
    ;; h393: 3 persones
    ;; h394: 3 persones
    ;; h395: 2 persones
    ;; h396: 4 persones
    ;; h397: 4 persones
    ;; h398: 4 persones
    ;; h399: 1 persones
    ;; h400: 4 persones
    ;; h401: 4 persones
    ;; h402: 1 persones
    ;; h403: 4 persones
    ;; h404: 3 persones
    ;; h405: 2 persones
    ;; h406: 2 persones
    ;; h407: 2 persones
    ;; h408: 2 persones
    ;; h409: 1 persones
    ;; h410: 2 persones
    ;; h411: 3 persones
    ;; h412: 4 persones
    ;; h413: 2 persones
    ;; h414: 1 persones
    ;; h415: 2 persones
    ;; h416: 4 persones
    ;; h417: 1 persones
    ;; h418: 1 persones
    ;; h419: 1 persones
    ;; h420: 1 persones
    ;; h421: 1 persones
    ;; h422: 2 persones
    ;; h423: 4 persones
    ;; h424: 1 persones
    ;; h425: 2 persones
    ;; h426: 4 persones
    ;; h427: 2 persones
    ;; h428: 4 persones
    ;; h429: 1 persones
    ;; h430: 4 persones
    ;; h431: 3 persones
    ;; h432: 2 persones
    ;; h433: 3 persones
    ;; h434: 3 persones
    ;; h435: 3 persones
    ;; h436: 2 persones
    ;; h437: 4 persones
    ;; h438: 3 persones
    ;; h439: 3 persones
    ;; h440: 4 persones
    ;; h441: 1 persones
    ;; h442: 3 persones
    ;; h443: 1 persones
    ;; h444: 4 persones
    ;; h445: 4 persones
    ;; h446: 3 persones
    ;; h447: 4 persones
    ;; h448: 1 persones
    ;; h449: 4 persones
    ;; h450: 3 persones
    ;; h451: 2 persones
    ;; h452: 2 persones
    ;; h453: 1 persones
    ;; h454: 2 persones
    ;; h455: 4 persones
    ;; h456: 3 persones
    ;; h457: 1 persones
    ;; h458: 2 persones
    ;; h459: 3 persones
    ;; h460: 1 persones
    ;; h461: 3 persones
    ;; h462: 1 persones
    ;; h463: 1 persones
    ;; h464: 3 persones
    ;; h465: 1 persones
    ;; h466: 1 persones
    ;; h467: 3 persones
    ;; h468: 1 persones
    ;; h469: 3 persones
    ;; h470: 4 persones
    ;; h471: 3 persones
    ;; h472: 4 persones
    ;; h473: 4 persones
    ;; h474: 2 persones
    ;; h475: 3 persones
    ;; h476: 4 persones
    ;; h477: 3 persones
    ;; h478: 4 persones
    ;; h479: 3 persones
    ;; h480: 4 persones
    ;; h481: 3 persones
    ;; h482: 1 persones
    ;; h483: 1 persones
    ;; h484: 4 persones
    ;; h485: 3 persones
    ;; h486: 4 persones
    ;; h487: 4 persones
    ;; h488: 4 persones
    ;; h489: 4 persones
    ;; h490: 2 persones
    ;; h491: 2 persones
    ;; h492: 3 persones
    ;; h493: 1 persones
    ;; h494: 2 persones
    ;; h495: 2 persones
    ;; h496: 1 persones
    ;; h497: 2 persones
    ;; h498: 2 persones
    ;; h499: 1 persones
    ;; h500: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h11)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h31)
    (compatible r1 h35)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h63)
    (compatible r1 h66)
    (compatible r1 h70)
    (compatible r1 h80)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h97)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h110)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h137)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h151)
    (compatible r1 h165)
    (compatible r1 h167)
    (compatible r1 h171)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h183)
    (compatible r1 h187)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h209)
    (compatible r1 h216)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h224)
    (compatible r1 h226)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h242)
    (compatible r1 h247)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h252)
    (compatible r1 h256)
    (compatible r1 h258)
    (compatible r1 h263)
    (compatible r1 h267)
    (compatible r1 h269)
    (compatible r1 h280)
    (compatible r1 h288)
    (compatible r1 h292)
    (compatible r1 h295)
    (compatible r1 h297)
    (compatible r1 h300)
    (compatible r1 h308)
    (compatible r1 h310)
    (compatible r1 h312)
    (compatible r1 h325)
    (compatible r1 h326)
    (compatible r1 h334)
    (compatible r1 h339)
    (compatible r1 h341)
    (compatible r1 h346)
    (compatible r1 h352)
    (compatible r1 h358)
    (compatible r1 h360)
    (compatible r1 h366)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h374)
    (compatible r1 h378)
    (compatible r1 h379)
    (compatible r1 h388)
    (compatible r1 h396)
    (compatible r1 h397)
    (compatible r1 h398)
    (compatible r1 h400)
    (compatible r1 h401)
    (compatible r1 h403)
    (compatible r1 h412)
    (compatible r1 h416)
    (compatible r1 h423)
    (compatible r1 h426)
    (compatible r1 h428)
    (compatible r1 h430)
    (compatible r1 h437)
    (compatible r1 h440)
    (compatible r1 h444)
    (compatible r1 h445)
    (compatible r1 h447)
    (compatible r1 h449)
    (compatible r1 h455)
    (compatible r1 h470)
    (compatible r1 h472)
    (compatible r1 h473)
    (compatible r1 h476)
    (compatible r1 h478)
    (compatible r1 h480)
    (compatible r1 h484)
    (compatible r1 h486)
    (compatible r1 h487)
    (compatible r1 h488)
    (compatible r1 h489)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h27)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h128)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h153)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h167)
    (compatible r2 h171)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h180)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h201)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h209)
    (compatible r2 h211)
    (compatible r2 h216)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h224)
    (compatible r2 h226)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h242)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h252)
    (compatible r2 h256)
    (compatible r2 h258)
    (compatible r2 h260)
    (compatible r2 h263)
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h274)
    (compatible r2 h275)
    (compatible r2 h277)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h288)
    (compatible r2 h292)
    (compatible r2 h295)
    (compatible r2 h297)
    (compatible r2 h299)
    (compatible r2 h300)
    (compatible r2 h304)
    (compatible r2 h307)
    (compatible r2 h308)
    (compatible r2 h310)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h325)
    (compatible r2 h326)
    (compatible r2 h328)
    (compatible r2 h334)
    (compatible r2 h335)
    (compatible r2 h338)
    (compatible r2 h339)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h345)
    (compatible r2 h346)
    (compatible r2 h349)
    (compatible r2 h351)
    (compatible r2 h352)
    (compatible r2 h354)
    (compatible r2 h356)
    (compatible r2 h358)
    (compatible r2 h359)
    (compatible r2 h360)
    (compatible r2 h363)
    (compatible r2 h364)
    (compatible r2 h365)
    (compatible r2 h366)
    (compatible r2 h369)
    (compatible r2 h370)
    (compatible r2 h371)
    (compatible r2 h374)
    (compatible r2 h376)
    (compatible r2 h378)
    (compatible r2 h379)
    (compatible r2 h381)
    (compatible r2 h388)
    (compatible r2 h389)
    (compatible r2 h393)
    (compatible r2 h394)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h398)
    (compatible r2 h400)
    (compatible r2 h401)
    (compatible r2 h403)
    (compatible r2 h404)
    (compatible r2 h411)
    (compatible r2 h412)
    (compatible r2 h416)
    (compatible r2 h423)
    (compatible r2 h426)
    (compatible r2 h428)
    (compatible r2 h430)
    (compatible r2 h431)
    (compatible r2 h433)
    (compatible r2 h434)
    (compatible r2 h435)
    (compatible r2 h437)
    (compatible r2 h438)
    (compatible r2 h439)
    (compatible r2 h440)
    (compatible r2 h442)
    (compatible r2 h444)
    (compatible r2 h445)
    (compatible r2 h446)
    (compatible r2 h447)
    (compatible r2 h449)
    (compatible r2 h450)
    (compatible r2 h455)
    (compatible r2 h456)
    (compatible r2 h459)
    (compatible r2 h461)
    (compatible r2 h464)
    (compatible r2 h467)
    (compatible r2 h469)
    (compatible r2 h470)
    (compatible r2 h471)
    (compatible r2 h472)
    (compatible r2 h473)
    (compatible r2 h475)
    (compatible r2 h476)
    (compatible r2 h477)
    (compatible r2 h478)
    (compatible r2 h479)
    (compatible r2 h480)
    (compatible r2 h481)
    (compatible r2 h484)
    (compatible r2 h485)
    (compatible r2 h486)
    (compatible r2 h487)
    (compatible r2 h488)
    (compatible r2 h489)
    (compatible r2 h492)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
