(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 3 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 4 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 2 persones
    ;; h40: 1 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 1 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 2 persones
    ;; h54: 3 persones
    ;; h55: 2 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 3 persones
    ;; h70: 1 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 2 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 3 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 4 persones
    ;; h88: 1 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 4 persones
    ;; h97: 2 persones
    ;; h98: 4 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 3 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 1 persones
    ;; h110: 4 persones
    ;; h111: 1 persones
    ;; h112: 4 persones
    ;; h113: 2 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 2 persones
    ;; h120: 4 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 4 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 4 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 3 persones
    ;; h136: 4 persones
    ;; h137: 1 persones
    ;; h138: 3 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 4 persones
    ;; h142: 3 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 4 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 4 persones
    ;; h153: 2 persones
    ;; h154: 3 persones
    ;; h155: 2 persones
    ;; h156: 1 persones
    ;; h157: 3 persones
    ;; h158: 1 persones
    ;; h159: 2 persones
    ;; h160: 3 persones
    ;; h161: 3 persones
    ;; h162: 1 persones
    ;; h163: 4 persones
    ;; h164: 1 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 1 persones
    ;; h170: 1 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 3 persones
    ;; h174: 1 persones
    ;; h175: 3 persones
    ;; h176: 4 persones
    ;; h177: 2 persones
    ;; h178: 2 persones
    ;; h179: 3 persones
    ;; h180: 3 persones
    ;; h181: 3 persones
    ;; h182: 4 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 2 persones
    ;; h188: 3 persones
    ;; h189: 3 persones
    ;; h190: 1 persones
    ;; h191: 4 persones
    ;; h192: 2 persones
    ;; h193: 2 persones
    ;; h194: 2 persones
    ;; h195: 1 persones
    ;; h196: 2 persones
    ;; h197: 2 persones
    ;; h198: 4 persones
    ;; h199: 4 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 3 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 4 persones
    ;; h206: 3 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 4 persones
    ;; h210: 2 persones
    ;; h211: 1 persones
    ;; h212: 1 persones
    ;; h213: 4 persones
    ;; h214: 4 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 2 persones
    ;; h218: 4 persones
    ;; h219: 4 persones
    ;; h220: 3 persones
    ;; h221: 4 persones
    ;; h222: 3 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 1 persones
    ;; h226: 1 persones
    ;; h227: 3 persones
    ;; h228: 4 persones
    ;; h229: 2 persones
    ;; h230: 1 persones
    ;; h231: 3 persones
    ;; h232: 1 persones
    ;; h233: 1 persones
    ;; h234: 4 persones
    ;; h235: 2 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 3 persones
    ;; h239: 2 persones
    ;; h240: 3 persones
    ;; h241: 4 persones
    ;; h242: 1 persones
    ;; h243: 1 persones
    ;; h244: 2 persones
    ;; h245: 1 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 3 persones
    ;; h249: 3 persones
    ;; h250: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h12)
    (compatible r1 h15)
    (compatible r1 h19)
    (compatible r1 h23)
    (compatible r1 h28)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h47)
    (compatible r1 h51)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h73)
    (compatible r1 h79)
    (compatible r1 h87)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h110)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h136)
    (compatible r1 h141)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h152)
    (compatible r1 h163)
    (compatible r1 h171)
    (compatible r1 h176)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h191)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h205)
    (compatible r1 h209)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h216)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h221)
    (compatible r1 h223)
    (compatible r1 h228)
    (compatible r1 h234)
    (compatible r1 h241)
    (compatible r1 h250)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h138)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h171)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h202)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h231)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h244)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
