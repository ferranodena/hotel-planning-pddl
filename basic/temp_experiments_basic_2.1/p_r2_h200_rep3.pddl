(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 3 persones
    ;; h3: 2 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 1 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 3 persones
    ;; h24: 4 persones
    ;; h25: 1 persones
    ;; h26: 4 persones
    ;; h27: 4 persones
    ;; h28: 1 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 1 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 1 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 3 persones
    ;; h46: 2 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 3 persones
    ;; h52: 2 persones
    ;; h53: 2 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 1 persones
    ;; h57: 4 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 4 persones
    ;; h67: 4 persones
    ;; h68: 1 persones
    ;; h69: 1 persones
    ;; h70: 3 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 1 persones
    ;; h76: 2 persones
    ;; h77: 4 persones
    ;; h78: 3 persones
    ;; h79: 4 persones
    ;; h80: 4 persones
    ;; h81: 1 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 4 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 3 persones
    ;; h92: 3 persones
    ;; h93: 2 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 3 persones
    ;; h101: 3 persones
    ;; h102: 4 persones
    ;; h103: 4 persones
    ;; h104: 1 persones
    ;; h105: 1 persones
    ;; h106: 4 persones
    ;; h107: 1 persones
    ;; h108: 4 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 4 persones
    ;; h120: 3 persones
    ;; h121: 2 persones
    ;; h122: 3 persones
    ;; h123: 2 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 3 persones
    ;; h127: 4 persones
    ;; h128: 3 persones
    ;; h129: 3 persones
    ;; h130: 4 persones
    ;; h131: 4 persones
    ;; h132: 3 persones
    ;; h133: 2 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 3 persones
    ;; h137: 2 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 1 persones
    ;; h141: 4 persones
    ;; h142: 3 persones
    ;; h143: 3 persones
    ;; h144: 2 persones
    ;; h145: 4 persones
    ;; h146: 1 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 2 persones
    ;; h151: 2 persones
    ;; h152: 2 persones
    ;; h153: 2 persones
    ;; h154: 4 persones
    ;; h155: 4 persones
    ;; h156: 2 persones
    ;; h157: 1 persones
    ;; h158: 1 persones
    ;; h159: 3 persones
    ;; h160: 1 persones
    ;; h161: 2 persones
    ;; h162: 4 persones
    ;; h163: 2 persones
    ;; h164: 1 persones
    ;; h165: 3 persones
    ;; h166: 1 persones
    ;; h167: 3 persones
    ;; h168: 3 persones
    ;; h169: 3 persones
    ;; h170: 2 persones
    ;; h171: 1 persones
    ;; h172: 3 persones
    ;; h173: 4 persones
    ;; h174: 3 persones
    ;; h175: 2 persones
    ;; h176: 1 persones
    ;; h177: 4 persones
    ;; h178: 1 persones
    ;; h179: 1 persones
    ;; h180: 4 persones
    ;; h181: 4 persones
    ;; h182: 1 persones
    ;; h183: 4 persones
    ;; h184: 4 persones
    ;; h185: 1 persones
    ;; h186: 2 persones
    ;; h187: 1 persones
    ;; h188: 1 persones
    ;; h189: 3 persones
    ;; h190: 2 persones
    ;; h191: 3 persones
    ;; h192: 2 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 1 persones
    ;; h196: 1 persones
    ;; h197: 3 persones
    ;; h198: 3 persones
    ;; h199: 2 persones
    ;; h200: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h29)
    (compatible r1 h33)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h82)
    (compatible r1 h85)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h106)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h136)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h145)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h159)
    (compatible r1 h162)
    (compatible r1 h165)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h169)
    (compatible r1 h172)
    (compatible r1 h173)
    (compatible r1 h174)
    (compatible r1 h177)
    (compatible r1 h180)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h184)
    (compatible r1 h189)
    (compatible r1 h191)
    (compatible r1 h193)
    (compatible r1 h197)
    (compatible r1 h198)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h16)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h33)
    (compatible r2 h41)
    (compatible r2 h49)
    (compatible r2 h57)
    (compatible r2 h61)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h71)
    (compatible r2 h77)
    (compatible r2 h79)
    (compatible r2 h80)
    (compatible r2 h85)
    (compatible r2 h88)
    (compatible r2 h96)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h106)
    (compatible r2 h108)
    (compatible r2 h114)
    (compatible r2 h116)
    (compatible r2 h119)
    (compatible r2 h127)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h141)
    (compatible r2 h145)
    (compatible r2 h154)
    (compatible r2 h155)
    (compatible r2 h162)
    (compatible r2 h173)
    (compatible r2 h177)
    (compatible r2 h180)
    (compatible r2 h181)
    (compatible r2 h183)
    (compatible r2 h184)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r2 d6)
    (dies-reserva r2 d7)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
