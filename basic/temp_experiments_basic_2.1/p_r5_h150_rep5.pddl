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
    ;; h2: 4 persones
    ;; h3: 2 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 2 persones
    ;; h11: 3 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 4 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 3 persones
    ;; h24: 2 persones
    ;; h25: 2 persones
    ;; h26: 2 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 3 persones
    ;; h32: 1 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 3 persones
    ;; h37: 3 persones
    ;; h38: 4 persones
    ;; h39: 1 persones
    ;; h40: 3 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 3 persones
    ;; h50: 1 persones
    ;; h51: 1 persones
    ;; h52: 1 persones
    ;; h53: 3 persones
    ;; h54: 3 persones
    ;; h55: 4 persones
    ;; h56: 3 persones
    ;; h57: 3 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 3 persones
    ;; h62: 1 persones
    ;; h63: 3 persones
    ;; h64: 2 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 2 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 3 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 2 persones
    ;; h75: 1 persones
    ;; h76: 3 persones
    ;; h77: 2 persones
    ;; h78: 4 persones
    ;; h79: 4 persones
    ;; h80: 2 persones
    ;; h81: 3 persones
    ;; h82: 1 persones
    ;; h83: 2 persones
    ;; h84: 1 persones
    ;; h85: 2 persones
    ;; h86: 1 persones
    ;; h87: 2 persones
    ;; h88: 4 persones
    ;; h89: 1 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 1 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 2 persones
    ;; h99: 4 persones
    ;; h100: 3 persones
    ;; h101: 1 persones
    ;; h102: 1 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 2 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 4 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 3 persones
    ;; h112: 2 persones
    ;; h113: 2 persones
    ;; h114: 2 persones
    ;; h115: 3 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 3 persones
    ;; h119: 3 persones
    ;; h120: 2 persones
    ;; h121: 4 persones
    ;; h122: 2 persones
    ;; h123: 2 persones
    ;; h124: 1 persones
    ;; h125: 1 persones
    ;; h126: 1 persones
    ;; h127: 4 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 2 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 1 persones
    ;; h137: 3 persones
    ;; h138: 3 persones
    ;; h139: 3 persones
    ;; h140: 3 persones
    ;; h141: 4 persones
    ;; h142: 2 persones
    ;; h143: 3 persones
    ;; h144: 4 persones
    ;; h145: 3 persones
    ;; h146: 3 persones
    ;; h147: 2 persones
    ;; h148: 4 persones
    ;; h149: 1 persones
    ;; h150: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
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
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h57)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h61)
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
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h78)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h87)
    (compatible r1 h88)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
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

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h27)
    (compatible r2 h31)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h43)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h49)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h76)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h88)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h96)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h104)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h111)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h148)

    ;; Reserva r3 (1 pax): 
    (compatible r3 h1)
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h5)
    (compatible r3 h6)
    (compatible r3 h7)
    (compatible r3 h8)
    (compatible r3 h9)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h16)
    (compatible r3 h17)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h25)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h28)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h33)
    (compatible r3 h34)
    (compatible r3 h35)
    (compatible r3 h36)
    (compatible r3 h37)
    (compatible r3 h38)
    (compatible r3 h39)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h47)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h53)
    (compatible r3 h54)
    (compatible r3 h55)
    (compatible r3 h56)
    (compatible r3 h57)
    (compatible r3 h58)
    (compatible r3 h59)
    (compatible r3 h60)
    (compatible r3 h61)
    (compatible r3 h62)
    (compatible r3 h63)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h66)
    (compatible r3 h67)
    (compatible r3 h68)
    (compatible r3 h69)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h74)
    (compatible r3 h75)
    (compatible r3 h76)
    (compatible r3 h77)
    (compatible r3 h78)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h83)
    (compatible r3 h84)
    (compatible r3 h85)
    (compatible r3 h86)
    (compatible r3 h87)
    (compatible r3 h88)
    (compatible r3 h89)
    (compatible r3 h90)
    (compatible r3 h91)
    (compatible r3 h92)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h96)
    (compatible r3 h97)
    (compatible r3 h98)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h101)
    (compatible r3 h102)
    (compatible r3 h103)
    (compatible r3 h104)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h107)
    (compatible r3 h108)
    (compatible r3 h109)
    (compatible r3 h110)
    (compatible r3 h111)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h119)
    (compatible r3 h120)
    (compatible r3 h121)
    (compatible r3 h122)
    (compatible r3 h123)
    (compatible r3 h124)
    (compatible r3 h125)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h128)
    (compatible r3 h129)
    (compatible r3 h130)
    (compatible r3 h131)
    (compatible r3 h132)
    (compatible r3 h133)
    (compatible r3 h134)
    (compatible r3 h135)
    (compatible r3 h136)
    (compatible r3 h137)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h142)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h145)
    (compatible r3 h146)
    (compatible r3 h147)
    (compatible r3 h148)
    (compatible r3 h149)
    (compatible r3 h150)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h2)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h11)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h27)
    (compatible r4 h31)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h49)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h57)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h61)
    (compatible r4 h63)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h72)
    (compatible r4 h76)
    (compatible r4 h78)
    (compatible r4 h79)
    (compatible r4 h81)
    (compatible r4 h88)
    (compatible r4 h90)
    (compatible r4 h92)
    (compatible r4 h93)
    (compatible r4 h94)
    (compatible r4 h96)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h104)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h111)
    (compatible r4 h115)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h121)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h133)
    (compatible r4 h134)
    (compatible r4 h137)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h140)
    (compatible r4 h141)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h146)
    (compatible r4 h148)

    ;; Reserva r5 (4 pax): 
    (compatible r5 h2)
    (compatible r5 h5)
    (compatible r5 h14)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h38)
    (compatible r5 h43)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h55)
    (compatible r5 h60)
    (compatible r5 h65)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h78)
    (compatible r5 h79)
    (compatible r5 h88)
    (compatible r5 h92)
    (compatible r5 h96)
    (compatible r5 h99)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h117)
    (compatible r5 h121)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h134)
    (compatible r5 h141)
    (compatible r5 h144)
    (compatible r5 h148)

    ;; Calendari de reserves
    (dies-reserva r1 d1)
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r3 d3)
    (dies-reserva r3 d4)
    (dies-reserva r3 d5)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r5 d2)
    (dies-reserva r5 d3)
    (dies-reserva r5 d4)
    (dies-reserva r5 d5)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
