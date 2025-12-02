(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 3 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 3 persones
    ;; h80: 2 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 3 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 3 persones
    ;; h96: 4 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 2 persones
    ;; h100: 3 persones
    ;; h101: 4 persones
    ;; h102: 1 persones
    ;; h103: 2 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 4 persones
    ;; h107: 4 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 3 persones
    ;; h114: 1 persones
    ;; h115: 2 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 2 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 3 persones
    ;; h129: 1 persones
    ;; h130: 2 persones
    ;; h131: 4 persones
    ;; h132: 2 persones
    ;; h133: 1 persones
    ;; h134: 4 persones
    ;; h135: 1 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 4 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 2 persones
    ;; h146: 1 persones
    ;; h147: 4 persones
    ;; h148: 4 persones
    ;; h149: 4 persones
    ;; h150: 2 persones
    ;; h151: 3 persones
    ;; h152: 1 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 1 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 3 persones
    ;; h162: 3 persones
    ;; h163: 2 persones
    ;; h164: 1 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 2 persones
    ;; h168: 1 persones
    ;; h169: 2 persones
    ;; h170: 4 persones
    ;; h171: 1 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 4 persones
    ;; h176: 3 persones
    ;; h177: 3 persones
    ;; h178: 1 persones
    ;; h179: 1 persones
    ;; h180: 1 persones
    ;; h181: 3 persones
    ;; h182: 3 persones
    ;; h183: 2 persones
    ;; h184: 1 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 4 persones
    ;; h189: 1 persones
    ;; h190: 2 persones
    ;; h191: 2 persones
    ;; h192: 2 persones
    ;; h193: 1 persones
    ;; h194: 3 persones
    ;; h195: 4 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 1 persones
    ;; h199: 1 persones
    ;; h200: 3 persones
    ;; h201: 2 persones
    ;; h202: 1 persones
    ;; h203: 3 persones
    ;; h204: 2 persones
    ;; h205: 1 persones
    ;; h206: 1 persones
    ;; h207: 4 persones
    ;; h208: 4 persones
    ;; h209: 1 persones
    ;; h210: 1 persones
    ;; h211: 2 persones
    ;; h212: 3 persones
    ;; h213: 1 persones
    ;; h214: 2 persones
    ;; h215: 2 persones
    ;; h216: 2 persones
    ;; h217: 2 persones
    ;; h218: 2 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 1 persones
    ;; h222: 4 persones
    ;; h223: 3 persones
    ;; h224: 1 persones
    ;; h225: 1 persones
    ;; h226: 3 persones
    ;; h227: 3 persones
    ;; h228: 4 persones
    ;; h229: 1 persones
    ;; h230: 1 persones
    ;; h231: 4 persones
    ;; h232: 1 persones
    ;; h233: 2 persones
    ;; h234: 2 persones
    ;; h235: 4 persones
    ;; h236: 2 persones
    ;; h237: 1 persones
    ;; h238: 1 persones
    ;; h239: 3 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 3 persones
    ;; h243: 4 persones
    ;; h244: 4 persones
    ;; h245: 1 persones
    ;; h246: 3 persones
    ;; h247: 4 persones
    ;; h248: 1 persones
    ;; h249: 3 persones
    ;; h250: 2 persones
    ;; h251: 3 persones
    ;; h252: 4 persones
    ;; h253: 3 persones
    ;; h254: 3 persones
    ;; h255: 4 persones
    ;; h256: 4 persones
    ;; h257: 3 persones
    ;; h258: 3 persones
    ;; h259: 1 persones
    ;; h260: 4 persones
    ;; h261: 4 persones
    ;; h262: 4 persones
    ;; h263: 4 persones
    ;; h264: 1 persones
    ;; h265: 1 persones
    ;; h266: 3 persones
    ;; h267: 1 persones
    ;; h268: 2 persones
    ;; h269: 1 persones
    ;; h270: 3 persones
    ;; h271: 4 persones
    ;; h272: 2 persones
    ;; h273: 1 persones
    ;; h274: 3 persones
    ;; h275: 4 persones
    ;; h276: 2 persones
    ;; h277: 4 persones
    ;; h278: 4 persones
    ;; h279: 1 persones
    ;; h280: 2 persones
    ;; h281: 3 persones
    ;; h282: 3 persones
    ;; h283: 1 persones
    ;; h284: 4 persones
    ;; h285: 3 persones
    ;; h286: 2 persones
    ;; h287: 4 persones
    ;; h288: 2 persones
    ;; h289: 4 persones
    ;; h290: 3 persones
    ;; h291: 2 persones
    ;; h292: 3 persones
    ;; h293: 2 persones
    ;; h294: 4 persones
    ;; h295: 4 persones
    ;; h296: 3 persones
    ;; h297: 1 persones
    ;; h298: 2 persones
    ;; h299: 2 persones
    ;; h300: 4 persones
    ;; h301: 1 persones
    ;; h302: 2 persones
    ;; h303: 2 persones
    ;; h304: 2 persones
    ;; h305: 1 persones
    ;; h306: 3 persones
    ;; h307: 4 persones
    ;; h308: 1 persones
    ;; h309: 3 persones
    ;; h310: 1 persones
    ;; h311: 3 persones
    ;; h312: 4 persones
    ;; h313: 2 persones
    ;; h314: 3 persones
    ;; h315: 4 persones
    ;; h316: 2 persones
    ;; h317: 4 persones
    ;; h318: 2 persones
    ;; h319: 1 persones
    ;; h320: 3 persones
    ;; h321: 2 persones
    ;; h322: 1 persones
    ;; h323: 1 persones
    ;; h324: 4 persones
    ;; h325: 4 persones
    ;; h326: 1 persones
    ;; h327: 2 persones
    ;; h328: 2 persones
    ;; h329: 2 persones
    ;; h330: 1 persones
    ;; h331: 2 persones
    ;; h332: 3 persones
    ;; h333: 3 persones
    ;; h334: 4 persones
    ;; h335: 3 persones
    ;; h336: 2 persones
    ;; h337: 2 persones
    ;; h338: 3 persones
    ;; h339: 2 persones
    ;; h340: 4 persones
    ;; h341: 2 persones
    ;; h342: 4 persones
    ;; h343: 4 persones
    ;; h344: 4 persones
    ;; h345: 4 persones
    ;; h346: 3 persones
    ;; h347: 1 persones
    ;; h348: 3 persones
    ;; h349: 3 persones
    ;; h350: 4 persones
    ;; h351: 4 persones
    ;; h352: 3 persones
    ;; h353: 1 persones
    ;; h354: 2 persones
    ;; h355: 2 persones
    ;; h356: 2 persones
    ;; h357: 3 persones
    ;; h358: 3 persones
    ;; h359: 3 persones
    ;; h360: 4 persones
    ;; h361: 4 persones
    ;; h362: 2 persones
    ;; h363: 3 persones
    ;; h364: 3 persones
    ;; h365: 2 persones
    ;; h366: 3 persones
    ;; h367: 2 persones
    ;; h368: 4 persones
    ;; h369: 4 persones
    ;; h370: 3 persones
    ;; h371: 3 persones
    ;; h372: 4 persones
    ;; h373: 4 persones
    ;; h374: 2 persones
    ;; h375: 4 persones
    ;; h376: 2 persones
    ;; h377: 3 persones
    ;; h378: 2 persones
    ;; h379: 2 persones
    ;; h380: 1 persones
    ;; h381: 3 persones
    ;; h382: 4 persones
    ;; h383: 4 persones
    ;; h384: 4 persones
    ;; h385: 1 persones
    ;; h386: 4 persones
    ;; h387: 3 persones
    ;; h388: 1 persones
    ;; h389: 4 persones
    ;; h390: 4 persones
    ;; h391: 3 persones
    ;; h392: 3 persones
    ;; h393: 4 persones
    ;; h394: 4 persones
    ;; h395: 3 persones
    ;; h396: 2 persones
    ;; h397: 1 persones
    ;; h398: 3 persones
    ;; h399: 3 persones
    ;; h400: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h131)
    (compatible r1 h134)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h170)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h200)
    (compatible r1 h203)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h212)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h231)
    (compatible r1 h235)
    (compatible r1 h239)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h249)
    (compatible r1 h251)
    (compatible r1 h252)
    (compatible r1 h253)
    (compatible r1 h254)
    (compatible r1 h255)
    (compatible r1 h256)
    (compatible r1 h257)
    (compatible r1 h258)
    (compatible r1 h260)
    (compatible r1 h261)
    (compatible r1 h262)
    (compatible r1 h263)
    (compatible r1 h266)
    (compatible r1 h270)
    (compatible r1 h271)
    (compatible r1 h274)
    (compatible r1 h275)
    (compatible r1 h277)
    (compatible r1 h278)
    (compatible r1 h281)
    (compatible r1 h282)
    (compatible r1 h284)
    (compatible r1 h285)
    (compatible r1 h287)
    (compatible r1 h289)
    (compatible r1 h290)
    (compatible r1 h292)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h296)
    (compatible r1 h300)
    (compatible r1 h306)
    (compatible r1 h307)
    (compatible r1 h309)
    (compatible r1 h311)
    (compatible r1 h312)
    (compatible r1 h314)
    (compatible r1 h315)
    (compatible r1 h317)
    (compatible r1 h320)
    (compatible r1 h324)
    (compatible r1 h325)
    (compatible r1 h332)
    (compatible r1 h333)
    (compatible r1 h334)
    (compatible r1 h335)
    (compatible r1 h338)
    (compatible r1 h340)
    (compatible r1 h342)
    (compatible r1 h343)
    (compatible r1 h344)
    (compatible r1 h345)
    (compatible r1 h346)
    (compatible r1 h348)
    (compatible r1 h349)
    (compatible r1 h350)
    (compatible r1 h351)
    (compatible r1 h352)
    (compatible r1 h357)
    (compatible r1 h358)
    (compatible r1 h359)
    (compatible r1 h360)
    (compatible r1 h361)
    (compatible r1 h363)
    (compatible r1 h364)
    (compatible r1 h366)
    (compatible r1 h368)
    (compatible r1 h369)
    (compatible r1 h370)
    (compatible r1 h371)
    (compatible r1 h372)
    (compatible r1 h373)
    (compatible r1 h375)
    (compatible r1 h377)
    (compatible r1 h381)
    (compatible r1 h382)
    (compatible r1 h383)
    (compatible r1 h384)
    (compatible r1 h386)
    (compatible r1 h387)
    (compatible r1 h389)
    (compatible r1 h390)
    (compatible r1 h391)
    (compatible r1 h392)
    (compatible r1 h393)
    (compatible r1 h394)
    (compatible r1 h395)
    (compatible r1 h398)
    (compatible r1 h399)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h29)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h66)
    (compatible r2 h69)
    (compatible r2 h72)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h92)
    (compatible r2 h96)
    (compatible r2 h101)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h112)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h131)
    (compatible r2 h134)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h155)
    (compatible r2 h170)
    (compatible r2 h175)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h195)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h222)
    (compatible r2 h228)
    (compatible r2 h231)
    (compatible r2 h235)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h247)
    (compatible r2 h252)
    (compatible r2 h255)
    (compatible r2 h256)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h262)
    (compatible r2 h263)
    (compatible r2 h271)
    (compatible r2 h275)
    (compatible r2 h277)
    (compatible r2 h278)
    (compatible r2 h284)
    (compatible r2 h287)
    (compatible r2 h289)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h300)
    (compatible r2 h307)
    (compatible r2 h312)
    (compatible r2 h315)
    (compatible r2 h317)
    (compatible r2 h324)
    (compatible r2 h325)
    (compatible r2 h334)
    (compatible r2 h340)
    (compatible r2 h342)
    (compatible r2 h343)
    (compatible r2 h344)
    (compatible r2 h345)
    (compatible r2 h350)
    (compatible r2 h351)
    (compatible r2 h360)
    (compatible r2 h361)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h372)
    (compatible r2 h373)
    (compatible r2 h375)
    (compatible r2 h382)
    (compatible r2 h383)
    (compatible r2 h384)
    (compatible r2 h386)
    (compatible r2 h389)
    (compatible r2 h390)
    (compatible r2 h393)
    (compatible r2 h394)

    ;; Calendari de reserves
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
