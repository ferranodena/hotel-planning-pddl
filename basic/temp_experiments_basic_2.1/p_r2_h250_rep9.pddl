(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 h201 h202 h203 h204 h205 h206 h207 h208 h209 h210 h211 h212 h213 h214 h215 h216 h217 h218 h219 h220 h221 h222 h223 h224 h225 h226 h227 h228 h229 h230 h231 h232 h233 h234 h235 h236 h237 h238 h239 h240 h241 h242 h243 h244 h245 h246 h247 h248 h249 h250 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones
    ;; h3: 3 persones
    ;; h4: 3 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 3 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 4 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 2 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 3 persones
    ;; h26: 4 persones
    ;; h27: 3 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 1 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 4 persones
    ;; h43: 1 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 1 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 4 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 3 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 2 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 3 persones
    ;; h74: 4 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 1 persones
    ;; h85: 2 persones
    ;; h86: 1 persones
    ;; h87: 3 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 1 persones
    ;; h91: 2 persones
    ;; h92: 4 persones
    ;; h93: 4 persones
    ;; h94: 1 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 2 persones
    ;; h100: 1 persones
    ;; h101: 1 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 2 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 3 persones
    ;; h118: 4 persones
    ;; h119: 1 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 1 persones
    ;; h123: 4 persones
    ;; h124: 4 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 4 persones
    ;; h128: 2 persones
    ;; h129: 3 persones
    ;; h130: 2 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 1 persones
    ;; h134: 1 persones
    ;; h135: 1 persones
    ;; h136: 4 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 2 persones
    ;; h143: 4 persones
    ;; h144: 2 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 2 persones
    ;; h151: 2 persones
    ;; h152: 4 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 4 persones
    ;; h156: 2 persones
    ;; h157: 2 persones
    ;; h158: 2 persones
    ;; h159: 4 persones
    ;; h160: 1 persones
    ;; h161: 1 persones
    ;; h162: 2 persones
    ;; h163: 2 persones
    ;; h164: 3 persones
    ;; h165: 2 persones
    ;; h166: 2 persones
    ;; h167: 2 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 4 persones
    ;; h171: 1 persones
    ;; h172: 2 persones
    ;; h173: 2 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 3 persones
    ;; h177: 4 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 1 persones
    ;; h181: 1 persones
    ;; h182: 2 persones
    ;; h183: 2 persones
    ;; h184: 1 persones
    ;; h185: 3 persones
    ;; h186: 4 persones
    ;; h187: 4 persones
    ;; h188: 3 persones
    ;; h189: 2 persones
    ;; h190: 3 persones
    ;; h191: 4 persones
    ;; h192: 1 persones
    ;; h193: 2 persones
    ;; h194: 1 persones
    ;; h195: 1 persones
    ;; h196: 2 persones
    ;; h197: 4 persones
    ;; h198: 2 persones
    ;; h199: 4 persones
    ;; h200: 1 persones
    ;; h201: 3 persones
    ;; h202: 2 persones
    ;; h203: 1 persones
    ;; h204: 3 persones
    ;; h205: 2 persones
    ;; h206: 2 persones
    ;; h207: 3 persones
    ;; h208: 3 persones
    ;; h209: 4 persones
    ;; h210: 2 persones
    ;; h211: 2 persones
    ;; h212: 3 persones
    ;; h213: 3 persones
    ;; h214: 1 persones
    ;; h215: 2 persones
    ;; h216: 4 persones
    ;; h217: 4 persones
    ;; h218: 2 persones
    ;; h219: 2 persones
    ;; h220: 1 persones
    ;; h221: 4 persones
    ;; h222: 4 persones
    ;; h223: 4 persones
    ;; h224: 2 persones
    ;; h225: 4 persones
    ;; h226: 1 persones
    ;; h227: 1 persones
    ;; h228: 1 persones
    ;; h229: 4 persones
    ;; h230: 4 persones
    ;; h231: 1 persones
    ;; h232: 2 persones
    ;; h233: 1 persones
    ;; h234: 3 persones
    ;; h235: 4 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 2 persones
    ;; h239: 4 persones
    ;; h240: 2 persones
    ;; h241: 4 persones
    ;; h242: 1 persones
    ;; h243: 1 persones
    ;; h244: 3 persones
    ;; h245: 1 persones
    ;; h246: 2 persones
    ;; h247: 3 persones
    ;; h248: 3 persones
    ;; h249: 3 persones
    ;; h250: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h6)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h16)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h32)
    (compatible r1 h40)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h52)
    (compatible r1 h55)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h67)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h111)
    (compatible r1 h118)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h127)
    (compatible r1 h136)
    (compatible r1 h139)
    (compatible r1 h143)
    (compatible r1 h152)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h159)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h179)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h191)
    (compatible r1 h197)
    (compatible r1 h199)
    (compatible r1 h209)
    (compatible r1 h216)
    (compatible r1 h217)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h223)
    (compatible r1 h225)
    (compatible r1 h229)
    (compatible r1 h230)
    (compatible r1 h235)
    (compatible r1 h239)
    (compatible r1 h241)
    (compatible r1 h250)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h16)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h44)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h52)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h87)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h129)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h143)
    (compatible r2 h146)
    (compatible r2 h152)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h159)
    (compatible r2 h164)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h176)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h197)
    (compatible r2 h199)
    (compatible r2 h201)
    (compatible r2 h204)
    (compatible r2 h207)
    (compatible r2 h208)
    (compatible r2 h209)
    (compatible r2 h212)
    (compatible r2 h213)
    (compatible r2 h216)
    (compatible r2 h217)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h223)
    (compatible r2 h225)
    (compatible r2 h229)
    (compatible r2 h230)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h239)
    (compatible r2 h241)
    (compatible r2 h244)
    (compatible r2 h247)
    (compatible r2 h248)
    (compatible r2 h249)
    (compatible r2 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
    (dies-reserva r2 d10)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
