(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 2 persones
    ;; h2: 4 persones
    ;; h3: 4 persones
    ;; h4: 4 persones
    ;; h5: 2 persones
    ;; h6: 1 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 3 persones
    ;; h11: 3 persones
    ;; h12: 4 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 4 persones
    ;; h16: 1 persones
    ;; h17: 1 persones
    ;; h18: 3 persones
    ;; h19: 3 persones
    ;; h20: 3 persones
    ;; h21: 3 persones
    ;; h22: 4 persones
    ;; h23: 4 persones
    ;; h24: 3 persones
    ;; h25: 2 persones
    ;; h26: 3 persones
    ;; h27: 3 persones
    ;; h28: 2 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 3 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 3 persones
    ;; h44: 4 persones
    ;; h45: 4 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 4 persones
    ;; h50: 1 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 2 persones
    ;; h55: 1 persones
    ;; h56: 4 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 3 persones
    ;; h61: 2 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 2 persones
    ;; h65: 2 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 4 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 4 persones
    ;; h72: 3 persones
    ;; h73: 4 persones
    ;; h74: 2 persones
    ;; h75: 2 persones
    ;; h76: 1 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 4 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 3 persones
    ;; h83: 1 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 4 persones
    ;; h90: 2 persones
    ;; h91: 2 persones
    ;; h92: 2 persones
    ;; h93: 3 persones
    ;; h94: 3 persones
    ;; h95: 3 persones
    ;; h96: 2 persones
    ;; h97: 2 persones
    ;; h98: 2 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 3 persones
    ;; h102: 2 persones
    ;; h103: 2 persones
    ;; h104: 2 persones
    ;; h105: 2 persones
    ;; h106: 4 persones
    ;; h107: 2 persones
    ;; h108: 1 persones
    ;; h109: 2 persones
    ;; h110: 4 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 4 persones
    ;; h117: 2 persones
    ;; h118: 1 persones
    ;; h119: 4 persones
    ;; h120: 2 persones
    ;; h121: 3 persones
    ;; h122: 1 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 4 persones
    ;; h126: 1 persones
    ;; h127: 2 persones
    ;; h128: 2 persones
    ;; h129: 1 persones
    ;; h130: 2 persones
    ;; h131: 3 persones
    ;; h132: 1 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 1 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 2 persones
    ;; h141: 2 persones
    ;; h142: 2 persones
    ;; h143: 2 persones
    ;; h144: 2 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 2 persones
    ;; h148: 4 persones
    ;; h149: 2 persones
    ;; h150: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h3)
    (compatible r1 h4)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
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
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h39)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h68)
    (compatible r1 h71)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h77)
    (compatible r1 h79)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h89)
    (compatible r1 h93)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h99)
    (compatible r1 h101)
    (compatible r1 h106)
    (compatible r1 h110)
    (compatible r1 h112)
    (compatible r1 h113)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h123)
    (compatible r1 h125)
    (compatible r1 h131)
    (compatible r1 h133)
    (compatible r1 h136)
    (compatible r1 h139)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h150)

    ;; Reserva r2 (1 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h3)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h14)
    (compatible r2 h15)
    (compatible r2 h16)
    (compatible r2 h17)
    (compatible r2 h18)
    (compatible r2 h19)
    (compatible r2 h20)
    (compatible r2 h21)
    (compatible r2 h22)
    (compatible r2 h23)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h27)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h47)
    (compatible r2 h48)
    (compatible r2 h49)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h52)
    (compatible r2 h53)
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
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
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h91)
    (compatible r2 h92)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h101)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
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
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h137)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)
    (compatible r2 h150)

    ;; Reserva r3 (3 pax): 
    (compatible r3 h2)
    (compatible r3 h3)
    (compatible r3 h4)
    (compatible r3 h8)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h12)
    (compatible r3 h13)
    (compatible r3 h14)
    (compatible r3 h15)
    (compatible r3 h18)
    (compatible r3 h19)
    (compatible r3 h20)
    (compatible r3 h21)
    (compatible r3 h22)
    (compatible r3 h23)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h27)
    (compatible r3 h29)
    (compatible r3 h30)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h39)
    (compatible r3 h41)
    (compatible r3 h42)
    (compatible r3 h43)
    (compatible r3 h44)
    (compatible r3 h45)
    (compatible r3 h46)
    (compatible r3 h48)
    (compatible r3 h49)
    (compatible r3 h51)
    (compatible r3 h53)
    (compatible r3 h56)
    (compatible r3 h58)
    (compatible r3 h60)
    (compatible r3 h68)
    (compatible r3 h71)
    (compatible r3 h72)
    (compatible r3 h73)
    (compatible r3 h77)
    (compatible r3 h79)
    (compatible r3 h80)
    (compatible r3 h81)
    (compatible r3 h82)
    (compatible r3 h89)
    (compatible r3 h93)
    (compatible r3 h94)
    (compatible r3 h95)
    (compatible r3 h99)
    (compatible r3 h101)
    (compatible r3 h106)
    (compatible r3 h110)
    (compatible r3 h112)
    (compatible r3 h113)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h119)
    (compatible r3 h121)
    (compatible r3 h123)
    (compatible r3 h125)
    (compatible r3 h131)
    (compatible r3 h133)
    (compatible r3 h136)
    (compatible r3 h139)
    (compatible r3 h146)
    (compatible r3 h148)
    (compatible r3 h150)

    ;; Reserva r4 (4 pax): 
    (compatible r4 h2)
    (compatible r4 h3)
    (compatible r4 h4)
    (compatible r4 h12)
    (compatible r4 h14)
    (compatible r4 h15)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h29)
    (compatible r4 h31)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h44)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h49)
    (compatible r4 h51)
    (compatible r4 h53)
    (compatible r4 h56)
    (compatible r4 h68)
    (compatible r4 h71)
    (compatible r4 h73)
    (compatible r4 h77)
    (compatible r4 h79)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h89)
    (compatible r4 h106)
    (compatible r4 h110)
    (compatible r4 h113)
    (compatible r4 h116)
    (compatible r4 h119)
    (compatible r4 h123)
    (compatible r4 h125)
    (compatible r4 h136)
    (compatible r4 h139)
    (compatible r4 h146)
    (compatible r4 h148)

    ;; Reserva r5 (1 pax): 
    (compatible r5 h1)
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
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h36)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h45)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h56)
    (compatible r5 h57)
    (compatible r5 h58)
    (compatible r5 h59)
    (compatible r5 h60)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h63)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h72)
    (compatible r5 h73)
    (compatible r5 h74)
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
    (compatible r5 h86)
    (compatible r5 h87)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h91)
    (compatible r5 h92)
    (compatible r5 h93)
    (compatible r5 h94)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h101)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h110)
    (compatible r5 h111)
    (compatible r5 h112)
    (compatible r5 h113)
    (compatible r5 h114)
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
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h134)
    (compatible r5 h135)
    (compatible r5 h136)
    (compatible r5 h137)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h146)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)
    (compatible r5 h150)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r3 d2)
    (dies-reserva r4 d1)
    (dies-reserva r5 d1)
    (dies-reserva r5 d2)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
    (assignada r3)
    (assignada r4)
    (assignada r5)
  ))
)
