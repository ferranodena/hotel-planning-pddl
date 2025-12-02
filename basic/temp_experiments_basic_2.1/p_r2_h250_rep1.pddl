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
    ;; h3: 4 persones
    ;; h4: 2 persones
    ;; h5: 1 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 2 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 4 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 1 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 3 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 2 persones
    ;; h59: 3 persones
    ;; h60: 1 persones
    ;; h61: 4 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 3 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 4 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 2 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 1 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 3 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 4 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 4 persones
    ;; h113: 2 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 4 persones
    ;; h128: 3 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 4 persones
    ;; h132: 1 persones
    ;; h133: 4 persones
    ;; h134: 4 persones
    ;; h135: 4 persones
    ;; h136: 3 persones
    ;; h137: 2 persones
    ;; h138: 1 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 1 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 2 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 3 persones
    ;; h150: 3 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 1 persones
    ;; h154: 3 persones
    ;; h155: 3 persones
    ;; h156: 1 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 1 persones
    ;; h162: 4 persones
    ;; h163: 2 persones
    ;; h164: 2 persones
    ;; h165: 1 persones
    ;; h166: 2 persones
    ;; h167: 2 persones
    ;; h168: 1 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 2 persones
    ;; h172: 4 persones
    ;; h173: 4 persones
    ;; h174: 2 persones
    ;; h175: 1 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 3 persones
    ;; h179: 2 persones
    ;; h180: 2 persones
    ;; h181: 4 persones
    ;; h182: 4 persones
    ;; h183: 1 persones
    ;; h184: 2 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 2 persones
    ;; h188: 3 persones
    ;; h189: 3 persones
    ;; h190: 3 persones
    ;; h191: 4 persones
    ;; h192: 2 persones
    ;; h193: 2 persones
    ;; h194: 1 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 2 persones
    ;; h198: 4 persones
    ;; h199: 2 persones
    ;; h200: 2 persones
    ;; h201: 2 persones
    ;; h202: 4 persones
    ;; h203: 3 persones
    ;; h204: 2 persones
    ;; h205: 2 persones
    ;; h206: 4 persones
    ;; h207: 2 persones
    ;; h208: 4 persones
    ;; h209: 4 persones
    ;; h210: 4 persones
    ;; h211: 1 persones
    ;; h212: 3 persones
    ;; h213: 4 persones
    ;; h214: 3 persones
    ;; h215: 1 persones
    ;; h216: 1 persones
    ;; h217: 3 persones
    ;; h218: 3 persones
    ;; h219: 4 persones
    ;; h220: 4 persones
    ;; h221: 3 persones
    ;; h222: 4 persones
    ;; h223: 1 persones
    ;; h224: 1 persones
    ;; h225: 2 persones
    ;; h226: 2 persones
    ;; h227: 3 persones
    ;; h228: 1 persones
    ;; h229: 3 persones
    ;; h230: 1 persones
    ;; h231: 2 persones
    ;; h232: 3 persones
    ;; h233: 1 persones
    ;; h234: 1 persones
    ;; h235: 4 persones
    ;; h236: 3 persones
    ;; h237: 2 persones
    ;; h238: 2 persones
    ;; h239: 4 persones
    ;; h240: 2 persones
    ;; h241: 4 persones
    ;; h242: 1 persones
    ;; h243: 1 persones
    ;; h244: 1 persones
    ;; h245: 1 persones
    ;; h246: 4 persones
    ;; h247: 4 persones
    ;; h248: 2 persones
    ;; h249: 1 persones
    ;; h250: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h3)
    (compatible r1 h15)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h27)
    (compatible r1 h31)
    (compatible r1 h36)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h61)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h82)
    (compatible r1 h86)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h108)
    (compatible r1 h112)
    (compatible r1 h123)
    (compatible r1 h127)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h142)
    (compatible r1 h144)
    (compatible r1 h162)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h177)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h186)
    (compatible r1 h191)
    (compatible r1 h196)
    (compatible r1 h198)
    (compatible r1 h202)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h210)
    (compatible r1 h213)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h222)
    (compatible r1 h235)
    (compatible r1 h239)
    (compatible r1 h241)
    (compatible r1 h246)
    (compatible r1 h247)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h15)
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
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h118)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h131)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h152)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h160)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h203)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h229)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h235)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h246)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r2 d1)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
