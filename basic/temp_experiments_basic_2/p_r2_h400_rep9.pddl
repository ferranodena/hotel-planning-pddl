(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 h251 h252 h253 h254 h255 h256 h257 h258 h259 h260 h261 h262 h263 h264 h265 h266 h267 h268 h269 h270 h271 h272 h273 h274 h275 h276 h277 h278 h279 h280 h281 h282 h283 h284 h285 h286 h287 h288 h289 h290 h291 h292 h293 h294 h295 h296 h297 h298 h299 h300 h301 h302 h303 h304 h305 h306 h307 h308 h309 h310 h311 h312 h313 h314 h315 h316 h317 h318 h319 h320 h321 h322 h323 h324 h325 h326 h327 h328 h329 h330 h331 h332 h333 h334 h335 h336 h337 h338 h339 h340 h341 h342 h343 h344 h345 h346 h347 h348 h349 h350 h351 h352 h353 h354 h355 h356 h357 h358 h359 h360 h361 h362 h363 h364 h365 h366 h367 h368 h369 h370 h371 h372 h373 h374 h375 h376 h377 h378 h379 h380 h381 h382 h383 h384 h385 h386 h387 h388 h389 h390 h391 h392 h393 h394 h395 h396 h397 h398 h399 h400 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 1 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 1 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 1 persones
    ;; h32: 2 persones
    ;; h33: 4 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 3 persones
    ;; h52: 1 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 4 persones
    ;; h60: 1 persones
    ;; h61: 4 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 1 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 4 persones
    ;; h79: 2 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 3 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 2 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 1 persones
    ;; h113: 3 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 1 persones
    ;; h117: 3 persones
    ;; h118: 1 persones
    ;; h119: 1 persones
    ;; h120: 2 persones
    ;; h121: 3 persones
    ;; h122: 1 persones
    ;; h123: 4 persones
    ;; h124: 1 persones
    ;; h125: 3 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 2 persones
    ;; h135: 1 persones
    ;; h136: 1 persones
    ;; h137: 4 persones
    ;; h138: 2 persones
    ;; h139: 2 persones
    ;; h140: 4 persones
    ;; h141: 4 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 1 persones
    ;; h146: 4 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 1 persones
    ;; h153: 2 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 4 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 2 persones
    ;; h163: 4 persones
    ;; h164: 2 persones
    ;; h165: 3 persones
    ;; h166: 3 persones
    ;; h167: 3 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 1 persones
    ;; h171: 4 persones
    ;; h172: 3 persones
    ;; h173: 1 persones
    ;; h174: 1 persones
    ;; h175: 3 persones
    ;; h176: 1 persones
    ;; h177: 1 persones
    ;; h178: 2 persones
    ;; h179: 3 persones
    ;; h180: 1 persones
    ;; h181: 2 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 2 persones
    ;; h185: 4 persones
    ;; h186: 1 persones
    ;; h187: 3 persones
    ;; h188: 2 persones
    ;; h189: 3 persones
    ;; h190: 4 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 3 persones
    ;; h196: 1 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 1 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 4 persones
    ;; h203: 1 persones
    ;; h204: 4 persones
    ;; h205: 3 persones
    ;; h206: 2 persones
    ;; h207: 3 persones
    ;; h208: 4 persones
    ;; h209: 2 persones
    ;; h210: 4 persones
    ;; h211: 2 persones
    ;; h212: 1 persones
    ;; h213: 4 persones
    ;; h214: 3 persones
    ;; h215: 4 persones
    ;; h216: 3 persones
    ;; h217: 2 persones
    ;; h218: 3 persones
    ;; h219: 4 persones
    ;; h220: 2 persones
    ;; h221: 1 persones
    ;; h222: 3 persones
    ;; h223: 3 persones
    ;; h224: 1 persones
    ;; h225: 1 persones
    ;; h226: 2 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 1 persones
    ;; h230: 2 persones
    ;; h231: 4 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 4 persones
    ;; h235: 2 persones
    ;; h236: 4 persones
    ;; h237: 4 persones
    ;; h238: 2 persones
    ;; h239: 3 persones
    ;; h240: 1 persones
    ;; h241: 3 persones
    ;; h242: 4 persones
    ;; h243: 3 persones
    ;; h244: 4 persones
    ;; h245: 3 persones
    ;; h246: 2 persones
    ;; h247: 4 persones
    ;; h248: 1 persones
    ;; h249: 2 persones
    ;; h250: 1 persones
    ;; h251: 3 persones
    ;; h252: 2 persones
    ;; h253: 1 persones
    ;; h254: 1 persones
    ;; h255: 2 persones
    ;; h256: 4 persones
    ;; h257: 2 persones
    ;; h258: 2 persones
    ;; h259: 2 persones
    ;; h260: 4 persones
    ;; h261: 3 persones
    ;; h262: 1 persones
    ;; h263: 4 persones
    ;; h264: 1 persones
    ;; h265: 4 persones
    ;; h266: 3 persones
    ;; h267: 3 persones
    ;; h268: 3 persones
    ;; h269: 3 persones
    ;; h270: 2 persones
    ;; h271: 4 persones
    ;; h272: 2 persones
    ;; h273: 3 persones
    ;; h274: 3 persones
    ;; h275: 1 persones
    ;; h276: 3 persones
    ;; h277: 2 persones
    ;; h278: 2 persones
    ;; h279: 4 persones
    ;; h280: 1 persones
    ;; h281: 1 persones
    ;; h282: 2 persones
    ;; h283: 2 persones
    ;; h284: 1 persones
    ;; h285: 4 persones
    ;; h286: 3 persones
    ;; h287: 1 persones
    ;; h288: 2 persones
    ;; h289: 3 persones
    ;; h290: 2 persones
    ;; h291: 4 persones
    ;; h292: 2 persones
    ;; h293: 3 persones
    ;; h294: 4 persones
    ;; h295: 4 persones
    ;; h296: 4 persones
    ;; h297: 2 persones
    ;; h298: 2 persones
    ;; h299: 2 persones
    ;; h300: 1 persones
    ;; h301: 1 persones
    ;; h302: 1 persones
    ;; h303: 2 persones
    ;; h304: 2 persones
    ;; h305: 3 persones
    ;; h306: 1 persones
    ;; h307: 4 persones
    ;; h308: 1 persones
    ;; h309: 2 persones
    ;; h310: 4 persones
    ;; h311: 1 persones
    ;; h312: 1 persones
    ;; h313: 2 persones
    ;; h314: 3 persones
    ;; h315: 3 persones
    ;; h316: 3 persones
    ;; h317: 4 persones
    ;; h318: 1 persones
    ;; h319: 2 persones
    ;; h320: 3 persones
    ;; h321: 2 persones
    ;; h322: 1 persones
    ;; h323: 3 persones
    ;; h324: 1 persones
    ;; h325: 4 persones
    ;; h326: 3 persones
    ;; h327: 4 persones
    ;; h328: 4 persones
    ;; h329: 2 persones
    ;; h330: 1 persones
    ;; h331: 2 persones
    ;; h332: 3 persones
    ;; h333: 4 persones
    ;; h334: 1 persones
    ;; h335: 2 persones
    ;; h336: 2 persones
    ;; h337: 4 persones
    ;; h338: 1 persones
    ;; h339: 4 persones
    ;; h340: 4 persones
    ;; h341: 3 persones
    ;; h342: 1 persones
    ;; h343: 4 persones
    ;; h344: 4 persones
    ;; h345: 4 persones
    ;; h346: 2 persones
    ;; h347: 3 persones
    ;; h348: 3 persones
    ;; h349: 4 persones
    ;; h350: 2 persones
    ;; h351: 2 persones
    ;; h352: 2 persones
    ;; h353: 3 persones
    ;; h354: 4 persones
    ;; h355: 1 persones
    ;; h356: 2 persones
    ;; h357: 3 persones
    ;; h358: 1 persones
    ;; h359: 2 persones
    ;; h360: 1 persones
    ;; h361: 1 persones
    ;; h362: 3 persones
    ;; h363: 1 persones
    ;; h364: 1 persones
    ;; h365: 1 persones
    ;; h366: 2 persones
    ;; h367: 3 persones
    ;; h368: 4 persones
    ;; h369: 4 persones
    ;; h370: 1 persones
    ;; h371: 2 persones
    ;; h372: 1 persones
    ;; h373: 2 persones
    ;; h374: 1 persones
    ;; h375: 2 persones
    ;; h376: 2 persones
    ;; h377: 2 persones
    ;; h378: 2 persones
    ;; h379: 4 persones
    ;; h380: 2 persones
    ;; h381: 4 persones
    ;; h382: 2 persones
    ;; h383: 1 persones
    ;; h384: 1 persones
    ;; h385: 4 persones
    ;; h386: 1 persones
    ;; h387: 2 persones
    ;; h388: 1 persones
    ;; h389: 1 persones
    ;; h390: 1 persones
    ;; h391: 1 persones
    ;; h392: 2 persones
    ;; h393: 2 persones
    ;; h394: 3 persones
    ;; h395: 4 persones
    ;; h396: 2 persones
    ;; h397: 4 persones
    ;; h398: 4 persones
    ;; h399: 2 persones
    ;; h400: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h16)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h98)
    (compatible r1 h103)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h123)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h137)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h146)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h155)
    (compatible r1 h159)
    (compatible r1 h163)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h183)
    (compatible r1 h185)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h194)
    (compatible r1 h202)
    (compatible r1 h204)
    (compatible r1 h208)
    (compatible r1 h210)
    (compatible r1 h213)
    (compatible r1 h215)
    (compatible r1 h219)
    (compatible r1 h228)
    (compatible r1 h231)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h242)
    (compatible r1 h244)
    (compatible r1 h247)
    (compatible r1 h256)
    (compatible r1 h260)
    (compatible r1 h263)
    (compatible r1 h265)
    (compatible r1 h271)
    (compatible r1 h279)
    (compatible r1 h285)
    (compatible r1 h291)
    (compatible r1 h294)
    (compatible r1 h295)
    (compatible r1 h296)
    (compatible r1 h307)
    (compatible r1 h310)
    (compatible r1 h317)
    (compatible r1 h325)
    (compatible r1 h327)
    (compatible r1 h328)
    (compatible r1 h333)
    (compatible r1 h337)
    (compatible r1 h339)
    (compatible r1 h340)
    (compatible r1 h343)
    (compatible r1 h344)
    (compatible r1 h345)
    (compatible r1 h349)
    (compatible r1 h354)
    (compatible r1 h368)
    (compatible r1 h369)
    (compatible r1 h379)
    (compatible r1 h381)
    (compatible r1 h385)
    (compatible r1 h395)
    (compatible r1 h397)
    (compatible r1 h398)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h30)
    (compatible r2 h33)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h73)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h121)
    (compatible r2 h123)
    (compatible r2 h125)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h137)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h146)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h159)
    (compatible r2 h163)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h175)
    (compatible r2 h179)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h202)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h210)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h228)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h239)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h247)
    (compatible r2 h251)
    (compatible r2 h256)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h263)
    (compatible r2 h265)
    (compatible r2 h266)
    (compatible r2 h267)
    (compatible r2 h268)
    (compatible r2 h269)
    (compatible r2 h271)
    (compatible r2 h273)
    (compatible r2 h274)
    (compatible r2 h276)
    (compatible r2 h279)
    (compatible r2 h285)
    (compatible r2 h286)
    (compatible r2 h289)
    (compatible r2 h291)
    (compatible r2 h293)
    (compatible r2 h294)
    (compatible r2 h295)
    (compatible r2 h296)
    (compatible r2 h305)
    (compatible r2 h307)
    (compatible r2 h310)
    (compatible r2 h314)
    (compatible r2 h315)
    (compatible r2 h316)
    (compatible r2 h317)
    (compatible r2 h320)
    (compatible r2 h323)
    (compatible r2 h325)
    (compatible r2 h326)
    (compatible r2 h327)
    (compatible r2 h328)
    (compatible r2 h332)
    (compatible r2 h333)
    (compatible r2 h337)
    (compatible r2 h339)
    (compatible r2 h340)
    (compatible r2 h341)
    (compatible r2 h343)
    (compatible r2 h344)
    (compatible r2 h345)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h349)
    (compatible r2 h353)
    (compatible r2 h354)
    (compatible r2 h357)
    (compatible r2 h362)
    (compatible r2 h367)
    (compatible r2 h368)
    (compatible r2 h369)
    (compatible r2 h379)
    (compatible r2 h381)
    (compatible r2 h385)
    (compatible r2 h394)
    (compatible r2 h395)
    (compatible r2 h397)
    (compatible r2 h398)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
