(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 4 persones
    ;; h20: 2 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 3 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 2 persones
    ;; h43: 2 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 3 persones
    ;; h47: 2 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 2 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 2 persones
    ;; h59: 4 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 4 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 1 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 4 persones
    ;; h77: 4 persones
    ;; h78: 1 persones
    ;; h79: 2 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 1 persones
    ;; h83: 1 persones
    ;; h84: 3 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 2 persones
    ;; h88: 2 persones
    ;; h89: 3 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 3 persones
    ;; h93: 3 persones
    ;; h94: 1 persones
    ;; h95: 1 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 4 persones
    ;; h99: 4 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 2 persones
    ;; h103: 3 persones
    ;; h104: 4 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 4 persones
    ;; h109: 3 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 2 persones
    ;; h115: 2 persones
    ;; h116: 3 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 1 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 1 persones
    ;; h124: 4 persones
    ;; h125: 3 persones
    ;; h126: 4 persones
    ;; h127: 3 persones
    ;; h128: 4 persones
    ;; h129: 3 persones
    ;; h130: 3 persones
    ;; h131: 1 persones
    ;; h132: 3 persones
    ;; h133: 1 persones
    ;; h134: 1 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 3 persones
    ;; h138: 1 persones
    ;; h139: 2 persones
    ;; h140: 1 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 2 persones
    ;; h147: 4 persones
    ;; h148: 4 persones
    ;; h149: 4 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 4 persones
    ;; h153: 2 persones
    ;; h154: 3 persones
    ;; h155: 2 persones
    ;; h156: 4 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 1 persones
    ;; h160: 1 persones
    ;; h161: 3 persones
    ;; h162: 3 persones
    ;; h163: 1 persones
    ;; h164: 2 persones
    ;; h165: 3 persones
    ;; h166: 1 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 3 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 1 persones
    ;; h176: 1 persones
    ;; h177: 2 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 3 persones
    ;; h183: 2 persones
    ;; h184: 4 persones
    ;; h185: 4 persones
    ;; h186: 2 persones
    ;; h187: 1 persones
    ;; h188: 3 persones
    ;; h189: 3 persones
    ;; h190: 1 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 3 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 2 persones
    ;; h199: 1 persones
    ;; h200: 4 persones
    ;; h201: 4 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 4 persones
    ;; h205: 3 persones
    ;; h206: 4 persones
    ;; h207: 4 persones
    ;; h208: 3 persones
    ;; h209: 1 persones
    ;; h210: 4 persones
    ;; h211: 1 persones
    ;; h212: 3 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 4 persones
    ;; h218: 2 persones
    ;; h219: 1 persones
    ;; h220: 3 persones
    ;; h221: 2 persones
    ;; h222: 3 persones
    ;; h223: 2 persones
    ;; h224: 3 persones
    ;; h225: 3 persones
    ;; h226: 3 persones
    ;; h227: 4 persones
    ;; h228: 2 persones
    ;; h229: 4 persones
    ;; h230: 3 persones
    ;; h231: 2 persones
    ;; h232: 4 persones
    ;; h233: 4 persones
    ;; h234: 1 persones
    ;; h235: 3 persones
    ;; h236: 1 persones
    ;; h237: 1 persones
    ;; h238: 3 persones
    ;; h239: 4 persones
    ;; h240: 4 persones
    ;; h241: 1 persones
    ;; h242: 2 persones
    ;; h243: 4 persones
    ;; h244: 3 persones
    ;; h245: 1 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 3 persones
    ;; h249: 2 persones
    ;; h250: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h61)
    (compatible r1 h64)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h71)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h84)
    (compatible r1 h86)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h141)
    (compatible r1 h143)
    (compatible r1 h145)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h165)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h174)
    (compatible r1 h179)
    (compatible r1 h182)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h210)
    (compatible r1 h212)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h235)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h248)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h10)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h27)
    (compatible r2 h37)
    (compatible r2 h41)
    (compatible r2 h48)
    (compatible r2 h54)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h64)
    (compatible r2 h67)
    (compatible r2 h71)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h90)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h117)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h136)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h152)
    (compatible r2 h156)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h174)
    (compatible r2 h179)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h192)
    (compatible r2 h196)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h204)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h210)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h227)
    (compatible r2 h229)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h243)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
