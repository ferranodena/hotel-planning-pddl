(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 4 persones
    ;; h2: 1 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 2 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 4 persones
    ;; h9: 1 persones
    ;; h10: 1 persones
    ;; h11: 2 persones
    ;; h12: 4 persones
    ;; h13: 2 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 2 persones
    ;; h17: 1 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 3 persones
    ;; h24: 1 persones
    ;; h25: 1 persones
    ;; h26: 3 persones
    ;; h27: 4 persones
    ;; h28: 3 persones
    ;; h29: 2 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 3 persones
    ;; h33: 3 persones
    ;; h34: 2 persones
    ;; h35: 3 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 2 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 1 persones
    ;; h49: 3 persones
    ;; h50: 2 persones
    ;; h51: 4 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 4 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 3 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 4 persones
    ;; h62: 3 persones
    ;; h63: 3 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 2 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 1 persones
    ;; h70: 2 persones
    ;; h71: 3 persones
    ;; h72: 1 persones
    ;; h73: 4 persones
    ;; h74: 1 persones
    ;; h75: 1 persones
    ;; h76: 4 persones
    ;; h77: 1 persones
    ;; h78: 2 persones
    ;; h79: 3 persones
    ;; h80: 1 persones
    ;; h81: 3 persones
    ;; h82: 1 persones
    ;; h83: 3 persones
    ;; h84: 3 persones
    ;; h85: 3 persones
    ;; h86: 2 persones
    ;; h87: 3 persones
    ;; h88: 2 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 1 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 1 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 3 persones
    ;; h101: 4 persones
    ;; h102: 1 persones
    ;; h103: 4 persones
    ;; h104: 1 persones
    ;; h105: 2 persones
    ;; h106: 3 persones
    ;; h107: 4 persones
    ;; h108: 4 persones
    ;; h109: 3 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 3 persones
    ;; h114: 4 persones
    ;; h115: 1 persones
    ;; h116: 1 persones
    ;; h117: 1 persones
    ;; h118: 4 persones
    ;; h119: 3 persones
    ;; h120: 1 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 2 persones
    ;; h124: 3 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 3 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 4 persones
    ;; h131: 1 persones
    ;; h132: 2 persones
    ;; h133: 3 persones
    ;; h134: 3 persones
    ;; h135: 2 persones
    ;; h136: 2 persones
    ;; h137: 1 persones
    ;; h138: 1 persones
    ;; h139: 2 persones
    ;; h140: 2 persones
    ;; h141: 3 persones
    ;; h142: 3 persones
    ;; h143: 1 persones
    ;; h144: 3 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 3 persones
    ;; h148: 1 persones
    ;; h149: 3 persones
    ;; h150: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (1 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h21)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
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
    (compatible r1 h86)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h91)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
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
    (compatible r1 h129)
    (compatible r1 h130)
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
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h146)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h1)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h12)
    (compatible r2 h15)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h23)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h49)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h67)
    (compatible r2 h71)
    (compatible r2 h73)
    (compatible r2 h76)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h87)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h103)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h114)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h127)
    (compatible r2 h130)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h144)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h149)

    ;; Calendari de reserves
    (dies-reserva r1 d7)
    (dies-reserva r1 d8)
    (dies-reserva r1 d9)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
