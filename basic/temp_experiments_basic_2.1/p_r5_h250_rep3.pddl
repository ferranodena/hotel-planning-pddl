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
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 4 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 3 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 1 persones
    ;; h25: 2 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 4 persones
    ;; h36: 4 persones
    ;; h37: 1 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 4 persones
    ;; h47: 4 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 2 persones
    ;; h66: 2 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 1 persones
    ;; h73: 2 persones
    ;; h74: 4 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 2 persones
    ;; h81: 4 persones
    ;; h82: 1 persones
    ;; h83: 3 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 3 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 1 persones
    ;; h90: 4 persones
    ;; h91: 4 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 1 persones
    ;; h103: 4 persones
    ;; h104: 2 persones
    ;; h105: 3 persones
    ;; h106: 4 persones
    ;; h107: 4 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 3 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 2 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 3 persones
    ;; h130: 2 persones
    ;; h131: 1 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 3 persones
    ;; h137: 3 persones
    ;; h138: 4 persones
    ;; h139: 1 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 3 persones
    ;; h143: 2 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 4 persones
    ;; h147: 1 persones
    ;; h148: 1 persones
    ;; h149: 1 persones
    ;; h150: 3 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 2 persones
    ;; h154: 2 persones
    ;; h155: 3 persones
    ;; h156: 1 persones
    ;; h157: 3 persones
    ;; h158: 4 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 4 persones
    ;; h162: 1 persones
    ;; h163: 4 persones
    ;; h164: 4 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 1 persones
    ;; h168: 4 persones
    ;; h169: 4 persones
    ;; h170: 3 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 1 persones
    ;; h174: 3 persones
    ;; h175: 2 persones
    ;; h176: 1 persones
    ;; h177: 1 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 1 persones
    ;; h181: 3 persones
    ;; h182: 2 persones
    ;; h183: 1 persones
    ;; h184: 4 persones
    ;; h185: 2 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 2 persones
    ;; h189: 2 persones
    ;; h190: 4 persones
    ;; h191: 2 persones
    ;; h192: 4 persones
    ;; h193: 4 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 3 persones
    ;; h197: 4 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 1 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 4 persones
    ;; h204: 1 persones
    ;; h205: 4 persones
    ;; h206: 2 persones
    ;; h207: 1 persones
    ;; h208: 3 persones
    ;; h209: 4 persones
    ;; h210: 4 persones
    ;; h211: 4 persones
    ;; h212: 4 persones
    ;; h213: 3 persones
    ;; h214: 3 persones
    ;; h215: 4 persones
    ;; h216: 3 persones
    ;; h217: 1 persones
    ;; h218: 1 persones
    ;; h219: 4 persones
    ;; h220: 3 persones
    ;; h221: 2 persones
    ;; h222: 3 persones
    ;; h223: 4 persones
    ;; h224: 1 persones
    ;; h225: 2 persones
    ;; h226: 4 persones
    ;; h227: 2 persones
    ;; h228: 2 persones
    ;; h229: 2 persones
    ;; h230: 4 persones
    ;; h231: 1 persones
    ;; h232: 4 persones
    ;; h233: 2 persones
    ;; h234: 1 persones
    ;; h235: 4 persones
    ;; h236: 4 persones
    ;; h237: 3 persones
    ;; h238: 3 persones
    ;; h239: 1 persones
    ;; h240: 4 persones
    ;; h241: 4 persones
    ;; h242: 3 persones
    ;; h243: 4 persones
    ;; h244: 1 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 3 persones
    ;; h248: 3 persones
    ;; h249: 3 persones
    ;; h250: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h163)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
    (compatible r1 h203)
    (compatible r1 h204)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h207)
    (compatible r1 h208)
    (compatible r1 h209)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h213)
    (compatible r1 h214)
    (compatible r1 h215)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h237)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h242)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h247)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h250)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h22)
    (compatible r2 h27)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h71)
    (compatible r2 h74)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h86)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h133)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h155)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h174)
    (compatible r2 h178)
    (compatible r2 h181)
    (compatible r2 h184)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h190)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h203)
    (compatible r2 h205)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h215)
    (compatible r2 h216)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h226)
    (compatible r2 h230)
    (compatible r2 h232)
    (compatible r2 h235)
    (compatible r2 h236)
    (compatible r2 h237)
    (compatible r2 h238)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h17)
    (compatible r3 h22)
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h38)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h53)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h62)
    (compatible r3 h64)
    (compatible r3 h71)
    (compatible r3 h74)
    (compatible r3 h79)
    (compatible r3 h81)
    (compatible r3 h83)
    (compatible r3 h86)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h103)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h110)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h119)
    (compatible r3 h122)
    (compatible r3 h123)
    (compatible r3 h124)
    (compatible r3 h128)
    (compatible r3 h129)
    (compatible r3 h133)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h140)
    (compatible r3 h142)
    (compatible r3 h144)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h155)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h161)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h166)
    (compatible r3 h168)
    (compatible r3 h169)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h174)
    (compatible r3 h178)
    (compatible r3 h181)
    (compatible r3 h184)
    (compatible r3 h186)
    (compatible r3 h187)
    (compatible r3 h190)
    (compatible r3 h192)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h203)
    (compatible r3 h205)
    (compatible r3 h208)
    (compatible r3 h209)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h212)
    (compatible r3 h213)
    (compatible r3 h214)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h219)
    (compatible r3 h220)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h226)
    (compatible r3 h230)
    (compatible r3 h232)
    (compatible r3 h235)
    (compatible r3 h236)
    (compatible r3 h237)
    (compatible r3 h238)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h242)
    (compatible r3 h243)
    (compatible r3 h247)
    (compatible r3 h248)
    (compatible r3 h249)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h5)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h14)
    (compatible r4 h22)
    (compatible r4 h32)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h53)
    (compatible r4 h62)
    (compatible r4 h71)
    (compatible r4 h74)
    (compatible r4 h79)
    (compatible r4 h81)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h97)
    (compatible r4 h100)
    (compatible r4 h103)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h112)
    (compatible r4 h115)
    (compatible r4 h119)
    (compatible r4 h128)
    (compatible r4 h138)
    (compatible r4 h140)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h158)
    (compatible r4 h161)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h168)
    (compatible r4 h169)
    (compatible r4 h171)
    (compatible r4 h178)
    (compatible r4 h184)
    (compatible r4 h186)
    (compatible r4 h187)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h193)
    (compatible r4 h194)
    (compatible r4 h197)
    (compatible r4 h203)
    (compatible r4 h205)
    (compatible r4 h209)
    (compatible r4 h210)
    (compatible r4 h211)
    (compatible r4 h212)
    (compatible r4 h215)
    (compatible r4 h219)
    (compatible r4 h223)
    (compatible r4 h226)
    (compatible r4 h230)
    (compatible r4 h232)
    (compatible r4 h235)
    (compatible r4 h236)
    (compatible r4 h240)
    (compatible r4 h241)
    (compatible r4 h243)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h26)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h91)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h118)
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h153)
    (compatible r5 h154)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h159)
    (compatible r5 h160)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h165)
    (compatible r5 h166)
    (compatible r5 h167)
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h175)
    (compatible r5 h176)
    (compatible r5 h177)
    (compatible r5 h178)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
    (compatible r5 h184)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h187)
    (compatible r5 h188)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h200)
    (compatible r5 h201)
    (compatible r5 h202)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h206)
    (compatible r5 h207)
    (compatible r5 h208)
    (compatible r5 h209)
    (compatible r5 h210)
    (compatible r5 h211)
    (compatible r5 h212)
    (compatible r5 h213)
    (compatible r5 h214)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h218)
    (compatible r5 h219)
    (compatible r5 h220)
    (compatible r5 h221)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h225)
    (compatible r5 h226)
    (compatible r5 h227)
    (compatible r5 h228)
    (compatible r5 h229)
    (compatible r5 h230)
    (compatible r5 h231)
    (compatible r5 h232)
    (compatible r5 h233)
    (compatible r5 h234)
    (compatible r5 h235)
    (compatible r5 h236)
    (compatible r5 h237)
    (compatible r5 h238)
    (compatible r5 h239)
    (compatible r5 h240)
    (compatible r5 h241)
    (compatible r5 h242)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h245)
    (compatible r5 h246)
    (compatible r5 h247)
    (compatible r5 h248)
    (compatible r5 h249)
    (compatible r5 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
