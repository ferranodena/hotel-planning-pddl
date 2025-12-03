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
    ;; h5: 2 persones
    ;; h6: 4 persones
    ;; h7: 3 persones
    ;; h8: 3 persones
    ;; h9: 2 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 3 persones
    ;; h13: 3 persones
    ;; h14: 2 persones
    ;; h15: 1 persones
    ;; h16: 3 persones
    ;; h17: 2 persones
    ;; h18: 3 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 2 persones
    ;; h22: 3 persones
    ;; h23: 1 persones
    ;; h24: 1 persones
    ;; h25: 3 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 2 persones
    ;; h30: 4 persones
    ;; h31: 3 persones
    ;; h32: 2 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 4 persones
    ;; h36: 1 persones
    ;; h37: 4 persones
    ;; h38: 4 persones
    ;; h39: 3 persones
    ;; h40: 3 persones
    ;; h41: 1 persones
    ;; h42: 2 persones
    ;; h43: 4 persones
    ;; h44: 1 persones
    ;; h45: 1 persones
    ;; h46: 1 persones
    ;; h47: 1 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 2 persones
    ;; h51: 2 persones
    ;; h52: 3 persones
    ;; h53: 1 persones
    ;; h54: 1 persones
    ;; h55: 1 persones
    ;; h56: 1 persones
    ;; h57: 1 persones
    ;; h58: 4 persones
    ;; h59: 2 persones
    ;; h60: 2 persones
    ;; h61: 3 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 2 persones
    ;; h65: 3 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 1 persones
    ;; h72: 1 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 4 persones
    ;; h76: 2 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 2 persones
    ;; h80: 4 persones
    ;; h81: 4 persones
    ;; h82: 2 persones
    ;; h83: 3 persones
    ;; h84: 1 persones
    ;; h85: 4 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 2 persones
    ;; h91: 3 persones
    ;; h92: 2 persones
    ;; h93: 4 persones
    ;; h94: 1 persones
    ;; h95: 4 persones
    ;; h96: 4 persones
    ;; h97: 4 persones
    ;; h98: 1 persones
    ;; h99: 3 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 3 persones
    ;; h103: 4 persones
    ;; h104: 4 persones
    ;; h105: 4 persones
    ;; h106: 3 persones
    ;; h107: 3 persones
    ;; h108: 4 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 1 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 1 persones
    ;; h119: 3 persones
    ;; h120: 1 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 2 persones
    ;; h124: 3 persones
    ;; h125: 2 persones
    ;; h126: 3 persones
    ;; h127: 2 persones
    ;; h128: 3 persones
    ;; h129: 4 persones
    ;; h130: 4 persones
    ;; h131: 4 persones
    ;; h132: 4 persones
    ;; h133: 1 persones
    ;; h134: 1 persones
    ;; h135: 2 persones
    ;; h136: 3 persones
    ;; h137: 2 persones
    ;; h138: 1 persones
    ;; h139: 3 persones
    ;; h140: 2 persones
    ;; h141: 3 persones
    ;; h142: 3 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 4 persones
    ;; h146: 1 persones
    ;; h147: 4 persones
    ;; h148: 3 persones
    ;; h149: 4 persones
    ;; h150: 1 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h12)
    (compatible r1 h13)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h22)
    (compatible r1 h25)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h34)
    (compatible r1 h35)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h43)
    (compatible r1 h48)
    (compatible r1 h52)
    (compatible r1 h58)
    (compatible r1 h61)
    (compatible r1 h62)
    (compatible r1 h65)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h80)
    (compatible r1 h81)
    (compatible r1 h83)
    (compatible r1 h85)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h91)
    (compatible r1 h93)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h97)
    (compatible r1 h99)
    (compatible r1 h102)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h124)
    (compatible r1 h126)
    (compatible r1 h128)
    (compatible r1 h129)
    (compatible r1 h130)
    (compatible r1 h131)
    (compatible r1 h132)
    (compatible r1 h136)
    (compatible r1 h139)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h147)
    (compatible r1 h148)
    (compatible r1 h149)

    ;; Reserva r2 (3 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h6)
    (compatible r2 h7)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h22)
    (compatible r2 h25)
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h34)
    (compatible r2 h35)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h43)
    (compatible r2 h48)
    (compatible r2 h52)
    (compatible r2 h58)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h65)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h81)
    (compatible r2 h83)
    (compatible r2 h85)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h91)
    (compatible r2 h93)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h99)
    (compatible r2 h102)
    (compatible r2 h103)
    (compatible r2 h104)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h112)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h117)
    (compatible r2 h119)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h124)
    (compatible r2 h126)
    (compatible r2 h128)
    (compatible r2 h129)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h136)
    (compatible r2 h139)
    (compatible r2 h141)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h149)

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
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h12)
    (compatible r4 h13)
    (compatible r4 h16)
    (compatible r4 h18)
    (compatible r4 h22)
    (compatible r4 h25)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h34)
    (compatible r4 h35)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h43)
    (compatible r4 h48)
    (compatible r4 h52)
    (compatible r4 h58)
    (compatible r4 h61)
    (compatible r4 h62)
    (compatible r4 h65)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h78)
    (compatible r4 h80)
    (compatible r4 h81)
    (compatible r4 h83)
    (compatible r4 h85)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h91)
    (compatible r4 h93)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h97)
    (compatible r4 h99)
    (compatible r4 h102)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h112)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h119)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h124)
    (compatible r4 h126)
    (compatible r4 h128)
    (compatible r4 h129)
    (compatible r4 h130)
    (compatible r4 h131)
    (compatible r4 h132)
    (compatible r4 h136)
    (compatible r4 h139)
    (compatible r4 h141)
    (compatible r4 h142)
    (compatible r4 h143)
    (compatible r4 h144)
    (compatible r4 h145)
    (compatible r4 h147)
    (compatible r4 h148)
    (compatible r4 h149)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h2)
    (compatible r5 h4)
    (compatible r5 h6)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h12)
    (compatible r5 h13)
    (compatible r5 h16)
    (compatible r5 h18)
    (compatible r5 h22)
    (compatible r5 h25)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h34)
    (compatible r5 h35)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h43)
    (compatible r5 h48)
    (compatible r5 h52)
    (compatible r5 h58)
    (compatible r5 h61)
    (compatible r5 h62)
    (compatible r5 h65)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h78)
    (compatible r5 h80)
    (compatible r5 h81)
    (compatible r5 h83)
    (compatible r5 h85)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h91)
    (compatible r5 h93)
    (compatible r5 h95)
    (compatible r5 h96)
    (compatible r5 h97)
    (compatible r5 h99)
    (compatible r5 h102)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h108)
    (compatible r5 h109)
    (compatible r5 h112)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h119)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h124)
    (compatible r5 h126)
    (compatible r5 h128)
    (compatible r5 h129)
    (compatible r5 h130)
    (compatible r5 h131)
    (compatible r5 h132)
    (compatible r5 h136)
    (compatible r5 h139)
    (compatible r5 h141)
    (compatible r5 h142)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h145)
    (compatible r5 h147)
    (compatible r5 h148)
    (compatible r5 h149)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
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
