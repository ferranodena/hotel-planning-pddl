(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 2 persones
    ;; h3: 3 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 2 persones
    ;; h8: 1 persones
    ;; h9: 2 persones
    ;; h10: 1 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 4 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 2 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 1 persones
    ;; h34: 3 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 2 persones
    ;; h44: 4 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 3 persones
    ;; h48: 4 persones
    ;; h49: 3 persones
    ;; h50: 4 persones
    ;; h51: 1 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 4 persones
    ;; h56: 2 persones
    ;; h57: 4 persones
    ;; h58: 1 persones
    ;; h59: 2 persones
    ;; h60: 4 persones
    ;; h61: 1 persones
    ;; h62: 4 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 4 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 3 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 4 persones
    ;; h75: 3 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 4 persones
    ;; h81: 3 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 3 persones
    ;; h92: 2 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 3 persones
    ;; h97: 4 persones
    ;; h98: 1 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 3 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 1 persones
    ;; h107: 3 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 2 persones
    ;; h113: 4 persones
    ;; h114: 3 persones
    ;; h115: 4 persones
    ;; h116: 3 persones
    ;; h117: 4 persones
    ;; h118: 4 persones
    ;; h119: 4 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 3 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 4 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 3 persones
    ;; h137: 4 persones
    ;; h138: 1 persones
    ;; h139: 4 persones
    ;; h140: 3 persones
    ;; h141: 3 persones
    ;; h142: 3 persones
    ;; h143: 2 persones
    ;; h144: 3 persones
    ;; h145: 1 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 1 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 2 persones
    ;; h154: 3 persones
    ;; h155: 4 persones
    ;; h156: 3 persones
    ;; h157: 3 persones
    ;; h158: 2 persones
    ;; h159: 1 persones
    ;; h160: 1 persones
    ;; h161: 4 persones
    ;; h162: 3 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 1 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 1 persones
    ;; h171: 3 persones
    ;; h172: 4 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 4 persones
    ;; h176: 1 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 4 persones
    ;; h180: 2 persones
    ;; h181: 2 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 3 persones
    ;; h185: 3 persones
    ;; h186: 3 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 1 persones
    ;; h190: 2 persones
    ;; h191: 2 persones
    ;; h192: 1 persones
    ;; h193: 4 persones
    ;; h194: 1 persones
    ;; h195: 3 persones
    ;; h196: 4 persones
    ;; h197: 4 persones
    ;; h198: 2 persones
    ;; h199: 2 persones
    ;; h200: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h9)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h59)
    (compatible r1 h60)
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
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h107)
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
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h153)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h157)
    (compatible r1 h158)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h164)
    (compatible r1 h166)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h171)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h177)
    (compatible r1 h179)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h185)
    (compatible r1 h186)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h193)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h197)
    (compatible r1 h198)
    (compatible r1 h199)
    (compatible r1 h200)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h9)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h109)
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
    (compatible r2 h123)
    (compatible r2 h124)
    (compatible r2 h125)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h153)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h156)
    (compatible r2 h157)
    (compatible r2 h158)
    (compatible r2 h161)
    (compatible r2 h162)
    (compatible r2 h164)
    (compatible r2 h166)
    (compatible r2 h167)
    (compatible r2 h168)
    (compatible r2 h169)
    (compatible r2 h171)
    (compatible r2 h172)
    (compatible r2 h173)
    (compatible r2 h174)
    (compatible r2 h175)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h185)
    (compatible r2 h186)
    (compatible r2 h190)
    (compatible r2 h191)
    (compatible r2 h193)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h197)
    (compatible r2 h198)
    (compatible r2 h199)
    (compatible r2 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
