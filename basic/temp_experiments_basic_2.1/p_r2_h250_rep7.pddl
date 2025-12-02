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
    ;; h2: 2 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 4 persones
    ;; h22: 3 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 2 persones
    ;; h27: 2 persones
    ;; h28: 3 persones
    ;; h29: 3 persones
    ;; h30: 1 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 1 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 3 persones
    ;; h52: 4 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 3 persones
    ;; h62: 2 persones
    ;; h63: 2 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 3 persones
    ;; h69: 3 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 1 persones
    ;; h73: 3 persones
    ;; h74: 1 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 4 persones
    ;; h78: 4 persones
    ;; h79: 4 persones
    ;; h80: 3 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 3 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 1 persones
    ;; h91: 3 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 4 persones
    ;; h99: 3 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 2 persones
    ;; h105: 1 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 3 persones
    ;; h117: 2 persones
    ;; h118: 3 persones
    ;; h119: 2 persones
    ;; h120: 4 persones
    ;; h121: 3 persones
    ;; h122: 2 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 4 persones
    ;; h126: 2 persones
    ;; h127: 4 persones
    ;; h128: 4 persones
    ;; h129: 1 persones
    ;; h130: 1 persones
    ;; h131: 4 persones
    ;; h132: 4 persones
    ;; h133: 4 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 3 persones
    ;; h137: 1 persones
    ;; h138: 1 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 3 persones
    ;; h143: 2 persones
    ;; h144: 2 persones
    ;; h145: 3 persones
    ;; h146: 2 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 4 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 4 persones
    ;; h154: 2 persones
    ;; h155: 3 persones
    ;; h156: 4 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 2 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 3 persones
    ;; h167: 4 persones
    ;; h168: 2 persones
    ;; h169: 2 persones
    ;; h170: 4 persones
    ;; h171: 2 persones
    ;; h172: 3 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 1 persones
    ;; h177: 2 persones
    ;; h178: 1 persones
    ;; h179: 3 persones
    ;; h180: 4 persones
    ;; h181: 4 persones
    ;; h182: 3 persones
    ;; h183: 4 persones
    ;; h184: 1 persones
    ;; h185: 1 persones
    ;; h186: 1 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 2 persones
    ;; h191: 2 persones
    ;; h192: 1 persones
    ;; h193: 4 persones
    ;; h194: 3 persones
    ;; h195: 2 persones
    ;; h196: 2 persones
    ;; h197: 1 persones
    ;; h198: 1 persones
    ;; h199: 2 persones
    ;; h200: 2 persones
    ;; h201: 4 persones
    ;; h202: 1 persones
    ;; h203: 2 persones
    ;; h204: 1 persones
    ;; h205: 2 persones
    ;; h206: 3 persones
    ;; h207: 2 persones
    ;; h208: 3 persones
    ;; h209: 2 persones
    ;; h210: 4 persones
    ;; h211: 2 persones
    ;; h212: 4 persones
    ;; h213: 1 persones
    ;; h214: 1 persones
    ;; h215: 1 persones
    ;; h216: 3 persones
    ;; h217: 4 persones
    ;; h218: 1 persones
    ;; h219: 1 persones
    ;; h220: 2 persones
    ;; h221: 4 persones
    ;; h222: 4 persones
    ;; h223: 3 persones
    ;; h224: 1 persones
    ;; h225: 4 persones
    ;; h226: 4 persones
    ;; h227: 2 persones
    ;; h228: 2 persones
    ;; h229: 3 persones
    ;; h230: 4 persones
    ;; h231: 2 persones
    ;; h232: 1 persones
    ;; h233: 1 persones
    ;; h234: 4 persones
    ;; h235: 4 persones
    ;; h236: 2 persones
    ;; h237: 2 persones
    ;; h238: 4 persones
    ;; h239: 4 persones
    ;; h240: 1 persones
    ;; h241: 4 persones
    ;; h242: 4 persones
    ;; h243: 3 persones
    ;; h244: 2 persones
    ;; h245: 2 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 2 persones
    ;; h249: 2 persones
    ;; h250: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h1)
    (compatible r1 h7)
    (compatible r1 h11)
    (compatible r1 h16)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h37)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h52)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h81)
    (compatible r1 h84)
    (compatible r1 h85)
    (compatible r1 h88)
    (compatible r1 h98)
    (compatible r1 h100)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h107)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h120)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h150)
    (compatible r1 h153)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h167)
    (compatible r1 h170)
    (compatible r1 h173)
    (compatible r1 h175)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h193)
    (compatible r1 h201)
    (compatible r1 h210)
    (compatible r1 h212)
    (compatible r1 h217)
    (compatible r1 h221)
    (compatible r1 h222)
    (compatible r1 h225)
    (compatible r1 h226)
    (compatible r1 h230)
    (compatible r1 h234)
    (compatible r1 h235)
    (compatible r1 h238)
    (compatible r1 h239)
    (compatible r1 h241)
    (compatible r1 h242)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h7)
    (compatible r2 h11)
    (compatible r2 h16)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h37)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h52)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h67)
    (compatible r2 h70)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h88)
    (compatible r2 h98)
    (compatible r2 h100)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h107)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h120)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h150)
    (compatible r2 h153)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h167)
    (compatible r2 h170)
    (compatible r2 h173)
    (compatible r2 h175)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h193)
    (compatible r2 h201)
    (compatible r2 h210)
    (compatible r2 h212)
    (compatible r2 h217)
    (compatible r2 h221)
    (compatible r2 h222)
    (compatible r2 h225)
    (compatible r2 h226)
    (compatible r2 h230)
    (compatible r2 h234)
    (compatible r2 h235)
    (compatible r2 h238)
    (compatible r2 h239)
    (compatible r2 h241)
    (compatible r2 h242)

    ;; Calendari de reserves
    (dies-reserva r1 d9)
    (dies-reserva r1 d10)
    (dies-reserva r2 d7)
    (dies-reserva r2 d8)
    (dies-reserva r2 d9)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
