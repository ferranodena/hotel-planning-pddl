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
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 1 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 1 persones
    ;; h69: 2 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 1 persones
    ;; h79: 4 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 4 persones
    ;; h86: 3 persones
    ;; h87: 1 persones
    ;; h88: 2 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 1 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 3 persones
    ;; h103: 1 persones
    ;; h104: 4 persones
    ;; h105: 3 persones
    ;; h106: 4 persones
    ;; h107: 1 persones
    ;; h108: 1 persones
    ;; h109: 4 persones
    ;; h110: 4 persones
    ;; h111: 4 persones
    ;; h112: 4 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 1 persones
    ;; h117: 1 persones
    ;; h118: 4 persones
    ;; h119: 2 persones
    ;; h120: 4 persones
    ;; h121: 4 persones
    ;; h122: 1 persones
    ;; h123: 2 persones
    ;; h124: 3 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 4 persones
    ;; h132: 4 persones
    ;; h133: 4 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 1 persones
    ;; h139: 1 persones
    ;; h140: 4 persones
    ;; h141: 1 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 1 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 3 persones
    ;; h152: 2 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 2 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 3 persones
    ;; h161: 4 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 1 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 1 persones
    ;; h170: 2 persones
    ;; h171: 3 persones
    ;; h172: 4 persones
    ;; h173: 4 persones
    ;; h174: 1 persones
    ;; h175: 4 persones
    ;; h176: 1 persones
    ;; h177: 2 persones
    ;; h178: 3 persones
    ;; h179: 1 persones
    ;; h180: 4 persones
    ;; h181: 2 persones
    ;; h182: 4 persones
    ;; h183: 2 persones
    ;; h184: 2 persones
    ;; h185: 4 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 4 persones
    ;; h189: 2 persones
    ;; h190: 3 persones
    ;; h191: 4 persones
    ;; h192: 2 persones
    ;; h193: 3 persones
    ;; h194: 1 persones
    ;; h195: 4 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 4 persones
    ;; h199: 1 persones
    ;; h200: 2 persones
    ;; h201: 2 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 3 persones
    ;; h205: 1 persones
    ;; h206: 1 persones
    ;; h207: 2 persones
    ;; h208: 1 persones
    ;; h209: 2 persones
    ;; h210: 1 persones
    ;; h211: 1 persones
    ;; h212: 2 persones
    ;; h213: 2 persones
    ;; h214: 4 persones
    ;; h215: 4 persones
    ;; h216: 3 persones
    ;; h217: 1 persones
    ;; h218: 2 persones
    ;; h219: 3 persones
    ;; h220: 3 persones
    ;; h221: 4 persones
    ;; h222: 1 persones
    ;; h223: 4 persones
    ;; h224: 4 persones
    ;; h225: 3 persones
    ;; h226: 4 persones
    ;; h227: 1 persones
    ;; h228: 3 persones
    ;; h229: 2 persones
    ;; h230: 4 persones
    ;; h231: 1 persones
    ;; h232: 2 persones
    ;; h233: 2 persones
    ;; h234: 2 persones
    ;; h235: 4 persones
    ;; h236: 2 persones
    ;; h237: 2 persones
    ;; h238: 1 persones
    ;; h239: 2 persones
    ;; h240: 2 persones
    ;; h241: 3 persones
    ;; h242: 3 persones
    ;; h243: 3 persones
    ;; h244: 2 persones
    ;; h245: 4 persones
    ;; h246: 3 persones
    ;; h247: 3 persones
    ;; h248: 2 persones
    ;; h249: 4 persones
    ;; h250: 4 persones
    ;; h251: 3 persones
    ;; h252: 2 persones
    ;; h253: 4 persones
    ;; h254: 1 persones
    ;; h255: 2 persones
    ;; h256: 4 persones
    ;; h257: 4 persones
    ;; h258: 1 persones
    ;; h259: 2 persones
    ;; h260: 3 persones
    ;; h261: 3 persones
    ;; h262: 2 persones
    ;; h263: 4 persones
    ;; h264: 4 persones
    ;; h265: 4 persones
    ;; h266: 1 persones
    ;; h267: 1 persones
    ;; h268: 2 persones
    ;; h269: 2 persones
    ;; h270: 1 persones
    ;; h271: 1 persones
    ;; h272: 3 persones
    ;; h273: 4 persones
    ;; h274: 1 persones
    ;; h275: 4 persones
    ;; h276: 1 persones
    ;; h277: 1 persones
    ;; h278: 2 persones
    ;; h279: 2 persones
    ;; h280: 3 persones
    ;; h281: 2 persones
    ;; h282: 1 persones
    ;; h283: 4 persones
    ;; h284: 4 persones
    ;; h285: 1 persones
    ;; h286: 3 persones
    ;; h287: 2 persones
    ;; h288: 2 persones
    ;; h289: 2 persones
    ;; h290: 4 persones
    ;; h291: 2 persones
    ;; h292: 2 persones
    ;; h293: 1 persones
    ;; h294: 3 persones
    ;; h295: 2 persones
    ;; h296: 1 persones
    ;; h297: 2 persones
    ;; h298: 1 persones
    ;; h299: 1 persones
    ;; h300: 3 persones
    ;; h301: 1 persones
    ;; h302: 2 persones
    ;; h303: 3 persones
    ;; h304: 3 persones
    ;; h305: 2 persones
    ;; h306: 4 persones
    ;; h307: 1 persones
    ;; h308: 3 persones
    ;; h309: 1 persones
    ;; h310: 1 persones
    ;; h311: 4 persones
    ;; h312: 3 persones
    ;; h313: 4 persones
    ;; h314: 1 persones
    ;; h315: 4 persones
    ;; h316: 4 persones
    ;; h317: 3 persones
    ;; h318: 4 persones
    ;; h319: 4 persones
    ;; h320: 4 persones
    ;; h321: 2 persones
    ;; h322: 1 persones
    ;; h323: 3 persones
    ;; h324: 1 persones
    ;; h325: 1 persones
    ;; h326: 2 persones
    ;; h327: 1 persones
    ;; h328: 2 persones
    ;; h329: 1 persones
    ;; h330: 2 persones
    ;; h331: 4 persones
    ;; h332: 3 persones
    ;; h333: 1 persones
    ;; h334: 4 persones
    ;; h335: 1 persones
    ;; h336: 2 persones
    ;; h337: 3 persones
    ;; h338: 2 persones
    ;; h339: 4 persones
    ;; h340: 4 persones
    ;; h341: 2 persones
    ;; h342: 1 persones
    ;; h343: 3 persones
    ;; h344: 1 persones
    ;; h345: 1 persones
    ;; h346: 4 persones
    ;; h347: 3 persones
    ;; h348: 4 persones
    ;; h349: 4 persones
    ;; h350: 2 persones
    ;; h351: 1 persones
    ;; h352: 4 persones
    ;; h353: 3 persones
    ;; h354: 2 persones
    ;; h355: 3 persones
    ;; h356: 1 persones
    ;; h357: 3 persones
    ;; h358: 4 persones
    ;; h359: 1 persones
    ;; h360: 4 persones
    ;; h361: 2 persones
    ;; h362: 2 persones
    ;; h363: 3 persones
    ;; h364: 1 persones
    ;; h365: 2 persones
    ;; h366: 1 persones
    ;; h367: 2 persones
    ;; h368: 2 persones
    ;; h369: 2 persones
    ;; h370: 2 persones
    ;; h371: 3 persones
    ;; h372: 1 persones
    ;; h373: 1 persones
    ;; h374: 1 persones
    ;; h375: 1 persones
    ;; h376: 1 persones
    ;; h377: 4 persones
    ;; h378: 4 persones
    ;; h379: 2 persones
    ;; h380: 4 persones
    ;; h381: 2 persones
    ;; h382: 2 persones
    ;; h383: 2 persones
    ;; h384: 4 persones
    ;; h385: 2 persones
    ;; h386: 2 persones
    ;; h387: 4 persones
    ;; h388: 4 persones
    ;; h389: 1 persones
    ;; h390: 1 persones
    ;; h391: 3 persones
    ;; h392: 3 persones
    ;; h393: 3 persones
    ;; h394: 1 persones
    ;; h395: 3 persones
    ;; h396: 4 persones
    ;; h397: 3 persones
    ;; h398: 1 persones
    ;; h399: 1 persones
    ;; h400: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h42)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h62)
    (compatible r1 h70)
    (compatible r1 h79)
    (compatible r1 h85)
    (compatible r1 h92)
    (compatible r1 h97)
    (compatible r1 h104)
    (compatible r1 h106)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h118)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h125)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h140)
    (compatible r1 h142)
    (compatible r1 h146)
    (compatible r1 h150)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h161)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h175)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h185)
    (compatible r1 h188)
    (compatible r1 h191)
    (compatible r1 h195)
    (compatible r1 h198)
    (compatible r1 h202)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h221)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h226)
    (compatible r1 h230)
    (compatible r1 h235)
    (compatible r1 h245)
    (compatible r1 h249)
    (compatible r1 h250)
    (compatible r1 h253)
    (compatible r1 h256)
    (compatible r1 h257)
    (compatible r1 h263)
    (compatible r1 h264)
    (compatible r1 h265)
    (compatible r1 h273)
    (compatible r1 h275)
    (compatible r1 h283)
    (compatible r1 h284)
    (compatible r1 h290)
    (compatible r1 h306)
    (compatible r1 h311)
    (compatible r1 h313)
    (compatible r1 h315)
    (compatible r1 h316)
    (compatible r1 h318)
    (compatible r1 h319)
    (compatible r1 h320)
    (compatible r1 h331)
    (compatible r1 h334)
    (compatible r1 h339)
    (compatible r1 h340)
    (compatible r1 h346)
    (compatible r1 h348)
    (compatible r1 h349)
    (compatible r1 h352)
    (compatible r1 h358)
    (compatible r1 h360)
    (compatible r1 h377)
    (compatible r1 h378)
    (compatible r1 h380)
    (compatible r1 h384)
    (compatible r1 h387)
    (compatible r1 h388)
    (compatible r1 h396)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h75)
    (compatible r2 h79)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h109)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h166)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h185)
    (compatible r2 h188)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h198)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h228)
    (compatible r2 h230)
    (compatible r2 h235)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h249)
    (compatible r2 h250)
    (compatible r2 h251)
    (compatible r2 h253)
    (compatible r2 h256)
    (compatible r2 h257)
    (compatible r2 h260)
    (compatible r2 h261)
    (compatible r2 h263)
    (compatible r2 h264)
    (compatible r2 h265)
    (compatible r2 h272)
    (compatible r2 h273)
    (compatible r2 h275)
    (compatible r2 h280)
    (compatible r2 h283)
    (compatible r2 h284)
    (compatible r2 h286)
    (compatible r2 h290)
    (compatible r2 h294)
    (compatible r2 h300)
    (compatible r2 h303)
    (compatible r2 h304)
    (compatible r2 h306)
    (compatible r2 h308)
    (compatible r2 h311)
    (compatible r2 h312)
    (compatible r2 h313)
    (compatible r2 h315)
    (compatible r2 h316)
    (compatible r2 h317)
    (compatible r2 h318)
    (compatible r2 h319)
    (compatible r2 h320)
    (compatible r2 h323)
    (compatible r2 h331)
    (compatible r2 h332)
    (compatible r2 h334)
    (compatible r2 h337)
    (compatible r2 h339)
    (compatible r2 h340)
    (compatible r2 h343)
    (compatible r2 h346)
    (compatible r2 h347)
    (compatible r2 h348)
    (compatible r2 h349)
    (compatible r2 h352)
    (compatible r2 h353)
    (compatible r2 h355)
    (compatible r2 h357)
    (compatible r2 h358)
    (compatible r2 h360)
    (compatible r2 h363)
    (compatible r2 h371)
    (compatible r2 h377)
    (compatible r2 h378)
    (compatible r2 h380)
    (compatible r2 h384)
    (compatible r2 h387)
    (compatible r2 h388)
    (compatible r2 h391)
    (compatible r2 h392)
    (compatible r2 h393)
    (compatible r2 h395)
    (compatible r2 h396)
    (compatible r2 h397)
    (compatible r2 h400)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
