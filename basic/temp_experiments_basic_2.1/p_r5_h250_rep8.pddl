(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 3 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 3 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 2 persones
    ;; h17: 4 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 4 persones
    ;; h22: 1 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 1 persones
    ;; h48: 2 persones
    ;; h49: 2 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 3 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 4 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 2 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 4 persones
    ;; h81: 3 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 4 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 4 persones
    ;; h98: 2 persones
    ;; h99: 1 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 3 persones
    ;; h108: 4 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 3 persones
    ;; h114: 1 persones
    ;; h115: 4 persones
    ;; h116: 1 persones
    ;; h117: 2 persones
    ;; h118: 4 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 1 persones
    ;; h123: 4 persones
    ;; h124: 4 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 3 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 3 persones
    ;; h131: 2 persones
    ;; h132: 1 persones
    ;; h133: 1 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 4 persones
    ;; h138: 2 persones
    ;; h139: 1 persones
    ;; h140: 4 persones
    ;; h141: 2 persones
    ;; h142: 2 persones
    ;; h143: 4 persones
    ;; h144: 1 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 4 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 4 persones
    ;; h153: 4 persones
    ;; h154: 1 persones
    ;; h155: 2 persones
    ;; h156: 3 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 2 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 4 persones
    ;; h167: 4 persones
    ;; h168: 4 persones
    ;; h169: 2 persones
    ;; h170: 3 persones
    ;; h171: 2 persones
    ;; h172: 4 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 4 persones
    ;; h176: 2 persones
    ;; h177: 3 persones
    ;; h178: 4 persones
    ;; h179: 1 persones
    ;; h180: 1 persones
    ;; h181: 4 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 2 persones
    ;; h185: 2 persones
    ;; h186: 1 persones
    ;; h187: 4 persones
    ;; h188: 1 persones
    ;; h189: 4 persones
    ;; h190: 3 persones
    ;; h191: 2 persones
    ;; h192: 1 persones
    ;; h193: 3 persones
    ;; h194: 4 persones
    ;; h195: 2 persones
    ;; h196: 4 persones
    ;; h197: 2 persones
    ;; h198: 2 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 2 persones
    ;; h202: 3 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 2 persones
    ;; h206: 2 persones
    ;; h207: 4 persones
    ;; h208: 3 persones
    ;; h209: 1 persones
    ;; h210: 4 persones
    ;; h211: 3 persones
    ;; h212: 2 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 1 persones
    ;; h216: 2 persones
    ;; h217: 1 persones
    ;; h218: 4 persones
    ;; h219: 3 persones
    ;; h220: 2 persones
    ;; h221: 1 persones
    ;; h222: 2 persones
    ;; h223: 2 persones
    ;; h224: 3 persones
    ;; h225: 4 persones
    ;; h226: 4 persones
    ;; h227: 1 persones
    ;; h228: 4 persones
    ;; h229: 4 persones
    ;; h230: 2 persones
    ;; h231: 1 persones
    ;; h232: 3 persones
    ;; h233: 3 persones
    ;; h234: 1 persones
    ;; h235: 1 persones
    ;; h236: 2 persones
    ;; h237: 1 persones
    ;; h238: 2 persones
    ;; h239: 3 persones
    ;; h240: 2 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 3 persones
    ;; h244: 4 persones
    ;; h245: 2 persones
    ;; h246: 2 persones
    ;; h247: 2 persones
    ;; h248: 1 persones
    ;; h249: 3 persones
    ;; h250: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h17)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h66)
    (compatible r1 h75)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h100)
    (compatible r1 h108)
    (compatible r1 h115)
    (compatible r1 h118)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h140)
    (compatible r1 h143)
    (compatible r1 h146)
    (compatible r1 h149)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h159)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h172)
    (compatible r1 h175)
    (compatible r1 h178)
    (compatible r1 h181)
    (compatible r1 h187)
    (compatible r1 h189)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h199)
    (compatible r1 h207)
    (compatible r1 h210)
    (compatible r1 h218)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h228)
    (compatible r1 h229)
    (compatible r1 h242)
    (compatible r1 h244)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h14)
    (compatible r2 h17)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h31)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h66)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h100)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h130)
    (compatible r2 h134)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h140)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h156)
    (compatible r2 h159)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h170)
    (compatible r2 h172)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h181)
    (compatible r2 h187)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h193)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h199)
    (compatible r2 h202)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h224)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h228)
    (compatible r2 h229)
    (compatible r2 h232)
    (compatible r2 h233)
    (compatible r2 h239)
    (compatible r2 h242)
    (compatible r2 h243)
    (compatible r2 h244)
    (compatible r2 h249)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h2)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h8)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h17)
    (compatible r3 h21)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h31)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h51)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h66)
    (compatible r3 h68)
    (compatible r3 h70)
    (compatible r3 h72)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h87)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h92)
    (compatible r3 h94)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h100)
    (compatible r3 h104)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h115)
    (compatible r3 h118)
    (compatible r3 h120)
    (compatible r3 h123)
    (compatible r3 h124)
    (compatible r3 h125)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h130)
    (compatible r3 h134)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h140)
    (compatible r3 h143)
    (compatible r3 h146)
    (compatible r3 h149)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h153)
    (compatible r3 h156)
    (compatible r3 h159)
    (compatible r3 h164)
    (compatible r3 h166)
    (compatible r3 h167)
    (compatible r3 h168)
    (compatible r3 h170)
    (compatible r3 h172)
    (compatible r3 h175)
    (compatible r3 h177)
    (compatible r3 h178)
    (compatible r3 h181)
    (compatible r3 h187)
    (compatible r3 h189)
    (compatible r3 h190)
    (compatible r3 h193)
    (compatible r3 h194)
    (compatible r3 h196)
    (compatible r3 h199)
    (compatible r3 h202)
    (compatible r3 h207)
    (compatible r3 h208)
    (compatible r3 h210)
    (compatible r3 h211)
    (compatible r3 h218)
    (compatible r3 h219)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h226)
    (compatible r3 h228)
    (compatible r3 h229)
    (compatible r3 h232)
    (compatible r3 h233)
    (compatible r3 h239)
    (compatible r3 h242)
    (compatible r3 h243)
    (compatible r3 h244)
    (compatible r3 h249)

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
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
    (dies-reserva r5 d1)
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
