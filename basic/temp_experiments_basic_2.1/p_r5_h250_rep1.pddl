(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 4 persones
    ;; h5: 1 persones
    ;; h6: 1 persones
    ;; h7: 4 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 4 persones
    ;; h21: 3 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 4 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 4 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 4 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 3 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 2 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 2 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 3 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 2 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 4 persones
    ;; h102: 1 persones
    ;; h103: 3 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 3 persones
    ;; h114: 4 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 3 persones
    ;; h128: 3 persones
    ;; h129: 4 persones
    ;; h130: 3 persones
    ;; h131: 2 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 3 persones
    ;; h139: 1 persones
    ;; h140: 1 persones
    ;; h141: 3 persones
    ;; h142: 1 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 3 persones
    ;; h149: 4 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 3 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 1 persones
    ;; h157: 3 persones
    ;; h158: 1 persones
    ;; h159: 3 persones
    ;; h160: 4 persones
    ;; h161: 2 persones
    ;; h162: 2 persones
    ;; h163: 3 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 4 persones
    ;; h167: 2 persones
    ;; h168: 3 persones
    ;; h169: 4 persones
    ;; h170: 1 persones
    ;; h171: 3 persones
    ;; h172: 3 persones
    ;; h173: 3 persones
    ;; h174: 1 persones
    ;; h175: 3 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 3 persones
    ;; h179: 2 persones
    ;; h180: 2 persones
    ;; h181: 4 persones
    ;; h182: 4 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 3 persones
    ;; h188: 2 persones
    ;; h189: 3 persones
    ;; h190: 3 persones
    ;; h191: 4 persones
    ;; h192: 3 persones
    ;; h193: 4 persones
    ;; h194: 1 persones
    ;; h195: 3 persones
    ;; h196: 4 persones
    ;; h197: 4 persones
    ;; h198: 2 persones
    ;; h199: 2 persones
    ;; h200: 2 persones
    ;; h201: 1 persones
    ;; h202: 4 persones
    ;; h203: 1 persones
    ;; h204: 2 persones
    ;; h205: 1 persones
    ;; h206: 3 persones
    ;; h207: 4 persones
    ;; h208: 1 persones
    ;; h209: 1 persones
    ;; h210: 3 persones
    ;; h211: 4 persones
    ;; h212: 3 persones
    ;; h213: 3 persones
    ;; h214: 2 persones
    ;; h215: 4 persones
    ;; h216: 2 persones
    ;; h217: 3 persones
    ;; h218: 2 persones
    ;; h219: 2 persones
    ;; h220: 4 persones
    ;; h221: 2 persones
    ;; h222: 3 persones
    ;; h223: 4 persones
    ;; h224: 3 persones
    ;; h225: 1 persones
    ;; h226: 3 persones
    ;; h227: 2 persones
    ;; h228: 4 persones
    ;; h229: 4 persones
    ;; h230: 2 persones
    ;; h231: 3 persones
    ;; h232: 2 persones
    ;; h233: 4 persones
    ;; h234: 2 persones
    ;; h235: 1 persones
    ;; h236: 4 persones
    ;; h237: 4 persones
    ;; h238: 4 persones
    ;; h239: 2 persones
    ;; h240: 2 persones
    ;; h241: 3 persones
    ;; h242: 1 persones
    ;; h243: 3 persones
    ;; h244: 4 persones
    ;; h245: 4 persones
    ;; h246: 4 persones
    ;; h247: 1 persones
    ;; h248: 2 persones
    ;; h249: 4 persones
    ;; h250: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h46)
    (compatible r1 h55)
    (compatible r1 h63)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h79)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h97)
    (compatible r1 h101)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h116)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h129)
    (compatible r1 h134)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h160)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h169)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h186)
    (compatible r1 h191)
    (compatible r1 h193)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h202)
    (compatible r1 h207)
    (compatible r1 h211)
    (compatible r1 h215)
    (compatible r1 h220)
    (compatible r1 h223)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h233)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h249)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h55)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h77)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h103)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h157)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h163)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h178)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h202)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h215)
    (compatible r2 h217)
    (compatible r2 h220)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h226)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h231)
    (compatible r2 h233)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h241)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h249)
    (compatible r2 h250)

    ;; Reserva r3 (2 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h18)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h60)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h98)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h101)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h111)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h121)
    (compatible r3 h122)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h128)
    (compatible r3 h129)
    (compatible r3 h130)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h135)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h141)
    (compatible r3 h143)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h154)
    (compatible r3 h157)
    (compatible r3 h159)
    (compatible r3 h160)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h165)
    (compatible r3 h166)
    (compatible r3 h167)
    (compatible r3 h168)
    (compatible r3 h169)
    (compatible r3 h171)
    (compatible r3 h172)
    (compatible r3 h173)
    (compatible r3 h175)
    (compatible r3 h176)
    (compatible r3 h178)
    (compatible r3 h179)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h182)
    (compatible r3 h183)
    (compatible r3 h185)
    (compatible r3 h186)
    (compatible r3 h187)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h193)
    (compatible r3 h195)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h198)
    (compatible r3 h199)
    (compatible r3 h200)
    (compatible r3 h202)
    (compatible r3 h204)
    (compatible r3 h206)
    (compatible r3 h207)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h212)
    (compatible r3 h213)
    (compatible r3 h214)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h217)
    (compatible r3 h218)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h221)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h226)
    (compatible r3 h227)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h230)
    (compatible r3 h231)
    (compatible r3 h232)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h236)
    (compatible r3 h237)
    (compatible r3 h238)
    (compatible r3 h239)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h245)
    (compatible r3 h246)
    (compatible r3 h248)
    (compatible r3 h249)
    (compatible r3 h250)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h120)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h126)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h133)
    (compatible r4 h134)
    (compatible r4 h135)
    (compatible r4 h136)
    (compatible r4 h137)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h150)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h153)
    (compatible r4 h154)
    (compatible r4 h155)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h160)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h165)
    (compatible r4 h166)
    (compatible r4 h167)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h171)
    (compatible r4 h172)
    (compatible r4 h173)
    (compatible r4 h174)
    (compatible r4 h175)
    (compatible r4 h176)
    (compatible r4 h177)
    (compatible r4 h178)
    (compatible r4 h179)
    (compatible r4 h180)
    (compatible r4 h181)
    (compatible r4 h182)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h185)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h188)
    (compatible r4 h189)
    (compatible r4 h190)
    (compatible r4 h191)
    (compatible r4 h192)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h195)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h198)
    (compatible r4 h199)
    (compatible r4 h200)
    (compatible r4 h201)
    (compatible r4 h202)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h205)
    (compatible r4 h206)
    (compatible r4 h207)
    (compatible r4 h208)
    (compatible r4 h209)
    (compatible r4 h210)
    (compatible r4 h211)
    (compatible r4 h212)
    (compatible r4 h213)
    (compatible r4 h214)
    (compatible r4 h215)
    (compatible r4 h216)
    (compatible r4 h217)
    (compatible r4 h218)
    (compatible r4 h219)
    (compatible r4 h220)
    (compatible r4 h221)
    (compatible r4 h222)
    (compatible r4 h223)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h226)
    (compatible r4 h227)
    (compatible r4 h228)
    (compatible r4 h229)
    (compatible r4 h230)
    (compatible r4 h231)
    (compatible r4 h232)
    (compatible r4 h233)
    (compatible r4 h234)
    (compatible r4 h235)
    (compatible r4 h236)
    (compatible r4 h237)
    (compatible r4 h238)
    (compatible r4 h239)
    (compatible r4 h240)
    (compatible r4 h241)
    (compatible r4 h242)
    (compatible r4 h243)
    (compatible r4 h244)
    (compatible r4 h245)
    (compatible r4 h246)
    (compatible r4 h247)
    (compatible r4 h248)
    (compatible r4 h249)
    (compatible r4 h250)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h18)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h29)
    (compatible r5 h31)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h52)
    (compatible r5 h55)
    (compatible r5 h60)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h77)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h92)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h97)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h103)
    (compatible r5 h106)
    (compatible r5 h108)
    (compatible r5 h110)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h119)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h141)
    (compatible r5 h143)
    (compatible r5 h146)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
    (compatible r5 h154)
    (compatible r5 h157)
    (compatible r5 h159)
    (compatible r5 h160)
    (compatible r5 h163)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h175)
    (compatible r5 h176)
    (compatible r5 h178)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h202)
    (compatible r5 h206)
    (compatible r5 h207)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h212)
    (compatible r5 h213)
    (compatible r5 h215)
    (compatible r5 h217)
    (compatible r5 h220)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h226)
    (compatible r5 h228)
    (compatible r5 h229)
    (compatible r5 h231)
    (compatible r5 h233)
    (compatible r5 h236)
    (compatible r5 h237)
    (compatible r5 h238)
    (compatible r5 h241)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h245)
    (compatible r5 h246)
    (compatible r5 h249)
    (compatible r5 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d2)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
