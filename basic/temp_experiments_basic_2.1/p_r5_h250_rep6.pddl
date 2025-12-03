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
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 3 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 4 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 2 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 3 persones
    ;; h71: 3 persones
    ;; h72: 1 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 4 persones
    ;; h82: 3 persones
    ;; h83: 3 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 1 persones
    ;; h89: 1 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 3 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 2 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 4 persones
    ;; h105: 2 persones
    ;; h106: 2 persones
    ;; h107: 4 persones
    ;; h108: 4 persones
    ;; h109: 4 persones
    ;; h110: 3 persones
    ;; h111: 1 persones
    ;; h112: 1 persones
    ;; h113: 3 persones
    ;; h114: 2 persones
    ;; h115: 4 persones
    ;; h116: 2 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 2 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 1 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 2 persones
    ;; h134: 2 persones
    ;; h135: 4 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 4 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 2 persones
    ;; h146: 1 persones
    ;; h147: 1 persones
    ;; h148: 4 persones
    ;; h149: 1 persones
    ;; h150: 4 persones
    ;; h151: 2 persones
    ;; h152: 1 persones
    ;; h153: 4 persones
    ;; h154: 1 persones
    ;; h155: 2 persones
    ;; h156: 4 persones
    ;; h157: 3 persones
    ;; h158: 3 persones
    ;; h159: 3 persones
    ;; h160: 2 persones
    ;; h161: 4 persones
    ;; h162: 3 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 1 persones
    ;; h171: 1 persones
    ;; h172: 3 persones
    ;; h173: 2 persones
    ;; h174: 4 persones
    ;; h175: 2 persones
    ;; h176: 1 persones
    ;; h177: 2 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 4 persones
    ;; h181: 3 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 4 persones
    ;; h186: 3 persones
    ;; h187: 2 persones
    ;; h188: 4 persones
    ;; h189: 4 persones
    ;; h190: 3 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 4 persones
    ;; h197: 4 persones
    ;; h198: 3 persones
    ;; h199: 1 persones
    ;; h200: 3 persones
    ;; h201: 3 persones
    ;; h202: 3 persones
    ;; h203: 3 persones
    ;; h204: 4 persones
    ;; h205: 3 persones
    ;; h206: 4 persones
    ;; h207: 2 persones
    ;; h208: 4 persones
    ;; h209: 3 persones
    ;; h210: 2 persones
    ;; h211: 1 persones
    ;; h212: 2 persones
    ;; h213: 1 persones
    ;; h214: 1 persones
    ;; h215: 3 persones
    ;; h216: 4 persones
    ;; h217: 3 persones
    ;; h218: 2 persones
    ;; h219: 1 persones
    ;; h220: 2 persones
    ;; h221: 2 persones
    ;; h222: 4 persones
    ;; h223: 3 persones
    ;; h224: 4 persones
    ;; h225: 3 persones
    ;; h226: 3 persones
    ;; h227: 3 persones
    ;; h228: 2 persones
    ;; h229: 4 persones
    ;; h230: 1 persones
    ;; h231: 2 persones
    ;; h232: 3 persones
    ;; h233: 1 persones
    ;; h234: 4 persones
    ;; h235: 2 persones
    ;; h236: 3 persones
    ;; h237: 2 persones
    ;; h238: 3 persones
    ;; h239: 3 persones
    ;; h240: 4 persones
    ;; h241: 4 persones
    ;; h242: 1 persones
    ;; h243: 1 persones
    ;; h244: 4 persones
    ;; h245: 4 persones
    ;; h246: 4 persones
    ;; h247: 3 persones
    ;; h248: 4 persones
    ;; h249: 1 persones
    ;; h250: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h39)
    (compatible r1 h63)
    (compatible r1 h74)
    (compatible r1 h77)
    (compatible r1 h81)
    (compatible r1 h84)
    (compatible r1 h99)
    (compatible r1 h104)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h115)
    (compatible r1 h125)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h144)
    (compatible r1 h148)
    (compatible r1 h150)
    (compatible r1 h153)
    (compatible r1 h156)
    (compatible r1 h161)
    (compatible r1 h174)
    (compatible r1 h178)
    (compatible r1 h180)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h194)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h204)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h216)
    (compatible r1 h222)
    (compatible r1 h224)
    (compatible r1 h229)
    (compatible r1 h234)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h244)
    (compatible r1 h245)
    (compatible r1 h246)
    (compatible r1 h248)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h39)
    (compatible r2 h63)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h99)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h115)
    (compatible r2 h125)
    (compatible r2 h128)
    (compatible r2 h132)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h144)
    (compatible r2 h148)
    (compatible r2 h150)
    (compatible r2 h153)
    (compatible r2 h156)
    (compatible r2 h161)
    (compatible r2 h174)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h194)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h204)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h216)
    (compatible r2 h222)
    (compatible r2 h224)
    (compatible r2 h229)
    (compatible r2 h234)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h244)
    (compatible r2 h245)
    (compatible r2 h246)
    (compatible r2 h248)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h4)
    (compatible r3 h8)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h34)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h48)
    (compatible r3 h52)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h63)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h99)
    (compatible r3 h101)
    (compatible r3 h104)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h113)
    (compatible r3 h115)
    (compatible r3 h118)
    (compatible r3 h122)
    (compatible r3 h123)
    (compatible r3 h125)
    (compatible r3 h128)
    (compatible r3 h130)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h135)
    (compatible r3 h136)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h148)
    (compatible r3 h150)
    (compatible r3 h153)
    (compatible r3 h156)
    (compatible r3 h157)
    (compatible r3 h158)
    (compatible r3 h159)
    (compatible r3 h161)
    (compatible r3 h162)
    (compatible r3 h163)
    (compatible r3 h164)
    (compatible r3 h167)
    (compatible r3 h172)
    (compatible r3 h174)
    (compatible r3 h178)
    (compatible r3 h180)
    (compatible r3 h181)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h185)
    (compatible r3 h186)
    (compatible r3 h188)
    (compatible r3 h189)
    (compatible r3 h190)
    (compatible r3 h192)
    (compatible r3 h194)
    (compatible r3 h196)
    (compatible r3 h197)
    (compatible r3 h198)
    (compatible r3 h200)
    (compatible r3 h201)
    (compatible r3 h202)
    (compatible r3 h203)
    (compatible r3 h204)
    (compatible r3 h205)
    (compatible r3 h206)
    (compatible r3 h208)
    (compatible r3 h209)
    (compatible r3 h215)
    (compatible r3 h216)
    (compatible r3 h217)
    (compatible r3 h222)
    (compatible r3 h223)
    (compatible r3 h224)
    (compatible r3 h225)
    (compatible r3 h226)
    (compatible r3 h227)
    (compatible r3 h229)
    (compatible r3 h232)
    (compatible r3 h234)
    (compatible r3 h236)
    (compatible r3 h238)
    (compatible r3 h239)
    (compatible r3 h240)
    (compatible r3 h241)
    (compatible r3 h244)
    (compatible r3 h245)
    (compatible r3 h246)
    (compatible r3 h247)
    (compatible r3 h248)
    (compatible r3 h250)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h4)
    (compatible r4 h8)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h34)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h48)
    (compatible r4 h52)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h63)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h99)
    (compatible r4 h101)
    (compatible r4 h104)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h113)
    (compatible r4 h115)
    (compatible r4 h118)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h125)
    (compatible r4 h128)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h135)
    (compatible r4 h136)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h148)
    (compatible r4 h150)
    (compatible r4 h153)
    (compatible r4 h156)
    (compatible r4 h157)
    (compatible r4 h158)
    (compatible r4 h159)
    (compatible r4 h161)
    (compatible r4 h162)
    (compatible r4 h163)
    (compatible r4 h164)
    (compatible r4 h167)
    (compatible r4 h172)
    (compatible r4 h174)
    (compatible r4 h178)
    (compatible r4 h180)
    (compatible r4 h181)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h185)
    (compatible r4 h186)
    (compatible r4 h188)
    (compatible r4 h189)
    (compatible r4 h190)
    (compatible r4 h192)
    (compatible r4 h194)
    (compatible r4 h196)
    (compatible r4 h197)
    (compatible r4 h198)
    (compatible r4 h200)
    (compatible r4 h201)
    (compatible r4 h202)
    (compatible r4 h203)
    (compatible r4 h204)
    (compatible r4 h205)
    (compatible r4 h206)
    (compatible r4 h208)
    (compatible r4 h209)
    (compatible r4 h215)
    (compatible r4 h216)
    (compatible r4 h217)
    (compatible r4 h222)
    (compatible r4 h223)
    (compatible r4 h224)
    (compatible r4 h225)
    (compatible r4 h226)
    (compatible r4 h227)
    (compatible r4 h229)
    (compatible r4 h232)
    (compatible r4 h234)
    (compatible r4 h236)
    (compatible r4 h238)
    (compatible r4 h239)
    (compatible r4 h240)
    (compatible r4 h241)
    (compatible r4 h244)
    (compatible r4 h245)
    (compatible r4 h246)
    (compatible r4 h247)
    (compatible r4 h248)
    (compatible r4 h250)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h4)
    (compatible r5 h8)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h34)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h48)
    (compatible r5 h52)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h63)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h83)
    (compatible r5 h84)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h99)
    (compatible r5 h101)
    (compatible r5 h104)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h113)
    (compatible r5 h115)
    (compatible r5 h118)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h125)
    (compatible r5 h128)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h148)
    (compatible r5 h150)
    (compatible r5 h153)
    (compatible r5 h156)
    (compatible r5 h157)
    (compatible r5 h158)
    (compatible r5 h159)
    (compatible r5 h161)
    (compatible r5 h162)
    (compatible r5 h163)
    (compatible r5 h164)
    (compatible r5 h167)
    (compatible r5 h172)
    (compatible r5 h174)
    (compatible r5 h178)
    (compatible r5 h180)
    (compatible r5 h181)
    (compatible r5 h183)
    (compatible r5 h184)
    (compatible r5 h185)
    (compatible r5 h186)
    (compatible r5 h188)
    (compatible r5 h189)
    (compatible r5 h190)
    (compatible r5 h192)
    (compatible r5 h194)
    (compatible r5 h196)
    (compatible r5 h197)
    (compatible r5 h198)
    (compatible r5 h200)
    (compatible r5 h201)
    (compatible r5 h202)
    (compatible r5 h203)
    (compatible r5 h204)
    (compatible r5 h205)
    (compatible r5 h206)
    (compatible r5 h208)
    (compatible r5 h209)
    (compatible r5 h215)
    (compatible r5 h216)
    (compatible r5 h217)
    (compatible r5 h222)
    (compatible r5 h223)
    (compatible r5 h224)
    (compatible r5 h225)
    (compatible r5 h226)
    (compatible r5 h227)
    (compatible r5 h229)
    (compatible r5 h232)
    (compatible r5 h234)
    (compatible r5 h236)
    (compatible r5 h238)
    (compatible r5 h239)
    (compatible r5 h240)
    (compatible r5 h241)
    (compatible r5 h244)
    (compatible r5 h245)
    (compatible r5 h246)
    (compatible r5 h247)
    (compatible r5 h248)
    (compatible r5 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d1)
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
