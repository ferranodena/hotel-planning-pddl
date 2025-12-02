(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 3 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 4 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 2 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 3 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 2 persones
    ;; h81: 3 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 4 persones
    ;; h86: 3 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 4 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 4 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 4 persones
    ;; h106: 2 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 4 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 1 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 2 persones
    ;; h116: 1 persones
    ;; h117: 1 persones
    ;; h118: 3 persones
    ;; h119: 4 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 1 persones
    ;; h126: 2 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 4 persones
    ;; h134: 3 persones
    ;; h135: 3 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 4 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 3 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 3 persones
    ;; h150: 2 persones
    ;; h151: 3 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 1 persones
    ;; h155: 1 persones
    ;; h156: 3 persones
    ;; h157: 3 persones
    ;; h158: 1 persones
    ;; h159: 2 persones
    ;; h160: 1 persones
    ;; h161: 4 persones
    ;; h162: 3 persones
    ;; h163: 4 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 1 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 1 persones
    ;; h170: 1 persones
    ;; h171: 3 persones
    ;; h172: 3 persones
    ;; h173: 4 persones
    ;; h174: 1 persones
    ;; h175: 1 persones
    ;; h176: 2 persones
    ;; h177: 2 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 2 persones
    ;; h181: 3 persones
    ;; h182: 2 persones
    ;; h183: 3 persones
    ;; h184: 2 persones
    ;; h185: 1 persones
    ;; h186: 2 persones
    ;; h187: 1 persones
    ;; h188: 3 persones
    ;; h189: 4 persones
    ;; h190: 3 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 3 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 2 persones
    ;; h199: 1 persones
    ;; h200: 4 persones
    ;; h201: 3 persones
    ;; h202: 1 persones
    ;; h203: 1 persones
    ;; h204: 4 persones
    ;; h205: 4 persones
    ;; h206: 4 persones
    ;; h207: 2 persones
    ;; h208: 4 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 1 persones
    ;; h212: 2 persones
    ;; h213: 2 persones
    ;; h214: 1 persones
    ;; h215: 3 persones
    ;; h216: 1 persones
    ;; h217: 4 persones
    ;; h218: 1 persones
    ;; h219: 1 persones
    ;; h220: 4 persones
    ;; h221: 4 persones
    ;; h222: 1 persones
    ;; h223: 3 persones
    ;; h224: 2 persones
    ;; h225: 1 persones
    ;; h226: 1 persones
    ;; h227: 1 persones
    ;; h228: 4 persones
    ;; h229: 2 persones
    ;; h230: 3 persones
    ;; h231: 4 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 3 persones
    ;; h238: 2 persones
    ;; h239: 4 persones
    ;; h240: 3 persones
    ;; h241: 3 persones
    ;; h242: 3 persones
    ;; h243: 3 persones
    ;; h244: 4 persones
    ;; h245: 4 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 2 persones
    ;; h249: 1 persones
    ;; h250: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h19)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h89)
    (compatible r1 h95)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h109)
    (compatible r1 h114)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h128)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h143)
    (compatible r1 h145)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h179)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h192)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h215)
    (compatible r1 h217)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h223)
    (compatible r1 h228)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h237)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h250)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h19)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h75)
    (compatible r2 h77)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h109)
    (compatible r2 h114)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h128)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h145)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h179)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h215)
    (compatible r2 h217)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h223)
    (compatible r2 h228)
    (compatible r2 h230)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d9)
    (dies-reserva r2 d2)
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
