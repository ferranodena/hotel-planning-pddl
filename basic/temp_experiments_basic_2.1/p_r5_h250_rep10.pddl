(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 2 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 4 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 2 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 1 persones
    ;; h75: 1 persones
    ;; h76: 3 persones
    ;; h77: 3 persones
    ;; h78: 2 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 4 persones
    ;; h82: 4 persones
    ;; h83: 3 persones
    ;; h84: 1 persones
    ;; h85: 2 persones
    ;; h86: 4 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 4 persones
    ;; h106: 2 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 4 persones
    ;; h111: 3 persones
    ;; h112: 4 persones
    ;; h113: 4 persones
    ;; h114: 2 persones
    ;; h115: 4 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 3 persones
    ;; h120: 2 persones
    ;; h121: 3 persones
    ;; h122: 2 persones
    ;; h123: 1 persones
    ;; h124: 3 persones
    ;; h125: 3 persones
    ;; h126: 2 persones
    ;; h127: 3 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 4 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 3 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 3 persones
    ;; h150: 4 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 3 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 3 persones
    ;; h160: 4 persones
    ;; h161: 2 persones
    ;; h162: 4 persones
    ;; h163: 3 persones
    ;; h164: 4 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 4 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 2 persones
    ;; h175: 1 persones
    ;; h176: 1 persones
    ;; h177: 1 persones
    ;; h178: 3 persones
    ;; h179: 3 persones
    ;; h180: 2 persones
    ;; h181: 4 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 4 persones
    ;; h186: 3 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 2 persones
    ;; h190: 4 persones
    ;; h191: 4 persones
    ;; h192: 4 persones
    ;; h193: 2 persones
    ;; h194: 3 persones
    ;; h195: 1 persones
    ;; h196: 1 persones
    ;; h197: 3 persones
    ;; h198: 4 persones
    ;; h199: 3 persones
    ;; h200: 2 persones
    ;; h201: 3 persones
    ;; h202: 3 persones
    ;; h203: 1 persones
    ;; h204: 4 persones
    ;; h205: 4 persones
    ;; h206: 2 persones
    ;; h207: 4 persones
    ;; h208: 3 persones
    ;; h209: 4 persones
    ;; h210: 3 persones
    ;; h211: 2 persones
    ;; h212: 3 persones
    ;; h213: 4 persones
    ;; h214: 2 persones
    ;; h215: 1 persones
    ;; h216: 4 persones
    ;; h217: 3 persones
    ;; h218: 1 persones
    ;; h219: 2 persones
    ;; h220: 4 persones
    ;; h221: 4 persones
    ;; h222: 3 persones
    ;; h223: 3 persones
    ;; h224: 2 persones
    ;; h225: 1 persones
    ;; h226: 3 persones
    ;; h227: 3 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 3 persones
    ;; h231: 3 persones
    ;; h232: 3 persones
    ;; h233: 4 persones
    ;; h234: 4 persones
    ;; h235: 4 persones
    ;; h236: 3 persones
    ;; h237: 1 persones
    ;; h238: 1 persones
    ;; h239: 2 persones
    ;; h240: 3 persones
    ;; h241: 2 persones
    ;; h242: 1 persones
    ;; h243: 2 persones
    ;; h244: 4 persones
    ;; h245: 3 persones
    ;; h246: 1 persones
    ;; h247: 1 persones
    ;; h248: 2 persones
    ;; h249: 2 persones
    ;; h250: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h25)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
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
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h94)
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
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h129)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h142)
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
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h182)
    (compatible r1 h183)
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
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)
    (compatible r1 h201)
    (compatible r1 h202)
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
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h219)
    (compatible r1 h220)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h224)
    (compatible r1 h226)
    (compatible r1 h227)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h232)
    (compatible r1 h233)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h236)
    (compatible r1 h239)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h243)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h248)
    (compatible r1 h249)
    (compatible r1 h250)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h25)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h91)
    (compatible r2 h94)
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
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h110)
    (compatible r2 h111)
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
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h129)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h150)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h163)
    (compatible r2 h164)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h183)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)
    (compatible r2 h201)
    (compatible r2 h202)
    (compatible r2 h204)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h214)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h219)
    (compatible r2 h220)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h224)
    (compatible r2 h226)
    (compatible r2 h227)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h231)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h236)
    (compatible r2 h239)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h15)
    (compatible r3 h21)
    (compatible r3 h25)
    (compatible r3 h32)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h51)
    (compatible r3 h57)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h69)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h86)
    (compatible r3 h88)
    (compatible r3 h94)
    (compatible r3 h98)
    (compatible r3 h103)
    (compatible r3 h105)
    (compatible r3 h110)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h115)
    (compatible r3 h140)
    (compatible r3 h145)
    (compatible r3 h150)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h155)
    (compatible r3 h157)
    (compatible r3 h160)
    (compatible r3 h162)
    (compatible r3 h164)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h181)
    (compatible r3 h183)
    (compatible r3 h185)
    (compatible r3 h187)
    (compatible r3 h190)
    (compatible r3 h191)
    (compatible r3 h192)
    (compatible r3 h198)
    (compatible r3 h204)
    (compatible r3 h205)
    (compatible r3 h207)
    (compatible r3 h209)
    (compatible r3 h213)
    (compatible r3 h216)
    (compatible r3 h220)
    (compatible r3 h221)
    (compatible r3 h233)
    (compatible r3 h234)
    (compatible r3 h235)
    (compatible r3 h244)
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

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h18)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h25)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h47)
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
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h91)
    (compatible r5 h94)
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
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h129)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h142)
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
    (compatible r5 h168)
    (compatible r5 h169)
    (compatible r5 h170)
    (compatible r5 h171)
    (compatible r5 h172)
    (compatible r5 h173)
    (compatible r5 h174)
    (compatible r5 h178)
    (compatible r5 h179)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h182)
    (compatible r5 h183)
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
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h199)
    (compatible r5 h200)
    (compatible r5 h201)
    (compatible r5 h202)
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
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h219)
    (compatible r5 h220)
    (compatible r5 h221)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h226)
    (compatible r5 h227)
    (compatible r5 h229)
    (compatible r5 h230)
    (compatible r5 h231)
    (compatible r5 h232)
    (compatible r5 h233)
    (compatible r5 h234)
    (compatible r5 h235)
    (compatible r5 h236)
    (compatible r5 h239)
    (compatible r5 h240)
    (compatible r5 h241)
    (compatible r5 h243)
    (compatible r5 h244)
    (compatible r5 h245)
    (compatible r5 h248)
    (compatible r5 h249)
    (compatible r5 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d3)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
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
