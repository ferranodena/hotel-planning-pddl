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
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 2 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 1 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 1 persones
    ;; h79: 4 persones
    ;; h80: 1 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 1 persones
    ;; h88: 1 persones
    ;; h89: 1 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 3 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 4 persones
    ;; h107: 1 persones
    ;; h108: 4 persones
    ;; h109: 4 persones
    ;; h110: 3 persones
    ;; h111: 1 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 3 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 4 persones
    ;; h124: 4 persones
    ;; h125: 4 persones
    ;; h126: 4 persones
    ;; h127: 2 persones
    ;; h128: 1 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 3 persones
    ;; h137: 2 persones
    ;; h138: 4 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 1 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 4 persones
    ;; h148: 2 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 3 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 1 persones
    ;; h155: 2 persones
    ;; h156: 1 persones
    ;; h157: 2 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 1 persones
    ;; h161: 2 persones
    ;; h162: 2 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 3 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 4 persones
    ;; h171: 1 persones
    ;; h172: 1 persones
    ;; h173: 1 persones
    ;; h174: 1 persones
    ;; h175: 3 persones
    ;; h176: 2 persones
    ;; h177: 3 persones
    ;; h178: 3 persones
    ;; h179: 2 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 4 persones
    ;; h183: 3 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 1 persones
    ;; h187: 3 persones
    ;; h188: 2 persones
    ;; h189: 4 persones
    ;; h190: 3 persones
    ;; h191: 1 persones
    ;; h192: 2 persones
    ;; h193: 3 persones
    ;; h194: 1 persones
    ;; h195: 1 persones
    ;; h196: 3 persones
    ;; h197: 3 persones
    ;; h198: 4 persones
    ;; h199: 1 persones
    ;; h200: 3 persones
    ;; h201: 4 persones
    ;; h202: 2 persones
    ;; h203: 2 persones
    ;; h204: 3 persones
    ;; h205: 1 persones
    ;; h206: 4 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 1 persones
    ;; h210: 4 persones
    ;; h211: 1 persones
    ;; h212: 3 persones
    ;; h213: 3 persones
    ;; h214: 4 persones
    ;; h215: 4 persones
    ;; h216: 4 persones
    ;; h217: 4 persones
    ;; h218: 3 persones
    ;; h219: 4 persones
    ;; h220: 1 persones
    ;; h221: 2 persones
    ;; h222: 3 persones
    ;; h223: 1 persones
    ;; h224: 2 persones
    ;; h225: 1 persones
    ;; h226: 3 persones
    ;; h227: 4 persones
    ;; h228: 2 persones
    ;; h229: 2 persones
    ;; h230: 1 persones
    ;; h231: 2 persones
    ;; h232: 3 persones
    ;; h233: 2 persones
    ;; h234: 4 persones
    ;; h235: 2 persones
    ;; h236: 1 persones
    ;; h237: 1 persones
    ;; h238: 3 persones
    ;; h239: 3 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 2 persones
    ;; h243: 3 persones
    ;; h244: 2 persones
    ;; h245: 3 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 4 persones
    ;; h249: 1 persones
    ;; h250: 2 persones
    ;; h251: 4 persones
    ;; h252: 4 persones
    ;; h253: 3 persones
    ;; h254: 4 persones
    ;; h255: 1 persones
    ;; h256: 2 persones
    ;; h257: 2 persones
    ;; h258: 2 persones
    ;; h259: 2 persones
    ;; h260: 2 persones
    ;; h261: 4 persones
    ;; h262: 2 persones
    ;; h263: 4 persones
    ;; h264: 3 persones
    ;; h265: 4 persones
    ;; h266: 1 persones
    ;; h267: 4 persones
    ;; h268: 3 persones
    ;; h269: 2 persones
    ;; h270: 1 persones
    ;; h271: 3 persones
    ;; h272: 4 persones
    ;; h273: 2 persones
    ;; h274: 1 persones
    ;; h275: 4 persones
    ;; h276: 2 persones
    ;; h277: 1 persones
    ;; h278: 2 persones
    ;; h279: 4 persones
    ;; h280: 3 persones
    ;; h281: 3 persones
    ;; h282: 2 persones
    ;; h283: 3 persones
    ;; h284: 1 persones
    ;; h285: 2 persones
    ;; h286: 4 persones
    ;; h287: 2 persones
    ;; h288: 2 persones
    ;; h289: 3 persones
    ;; h290: 3 persones
    ;; h291: 3 persones
    ;; h292: 4 persones
    ;; h293: 2 persones
    ;; h294: 4 persones
    ;; h295: 3 persones
    ;; h296: 2 persones
    ;; h297: 4 persones
    ;; h298: 3 persones
    ;; h299: 4 persones
    ;; h300: 4 persones
    ;; h301: 1 persones
    ;; h302: 3 persones
    ;; h303: 1 persones
    ;; h304: 2 persones
    ;; h305: 1 persones
    ;; h306: 3 persones
    ;; h307: 3 persones
    ;; h308: 4 persones
    ;; h309: 4 persones
    ;; h310: 3 persones
    ;; h311: 1 persones
    ;; h312: 2 persones
    ;; h313: 3 persones
    ;; h314: 1 persones
    ;; h315: 3 persones
    ;; h316: 2 persones
    ;; h317: 1 persones
    ;; h318: 1 persones
    ;; h319: 1 persones
    ;; h320: 2 persones
    ;; h321: 3 persones
    ;; h322: 4 persones
    ;; h323: 3 persones
    ;; h324: 2 persones
    ;; h325: 3 persones
    ;; h326: 2 persones
    ;; h327: 2 persones
    ;; h328: 2 persones
    ;; h329: 4 persones
    ;; h330: 1 persones
    ;; h331: 4 persones
    ;; h332: 1 persones
    ;; h333: 2 persones
    ;; h334: 1 persones
    ;; h335: 3 persones
    ;; h336: 2 persones
    ;; h337: 1 persones
    ;; h338: 4 persones
    ;; h339: 3 persones
    ;; h340: 1 persones
    ;; h341: 3 persones
    ;; h342: 2 persones
    ;; h343: 3 persones
    ;; h344: 4 persones
    ;; h345: 3 persones
    ;; h346: 1 persones
    ;; h347: 4 persones
    ;; h348: 4 persones
    ;; h349: 3 persones
    ;; h350: 2 persones
    ;; h351: 3 persones
    ;; h352: 1 persones
    ;; h353: 3 persones
    ;; h354: 1 persones
    ;; h355: 3 persones
    ;; h356: 3 persones
    ;; h357: 1 persones
    ;; h358: 3 persones
    ;; h359: 3 persones
    ;; h360: 2 persones
    ;; h361: 3 persones
    ;; h362: 2 persones
    ;; h363: 1 persones
    ;; h364: 1 persones
    ;; h365: 4 persones
    ;; h366: 2 persones
    ;; h367: 2 persones
    ;; h368: 4 persones
    ;; h369: 2 persones
    ;; h370: 1 persones
    ;; h371: 1 persones
    ;; h372: 1 persones
    ;; h373: 3 persones
    ;; h374: 4 persones
    ;; h375: 2 persones
    ;; h376: 1 persones
    ;; h377: 2 persones
    ;; h378: 3 persones
    ;; h379: 3 persones
    ;; h380: 1 persones
    ;; h381: 4 persones
    ;; h382: 2 persones
    ;; h383: 1 persones
    ;; h384: 3 persones
    ;; h385: 4 persones
    ;; h386: 4 persones
    ;; h387: 4 persones
    ;; h388: 1 persones
    ;; h389: 2 persones
    ;; h390: 4 persones
    ;; h391: 1 persones
    ;; h392: 3 persones
    ;; h393: 4 persones
    ;; h394: 3 persones
    ;; h395: 4 persones
    ;; h396: 3 persones
    ;; h397: 4 persones
    ;; h398: 3 persones
    ;; h399: 1 persones
    ;; h400: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h29)
    (compatible r1 h33)
    (compatible r1 h38)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h54)
    (compatible r1 h66)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h83)
    (compatible r1 h106)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h113)
    (compatible r1 h116)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h138)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h147)
    (compatible r1 h170)
    (compatible r1 h182)
    (compatible r1 h189)
    (compatible r1 h198)
    (compatible r1 h201)
    (compatible r1 h206)
    (compatible r1 h210)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h219)
    (compatible r1 h227)
    (compatible r1 h234)
    (compatible r1 h248)
    (compatible r1 h251)
    (compatible r1 h252)
    (compatible r1 h254)
    (compatible r1 h261)
    (compatible r1 h263)
    (compatible r1 h265)
    (compatible r1 h267)
    (compatible r1 h272)
    (compatible r1 h275)
    (compatible r1 h279)
    (compatible r1 h286)
    (compatible r1 h292)
    (compatible r1 h294)
    (compatible r1 h297)
    (compatible r1 h299)
    (compatible r1 h300)
    (compatible r1 h308)
    (compatible r1 h309)
    (compatible r1 h322)
    (compatible r1 h329)
    (compatible r1 h331)
    (compatible r1 h338)
    (compatible r1 h344)
    (compatible r1 h347)
    (compatible r1 h348)
    (compatible r1 h365)
    (compatible r1 h368)
    (compatible r1 h374)
    (compatible r1 h381)
    (compatible r1 h385)
    (compatible r1 h386)
    (compatible r1 h387)
    (compatible r1 h390)
    (compatible r1 h393)
    (compatible r1 h395)
    (compatible r1 h397)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h23)
    (compatible r2 h24)
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
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h131)
    (compatible r2 h134)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h210)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h224)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h252)
    (compatible r2 h253)
    (compatible r2 h254)
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
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h271)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h275)
    (compatible r2 h276)
    (compatible r2 h278)
    (compatible r2 h279)
    (compatible r2 h280)
    (compatible r2 h281)
    (compatible r2 h282)
    (compatible r2 h283)
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
    (compatible r2 h302)
    (compatible r2 h304)
    (compatible r2 h306)
    (compatible r2 h307)
    (compatible r2 h308)
    (compatible r2 h309)
    (compatible r2 h310)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h315)
    (compatible r2 h316)
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
    (compatible r2 h331)
    (compatible r2 h333)
    (compatible r2 h335)
    (compatible r2 h336)
    (compatible r2 h338)
    (compatible r2 h339)
    (compatible r2 h341)
    (compatible r2 h342)
    (compatible r2 h343)
    (compatible r2 h344)
    (compatible r2 h345)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h349)
    (compatible r2 h350)
    (compatible r2 h351)
    (compatible r2 h353)
    (compatible r2 h355)
    (compatible r2 h356)
    (compatible r2 h358)
    (compatible r2 h359)
    (compatible r2 h360)
    (compatible r2 h361)
    (compatible r2 h362)
    (compatible r2 h365)
    (compatible r2 h366)
    (compatible r2 h367)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h373)
    (compatible r2 h374)
    (compatible r2 h375)
    (compatible r2 h377)
    (compatible r2 h378)
    (compatible r2 h379)
    (compatible r2 h381)
    (compatible r2 h382)
    (compatible r2 h384)
    (compatible r2 h385)
    (compatible r2 h386)
    (compatible r2 h387)
    (compatible r2 h389)
    (compatible r2 h390)
    (compatible r2 h392)
    (compatible r2 h393)
    (compatible r2 h394)
    (compatible r2 h395)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h398)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
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
