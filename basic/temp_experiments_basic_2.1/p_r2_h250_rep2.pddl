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
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 4 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 4 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 1 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 2 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 2 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 4 persones
    ;; h46: 3 persones
    ;; h47: 4 persones
    ;; h48: 4 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 3 persones
    ;; h53: 3 persones
    ;; h54: 1 persones
    ;; h55: 2 persones
    ;; h56: 3 persones
    ;; h57: 1 persones
    ;; h58: 3 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 1 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 3 persones
    ;; h67: 1 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 2 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 1 persones
    ;; h79: 3 persones
    ;; h80: 3 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 4 persones
    ;; h87: 4 persones
    ;; h88: 3 persones
    ;; h89: 3 persones
    ;; h90: 4 persones
    ;; h91: 2 persones
    ;; h92: 2 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 2 persones
    ;; h98: 3 persones
    ;; h99: 2 persones
    ;; h100: 3 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 4 persones
    ;; h104: 2 persones
    ;; h105: 1 persones
    ;; h106: 1 persones
    ;; h107: 2 persones
    ;; h108: 3 persones
    ;; h109: 1 persones
    ;; h110: 4 persones
    ;; h111: 2 persones
    ;; h112: 4 persones
    ;; h113: 4 persones
    ;; h114: 2 persones
    ;; h115: 1 persones
    ;; h116: 3 persones
    ;; h117: 4 persones
    ;; h118: 1 persones
    ;; h119: 3 persones
    ;; h120: 3 persones
    ;; h121: 1 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 4 persones
    ;; h127: 4 persones
    ;; h128: 2 persones
    ;; h129: 4 persones
    ;; h130: 3 persones
    ;; h131: 2 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 4 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 4 persones
    ;; h147: 2 persones
    ;; h148: 1 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 3 persones
    ;; h152: 1 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 1 persones
    ;; h156: 4 persones
    ;; h157: 4 persones
    ;; h158: 2 persones
    ;; h159: 1 persones
    ;; h160: 3 persones
    ;; h161: 3 persones
    ;; h162: 2 persones
    ;; h163: 3 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 4 persones
    ;; h167: 1 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 1 persones
    ;; h172: 4 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 2 persones
    ;; h176: 2 persones
    ;; h177: 2 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 4 persones
    ;; h181: 1 persones
    ;; h182: 4 persones
    ;; h183: 3 persones
    ;; h184: 4 persones
    ;; h185: 3 persones
    ;; h186: 1 persones
    ;; h187: 3 persones
    ;; h188: 4 persones
    ;; h189: 4 persones
    ;; h190: 4 persones
    ;; h191: 1 persones
    ;; h192: 2 persones
    ;; h193: 3 persones
    ;; h194: 1 persones
    ;; h195: 4 persones
    ;; h196: 3 persones
    ;; h197: 2 persones
    ;; h198: 3 persones
    ;; h199: 3 persones
    ;; h200: 4 persones
    ;; h201: 2 persones
    ;; h202: 3 persones
    ;; h203: 3 persones
    ;; h204: 4 persones
    ;; h205: 3 persones
    ;; h206: 2 persones
    ;; h207: 2 persones
    ;; h208: 2 persones
    ;; h209: 2 persones
    ;; h210: 2 persones
    ;; h211: 2 persones
    ;; h212: 4 persones
    ;; h213: 3 persones
    ;; h214: 3 persones
    ;; h215: 2 persones
    ;; h216: 3 persones
    ;; h217: 3 persones
    ;; h218: 4 persones
    ;; h219: 4 persones
    ;; h220: 3 persones
    ;; h221: 2 persones
    ;; h222: 4 persones
    ;; h223: 2 persones
    ;; h224: 3 persones
    ;; h225: 4 persones
    ;; h226: 3 persones
    ;; h227: 2 persones
    ;; h228: 1 persones
    ;; h229: 2 persones
    ;; h230: 4 persones
    ;; h231: 4 persones
    ;; h232: 2 persones
    ;; h233: 4 persones
    ;; h234: 1 persones
    ;; h235: 3 persones
    ;; h236: 1 persones
    ;; h237: 2 persones
    ;; h238: 3 persones
    ;; h239: 1 persones
    ;; h240: 3 persones
    ;; h241: 1 persones
    ;; h242: 4 persones
    ;; h243: 2 persones
    ;; h244: 1 persones
    ;; h245: 1 persones
    ;; h246: 1 persones
    ;; h247: 2 persones
    ;; h248: 2 persones
    ;; h249: 1 persones
    ;; h250: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h10)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h29)
    (compatible r1 h31)
    (compatible r1 h35)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h51)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h71)
    (compatible r1 h77)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h90)
    (compatible r1 h96)
    (compatible r1 h103)
    (compatible r1 h110)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h117)
    (compatible r1 h122)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h129)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h154)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h166)
    (compatible r1 h172)
    (compatible r1 h178)
    (compatible r1 h180)
    (compatible r1 h182)
    (compatible r1 h184)
    (compatible r1 h188)
    (compatible r1 h189)
    (compatible r1 h190)
    (compatible r1 h195)
    (compatible r1 h200)
    (compatible r1 h204)
    (compatible r1 h212)
    (compatible r1 h218)
    (compatible r1 h219)
    (compatible r1 h222)
    (compatible r1 h225)
    (compatible r1 h230)
    (compatible r1 h231)
    (compatible r1 h233)
    (compatible r1 h242)
    (compatible r1 h250)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h10)
    (compatible r2 h18)
    (compatible r2 h20)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h35)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h51)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h71)
    (compatible r2 h77)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h90)
    (compatible r2 h96)
    (compatible r2 h103)
    (compatible r2 h110)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h117)
    (compatible r2 h122)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h129)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h154)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h166)
    (compatible r2 h172)
    (compatible r2 h178)
    (compatible r2 h180)
    (compatible r2 h182)
    (compatible r2 h184)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h190)
    (compatible r2 h195)
    (compatible r2 h200)
    (compatible r2 h204)
    (compatible r2 h212)
    (compatible r2 h218)
    (compatible r2 h219)
    (compatible r2 h222)
    (compatible r2 h225)
    (compatible r2 h230)
    (compatible r2 h231)
    (compatible r2 h233)
    (compatible r2 h242)
    (compatible r2 h250)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
