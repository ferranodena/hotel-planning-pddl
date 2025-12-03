(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 1 persones
    ;; h2: 2 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 2 persones
    ;; h7: 4 persones
    ;; h8: 4 persones
    ;; h9: 4 persones
    ;; h10: 4 persones
    ;; h11: 2 persones
    ;; h12: 2 persones
    ;; h13: 1 persones
    ;; h14: 2 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 2 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 4 persones
    ;; h28: 4 persones
    ;; h29: 1 persones
    ;; h30: 1 persones
    ;; h31: 4 persones
    ;; h32: 1 persones
    ;; h33: 2 persones
    ;; h34: 3 persones
    ;; h35: 2 persones
    ;; h36: 1 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 4 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 2 persones
    ;; h47: 4 persones
    ;; h48: 2 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 4 persones
    ;; h53: 4 persones
    ;; h54: 4 persones
    ;; h55: 2 persones
    ;; h56: 4 persones
    ;; h57: 3 persones
    ;; h58: 2 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 3 persones
    ;; h63: 1 persones
    ;; h64: 2 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 2 persones
    ;; h73: 4 persones
    ;; h74: 3 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 2 persones
    ;; h78: 4 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 1 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 2 persones
    ;; h90: 2 persones
    ;; h91: 4 persones
    ;; h92: 1 persones
    ;; h93: 3 persones
    ;; h94: 2 persones
    ;; h95: 4 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 2 persones
    ;; h101: 1 persones
    ;; h102: 1 persones
    ;; h103: 1 persones
    ;; h104: 4 persones
    ;; h105: 4 persones
    ;; h106: 3 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 4 persones
    ;; h110: 2 persones
    ;; h111: 4 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 2 persones
    ;; h116: 3 persones
    ;; h117: 3 persones
    ;; h118: 1 persones
    ;; h119: 2 persones
    ;; h120: 3 persones
    ;; h121: 3 persones
    ;; h122: 4 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 2 persones
    ;; h127: 1 persones
    ;; h128: 3 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 3 persones
    ;; h133: 3 persones
    ;; h134: 1 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 1 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 1 persones
    ;; h144: 2 persones
    ;; h145: 2 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 4 persones

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
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h15)
    (compatible r2 h19)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h47)
    (compatible r2 h49)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h60)
    (compatible r2 h62)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h82)
    (compatible r2 h84)
    (compatible r2 h88)
    (compatible r2 h91)
    (compatible r2 h93)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h112)
    (compatible r2 h113)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h123)
    (compatible r2 h125)
    (compatible r2 h128)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h150)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h15)
    (compatible r3 h22)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h31)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h41)
    (compatible r3 h43)
    (compatible r3 h47)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h56)
    (compatible r3 h69)
    (compatible r3 h73)
    (compatible r3 h76)
    (compatible r3 h78)
    (compatible r3 h82)
    (compatible r3 h88)
    (compatible r3 h91)
    (compatible r3 h95)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h109)
    (compatible r3 h111)
    (compatible r3 h113)
    (compatible r3 h122)
    (compatible r3 h136)
    (compatible r3 h150)

    ;; Reserva r4 (1 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h21)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h26)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h59)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h63)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h85)
    (compatible r4 h86)
    (compatible r4 h87)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h91)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h101)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h112)
    (compatible r4 h113)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h120)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h126)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h133)
    (compatible r4 h134)
    (compatible r4 h135)
    (compatible r4 h136)
    (compatible r4 h137)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h150)

    ;; Reserva r5 (2 pax): 
    (compatible r5 h2)
    (compatible r5 h3)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h14)
    (compatible r5 h15)
    (compatible r5 h17)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h21)
    (compatible r5 h22)
    (compatible r5 h23)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h31)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h64)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h78)
    (compatible r5 h81)
    (compatible r5 h82)
    (compatible r5 h84)
    (compatible r5 h85)
    (compatible r5 h86)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h91)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h98)
    (compatible r5 h100)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h140)
    (compatible r5 h142)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d2)
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
