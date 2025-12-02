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
    ;; h2: 1 persones
    ;; h3: 4 persones
    ;; h4: 3 persones
    ;; h5: 3 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 1 persones
    ;; h11: 3 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 4 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 2 persones
    ;; h28: 4 persones
    ;; h29: 4 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 3 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 2 persones
    ;; h41: 2 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 3 persones
    ;; h52: 3 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 4 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 3 persones
    ;; h65: 4 persones
    ;; h66: 2 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 4 persones
    ;; h72: 4 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 3 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 1 persones
    ;; h82: 3 persones
    ;; h83: 4 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 4 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 4 persones
    ;; h101: 4 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 3 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 3 persones
    ;; h111: 2 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 4 persones
    ;; h119: 4 persones
    ;; h120: 2 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 2 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 3 persones
    ;; h127: 4 persones
    ;; h128: 4 persones
    ;; h129: 4 persones
    ;; h130: 2 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 2 persones
    ;; h143: 2 persones
    ;; h144: 4 persones
    ;; h145: 3 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 2 persones
    ;; h153: 2 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 2 persones
    ;; h157: 4 persones
    ;; h158: 1 persones
    ;; h159: 4 persones
    ;; h160: 3 persones
    ;; h161: 4 persones
    ;; h162: 2 persones
    ;; h163: 4 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 1 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 2 persones
    ;; h171: 2 persones
    ;; h172: 2 persones
    ;; h173: 3 persones
    ;; h174: 1 persones
    ;; h175: 1 persones
    ;; h176: 4 persones
    ;; h177: 4 persones
    ;; h178: 3 persones
    ;; h179: 4 persones
    ;; h180: 4 persones
    ;; h181: 2 persones
    ;; h182: 1 persones
    ;; h183: 2 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 2 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 4 persones
    ;; h190: 2 persones
    ;; h191: 2 persones
    ;; h192: 3 persones
    ;; h193: 2 persones
    ;; h194: 4 persones
    ;; h195: 1 persones
    ;; h196: 1 persones
    ;; h197: 2 persones
    ;; h198: 2 persones
    ;; h199: 2 persones
    ;; h200: 1 persones
    ;; h201: 1 persones
    ;; h202: 2 persones
    ;; h203: 1 persones
    ;; h204: 1 persones
    ;; h205: 3 persones
    ;; h206: 4 persones
    ;; h207: 2 persones
    ;; h208: 3 persones
    ;; h209: 1 persones
    ;; h210: 3 persones
    ;; h211: 4 persones
    ;; h212: 3 persones
    ;; h213: 2 persones
    ;; h214: 2 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 3 persones
    ;; h218: 3 persones
    ;; h219: 2 persones
    ;; h220: 2 persones
    ;; h221: 3 persones
    ;; h222: 2 persones
    ;; h223: 1 persones
    ;; h224: 2 persones
    ;; h225: 4 persones
    ;; h226: 1 persones
    ;; h227: 4 persones
    ;; h228: 4 persones
    ;; h229: 1 persones
    ;; h230: 4 persones
    ;; h231: 2 persones
    ;; h232: 4 persones
    ;; h233: 1 persones
    ;; h234: 2 persones
    ;; h235: 1 persones
    ;; h236: 4 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 1 persones
    ;; h240: 3 persones
    ;; h241: 3 persones
    ;; h242: 2 persones
    ;; h243: 2 persones
    ;; h244: 1 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 2 persones
    ;; h249: 1 persones
    ;; h250: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h9)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h21)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h78)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h97)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h110)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h122)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h139)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h151)
    (compatible r1 h154)
    (compatible r1 h157)
    (compatible r1 h159)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h163)
    (compatible r1 h165)
    (compatible r1 h173)
    (compatible r1 h176)
    (compatible r1 h177)
    (compatible r1 h178)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h189)
    (compatible r1 h192)
    (compatible r1 h194)
    (compatible r1 h205)
    (compatible r1 h206)
    (compatible r1 h208)
    (compatible r1 h210)
    (compatible r1 h211)
    (compatible r1 h212)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h218)
    (compatible r1 h221)
    (compatible r1 h225)
    (compatible r1 h227)
    (compatible r1 h228)
    (compatible r1 h230)
    (compatible r1 h232)
    (compatible r1 h236)
    (compatible r1 h238)
    (compatible r1 h240)
    (compatible r1 h241)
    (compatible r1 h250)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h97)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h122)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h139)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h151)
    (compatible r2 h154)
    (compatible r2 h157)
    (compatible r2 h159)
    (compatible r2 h160)
    (compatible r2 h161)
    (compatible r2 h163)
    (compatible r2 h165)
    (compatible r2 h173)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h178)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h189)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h205)
    (compatible r2 h206)
    (compatible r2 h208)
    (compatible r2 h210)
    (compatible r2 h211)
    (compatible r2 h212)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h218)
    (compatible r2 h221)
    (compatible r2 h225)
    (compatible r2 h227)
    (compatible r2 h228)
    (compatible r2 h230)
    (compatible r2 h232)
    (compatible r2 h236)
    (compatible r2 h238)
    (compatible r2 h240)
    (compatible r2 h241)
    (compatible r2 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
