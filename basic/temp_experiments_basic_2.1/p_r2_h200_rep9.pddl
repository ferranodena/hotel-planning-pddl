(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 1 persones
    ;; h5: 1 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 2 persones
    ;; h9: 4 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 1 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 4 persones
    ;; h17: 4 persones
    ;; h18: 1 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 3 persones
    ;; h26: 3 persones
    ;; h27: 1 persones
    ;; h28: 4 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 2 persones
    ;; h35: 2 persones
    ;; h36: 3 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 3 persones
    ;; h40: 2 persones
    ;; h41: 3 persones
    ;; h42: 3 persones
    ;; h43: 1 persones
    ;; h44: 2 persones
    ;; h45: 2 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 4 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 4 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 2 persones
    ;; h58: 4 persones
    ;; h59: 1 persones
    ;; h60: 1 persones
    ;; h61: 2 persones
    ;; h62: 2 persones
    ;; h63: 2 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 1 persones
    ;; h74: 3 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 2 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 3 persones
    ;; h81: 2 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 1 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 3 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 1 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 1 persones
    ;; h95: 4 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 4 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 4 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 4 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 3 persones
    ;; h111: 3 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 3 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 3 persones
    ;; h118: 4 persones
    ;; h119: 2 persones
    ;; h120: 2 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 2 persones
    ;; h124: 3 persones
    ;; h125: 3 persones
    ;; h126: 4 persones
    ;; h127: 2 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 2 persones
    ;; h140: 4 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 1 persones
    ;; h147: 4 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 1 persones
    ;; h151: 1 persones
    ;; h152: 3 persones
    ;; h153: 3 persones
    ;; h154: 2 persones
    ;; h155: 4 persones
    ;; h156: 1 persones
    ;; h157: 2 persones
    ;; h158: 1 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 2 persones
    ;; h162: 1 persones
    ;; h163: 4 persones
    ;; h164: 1 persones
    ;; h165: 4 persones
    ;; h166: 3 persones
    ;; h167: 2 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 2 persones
    ;; h172: 3 persones
    ;; h173: 2 persones
    ;; h174: 1 persones
    ;; h175: 1 persones
    ;; h176: 3 persones
    ;; h177: 1 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 3 persones
    ;; h181: 3 persones
    ;; h182: 3 persones
    ;; h183: 2 persones
    ;; h184: 2 persones
    ;; h185: 4 persones
    ;; h186: 3 persones
    ;; h187: 3 persones
    ;; h188: 3 persones
    ;; h189: 4 persones
    ;; h190: 2 persones
    ;; h191: 3 persones
    ;; h192: 4 persones
    ;; h193: 1 persones
    ;; h194: 4 persones
    ;; h195: 4 persones
    ;; h196: 2 persones
    ;; h197: 4 persones
    ;; h198: 2 persones
    ;; h199: 1 persones
    ;; h200: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
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
    (compatible r1 h142)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h157)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h163)
    (compatible r1 h165)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h176)
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
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h82)
    (compatible r2 h85)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h110)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h133)
    (compatible r2 h136)
    (compatible r2 h140)
    (compatible r2 h145)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h155)
    (compatible r2 h163)
    (compatible r2 h165)
    (compatible r2 h166)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h172)
    (compatible r2 h176)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h182)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h187)
    (compatible r2 h188)
    (compatible r2 h189)
    (compatible r2 h191)
    (compatible r2 h192)
    (compatible r2 h194)
    (compatible r2 h195)
    (compatible r2 h197)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
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
