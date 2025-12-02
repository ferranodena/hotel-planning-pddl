(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 h151 h152 h153 h154 h155 h156 h157 h158 h159 h160 h161 h162 h163 h164 h165 h166 h167 h168 h169 h170 h171 h172 h173 h174 h175 h176 h177 h178 h179 h180 h181 h182 h183 h184 h185 h186 h187 h188 h189 h190 h191 h192 h193 h194 h195 h196 h197 h198 h199 h200 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 2 persones
    ;; h20: 1 persones
    ;; h21: 4 persones
    ;; h22: 2 persones
    ;; h23: 2 persones
    ;; h24: 2 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 2 persones
    ;; h28: 1 persones
    ;; h29: 2 persones
    ;; h30: 1 persones
    ;; h31: 2 persones
    ;; h32: 4 persones
    ;; h33: 1 persones
    ;; h34: 1 persones
    ;; h35: 1 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 3 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 2 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 4 persones
    ;; h45: 3 persones
    ;; h46: 3 persones
    ;; h47: 3 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 3 persones
    ;; h56: 4 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 1 persones
    ;; h61: 4 persones
    ;; h62: 1 persones
    ;; h63: 4 persones
    ;; h64: 3 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 3 persones
    ;; h69: 1 persones
    ;; h70: 1 persones
    ;; h71: 3 persones
    ;; h72: 4 persones
    ;; h73: 3 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 4 persones
    ;; h77: 3 persones
    ;; h78: 3 persones
    ;; h79: 3 persones
    ;; h80: 4 persones
    ;; h81: 2 persones
    ;; h82: 3 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 3 persones
    ;; h89: 2 persones
    ;; h90: 4 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 1 persones
    ;; h99: 2 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 1 persones
    ;; h103: 2 persones
    ;; h104: 2 persones
    ;; h105: 1 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 4 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 1 persones
    ;; h118: 1 persones
    ;; h119: 1 persones
    ;; h120: 4 persones
    ;; h121: 1 persones
    ;; h122: 3 persones
    ;; h123: 3 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 2 persones
    ;; h127: 4 persones
    ;; h128: 3 persones
    ;; h129: 4 persones
    ;; h130: 2 persones
    ;; h131: 1 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 3 persones
    ;; h135: 1 persones
    ;; h136: 3 persones
    ;; h137: 4 persones
    ;; h138: 1 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 3 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 3 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 4 persones
    ;; h148: 1 persones
    ;; h149: 2 persones
    ;; h150: 4 persones
    ;; h151: 3 persones
    ;; h152: 2 persones
    ;; h153: 1 persones
    ;; h154: 4 persones
    ;; h155: 3 persones
    ;; h156: 3 persones
    ;; h157: 2 persones
    ;; h158: 4 persones
    ;; h159: 1 persones
    ;; h160: 2 persones
    ;; h161: 1 persones
    ;; h162: 1 persones
    ;; h163: 1 persones
    ;; h164: 3 persones
    ;; h165: 4 persones
    ;; h166: 2 persones
    ;; h167: 3 persones
    ;; h168: 4 persones
    ;; h169: 2 persones
    ;; h170: 3 persones
    ;; h171: 4 persones
    ;; h172: 1 persones
    ;; h173: 1 persones
    ;; h174: 3 persones
    ;; h175: 2 persones
    ;; h176: 2 persones
    ;; h177: 4 persones
    ;; h178: 2 persones
    ;; h179: 4 persones
    ;; h180: 1 persones
    ;; h181: 4 persones
    ;; h182: 2 persones
    ;; h183: 3 persones
    ;; h184: 1 persones
    ;; h185: 2 persones
    ;; h186: 2 persones
    ;; h187: 3 persones
    ;; h188: 4 persones
    ;; h189: 1 persones
    ;; h190: 3 persones
    ;; h191: 4 persones
    ;; h192: 3 persones
    ;; h193: 3 persones
    ;; h194: 2 persones
    ;; h195: 2 persones
    ;; h196: 2 persones
    ;; h197: 4 persones
    ;; h198: 1 persones
    ;; h199: 4 persones
    ;; h200: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h32)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h63)
    (compatible r1 h64)
    (compatible r1 h67)
    (compatible r1 h68)
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
    (compatible r1 h82)
    (compatible r1 h85)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h100)
    (compatible r1 h107)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h115)
    (compatible r1 h120)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h136)
    (compatible r1 h137)
    (compatible r1 h141)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h150)
    (compatible r1 h151)
    (compatible r1 h154)
    (compatible r1 h155)
    (compatible r1 h156)
    (compatible r1 h158)
    (compatible r1 h164)
    (compatible r1 h165)
    (compatible r1 h167)
    (compatible r1 h168)
    (compatible r1 h170)
    (compatible r1 h171)
    (compatible r1 h174)
    (compatible r1 h177)
    (compatible r1 h179)
    (compatible r1 h181)
    (compatible r1 h183)
    (compatible r1 h187)
    (compatible r1 h188)
    (compatible r1 h190)
    (compatible r1 h191)
    (compatible r1 h192)
    (compatible r1 h193)
    (compatible r1 h197)
    (compatible r1 h199)
    (compatible r1 h200)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h2)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h21)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h32)
    (compatible r2 h39)
    (compatible r2 h44)
    (compatible r2 h49)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h72)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h80)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h100)
    (compatible r2 h107)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h120)
    (compatible r2 h127)
    (compatible r2 h129)
    (compatible r2 h132)
    (compatible r2 h137)
    (compatible r2 h147)
    (compatible r2 h150)
    (compatible r2 h154)
    (compatible r2 h158)
    (compatible r2 h165)
    (compatible r2 h168)
    (compatible r2 h171)
    (compatible r2 h177)
    (compatible r2 h179)
    (compatible r2 h181)
    (compatible r2 h188)
    (compatible r2 h191)
    (compatible r2 h197)
    (compatible r2 h199)
    (compatible r2 h200)

    ;; Calendari de reserves
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
