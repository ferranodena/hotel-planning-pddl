(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 1 persones
    ;; h5: 4 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 2 persones
    ;; h9: 1 persones
    ;; h10: 2 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 4 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 3 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 3 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 4 persones
    ;; h31: 2 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 4 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 4 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 2 persones
    ;; h46: 1 persones
    ;; h47: 4 persones
    ;; h48: 2 persones
    ;; h49: 1 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 2 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 3 persones
    ;; h59: 3 persones
    ;; h60: 3 persones
    ;; h61: 1 persones
    ;; h62: 2 persones
    ;; h63: 4 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 3 persones
    ;; h70: 2 persones
    ;; h71: 1 persones
    ;; h72: 1 persones
    ;; h73: 4 persones
    ;; h74: 1 persones
    ;; h75: 3 persones
    ;; h76: 2 persones
    ;; h77: 2 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 2 persones
    ;; h83: 4 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 1 persones
    ;; h87: 4 persones
    ;; h88: 2 persones
    ;; h89: 1 persones
    ;; h90: 4 persones
    ;; h91: 4 persones
    ;; h92: 3 persones
    ;; h93: 3 persones
    ;; h94: 4 persones
    ;; h95: 3 persones
    ;; h96: 4 persones
    ;; h97: 4 persones
    ;; h98: 1 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 4 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 2 persones
    ;; h109: 4 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 2 persones
    ;; h113: 3 persones
    ;; h114: 1 persones
    ;; h115: 2 persones
    ;; h116: 4 persones
    ;; h117: 4 persones
    ;; h118: 4 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 4 persones
    ;; h127: 3 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 2 persones
    ;; h132: 1 persones
    ;; h133: 2 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 3 persones
    ;; h137: 3 persones
    ;; h138: 3 persones
    ;; h139: 4 persones
    ;; h140: 1 persones
    ;; h141: 2 persones
    ;; h142: 3 persones
    ;; h143: 1 persones
    ;; h144: 1 persones
    ;; h145: 4 persones
    ;; h146: 2 persones
    ;; h147: 3 persones
    ;; h148: 2 persones
    ;; h149: 4 persones
    ;; h150: 3 persones
    ;; h151: 4 persones
    ;; h152: 4 persones
    ;; h153: 1 persones
    ;; h154: 2 persones
    ;; h155: 3 persones
    ;; h156: 2 persones
    ;; h157: 1 persones
    ;; h158: 4 persones
    ;; h159: 1 persones
    ;; h160: 4 persones
    ;; h161: 3 persones
    ;; h162: 3 persones
    ;; h163: 2 persones
    ;; h164: 2 persones
    ;; h165: 4 persones
    ;; h166: 2 persones
    ;; h167: 1 persones
    ;; h168: 2 persones
    ;; h169: 4 persones
    ;; h170: 4 persones
    ;; h171: 4 persones
    ;; h172: 2 persones
    ;; h173: 1 persones
    ;; h174: 3 persones
    ;; h175: 3 persones
    ;; h176: 1 persones
    ;; h177: 2 persones
    ;; h178: 4 persones
    ;; h179: 2 persones
    ;; h180: 2 persones
    ;; h181: 3 persones
    ;; h182: 2 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 2 persones
    ;; h186: 3 persones
    ;; h187: 3 persones
    ;; h188: 1 persones
    ;; h189: 2 persones
    ;; h190: 1 persones
    ;; h191: 3 persones
    ;; h192: 4 persones
    ;; h193: 3 persones
    ;; h194: 3 persones
    ;; h195: 4 persones
    ;; h196: 4 persones
    ;; h197: 1 persones
    ;; h198: 2 persones
    ;; h199: 1 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h3)
    (compatible r1 h5)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h47)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h63)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h73)
    (compatible r1 h75)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h87)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h130)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h142)
    (compatible r1 h145)
    (compatible r1 h147)
    (compatible r1 h149)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h152)
    (compatible r1 h155)
    (compatible r1 h158)
    (compatible r1 h160)
    (compatible r1 h161)
    (compatible r1 h162)
    (compatible r1 h165)
    (compatible r1 h169)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h174)
    (compatible r1 h175)
    (compatible r1 h178)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h186)
    (compatible r1 h187)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h194)
    (compatible r1 h195)
    (compatible r1 h196)
    (compatible r1 h200)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h1)
    (compatible r2 h3)
    (compatible r2 h5)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h25)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h34)
    (compatible r2 h36)
    (compatible r2 h39)
    (compatible r2 h43)
    (compatible r2 h47)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h73)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h87)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h107)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h123)
    (compatible r2 h126)
    (compatible r2 h130)
    (compatible r2 h139)
    (compatible r2 h145)
    (compatible r2 h149)
    (compatible r2 h151)
    (compatible r2 h152)
    (compatible r2 h158)
    (compatible r2 h160)
    (compatible r2 h165)
    (compatible r2 h169)
    (compatible r2 h170)
    (compatible r2 h171)
    (compatible r2 h178)
    (compatible r2 h183)
    (compatible r2 h184)
    (compatible r2 h192)
    (compatible r2 h195)
    (compatible r2 h196)
    (compatible r2 h200)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h1)
    (compatible r3 h3)
    (compatible r3 h5)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h16)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h25)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h34)
    (compatible r3 h36)
    (compatible r3 h39)
    (compatible r3 h43)
    (compatible r3 h47)
    (compatible r3 h63)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h73)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h83)
    (compatible r3 h87)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h94)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h102)
    (compatible r3 h105)
    (compatible r3 h107)
    (compatible r3 h109)
    (compatible r3 h111)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h123)
    (compatible r3 h126)
    (compatible r3 h130)
    (compatible r3 h139)
    (compatible r3 h145)
    (compatible r3 h149)
    (compatible r3 h151)
    (compatible r3 h152)
    (compatible r3 h158)
    (compatible r3 h160)
    (compatible r3 h165)
    (compatible r3 h169)
    (compatible r3 h170)
    (compatible r3 h171)
    (compatible r3 h178)
    (compatible r3 h183)
    (compatible r3 h184)
    (compatible r3 h192)
    (compatible r3 h195)
    (compatible r3 h196)
    (compatible r3 h200)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h1)
    (compatible r4 h3)
    (compatible r4 h5)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h25)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h34)
    (compatible r4 h36)
    (compatible r4 h39)
    (compatible r4 h43)
    (compatible r4 h47)
    (compatible r4 h63)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h73)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h83)
    (compatible r4 h87)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h94)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h102)
    (compatible r4 h105)
    (compatible r4 h107)
    (compatible r4 h109)
    (compatible r4 h111)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h123)
    (compatible r4 h126)
    (compatible r4 h130)
    (compatible r4 h139)
    (compatible r4 h145)
    (compatible r4 h149)
    (compatible r4 h151)
    (compatible r4 h152)
    (compatible r4 h158)
    (compatible r4 h160)
    (compatible r4 h165)
    (compatible r4 h169)
    (compatible r4 h170)
    (compatible r4 h171)
    (compatible r4 h178)
    (compatible r4 h183)
    (compatible r4 h184)
    (compatible r4 h192)
    (compatible r4 h195)
    (compatible r4 h196)
    (compatible r4 h200)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h5)
    (compatible r5 h8)
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
    (compatible r5 h33)
    (compatible r5 h34)
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
    (compatible r5 h48)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h73)
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
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h90)
    (compatible r5 h91)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
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
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)
    (compatible r5 h151)
    (compatible r5 h152)
    (compatible r5 h154)
    (compatible r5 h155)
    (compatible r5 h156)
    (compatible r5 h158)
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
    (compatible r5 h174)
    (compatible r5 h175)
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
    (compatible r5 h189)
    (compatible r5 h191)
    (compatible r5 h192)
    (compatible r5 h193)
    (compatible r5 h194)
    (compatible r5 h195)
    (compatible r5 h196)
    (compatible r5 h198)
    (compatible r5 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r2 d3)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
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
