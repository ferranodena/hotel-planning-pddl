(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 r3 r4 r5 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 3 persones
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 2 persones
    ;; h7: 3 persones
    ;; h8: 4 persones
    ;; h9: 3 persones
    ;; h10: 2 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 1 persones
    ;; h14: 1 persones
    ;; h15: 1 persones
    ;; h16: 1 persones
    ;; h17: 3 persones
    ;; h18: 1 persones
    ;; h19: 3 persones
    ;; h20: 2 persones
    ;; h21: 1 persones
    ;; h22: 3 persones
    ;; h23: 2 persones
    ;; h24: 3 persones
    ;; h25: 4 persones
    ;; h26: 1 persones
    ;; h27: 3 persones
    ;; h28: 3 persones
    ;; h29: 4 persones
    ;; h30: 3 persones
    ;; h31: 4 persones
    ;; h32: 4 persones
    ;; h33: 2 persones
    ;; h34: 4 persones
    ;; h35: 1 persones
    ;; h36: 3 persones
    ;; h37: 2 persones
    ;; h38: 2 persones
    ;; h39: 3 persones
    ;; h40: 4 persones
    ;; h41: 4 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 1 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 3 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 1 persones
    ;; h52: 3 persones
    ;; h53: 3 persones
    ;; h54: 2 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 2 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 1 persones
    ;; h66: 1 persones
    ;; h67: 1 persones
    ;; h68: 3 persones
    ;; h69: 4 persones
    ;; h70: 3 persones
    ;; h71: 1 persones
    ;; h72: 2 persones
    ;; h73: 2 persones
    ;; h74: 3 persones
    ;; h75: 4 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 1 persones
    ;; h79: 1 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 2 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 1 persones
    ;; h87: 1 persones
    ;; h88: 2 persones
    ;; h89: 4 persones
    ;; h90: 1 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 3 persones
    ;; h95: 2 persones
    ;; h96: 3 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 4 persones
    ;; h101: 2 persones
    ;; h102: 1 persones
    ;; h103: 3 persones
    ;; h104: 3 persones
    ;; h105: 3 persones
    ;; h106: 1 persones
    ;; h107: 4 persones
    ;; h108: 2 persones
    ;; h109: 2 persones
    ;; h110: 2 persones
    ;; h111: 2 persones
    ;; h112: 3 persones
    ;; h113: 1 persones
    ;; h114: 4 persones
    ;; h115: 4 persones
    ;; h116: 4 persones
    ;; h117: 3 persones
    ;; h118: 3 persones
    ;; h119: 1 persones
    ;; h120: 1 persones
    ;; h121: 3 persones
    ;; h122: 3 persones
    ;; h123: 4 persones
    ;; h124: 3 persones
    ;; h125: 3 persones
    ;; h126: 4 persones
    ;; h127: 4 persones
    ;; h128: 4 persones
    ;; h129: 2 persones
    ;; h130: 1 persones
    ;; h131: 1 persones
    ;; h132: 1 persones
    ;; h133: 2 persones
    ;; h134: 4 persones
    ;; h135: 2 persones
    ;; h136: 2 persones
    ;; h137: 3 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 4 persones
    ;; h142: 2 persones
    ;; h143: 4 persones
    ;; h144: 4 persones
    ;; h145: 1 persones
    ;; h146: 4 persones
    ;; h147: 1 persones
    ;; h148: 2 persones
    ;; h149: 2 persones
    ;; h150: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (2 pax): 
    (compatible r1 h1)
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h7)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h17)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h27)
    (compatible r1 h28)
    (compatible r1 h29)
    (compatible r1 h30)
    (compatible r1 h31)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h39)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h43)
    (compatible r1 h45)
    (compatible r1 h46)
    (compatible r1 h47)
    (compatible r1 h48)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h52)
    (compatible r1 h53)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h56)
    (compatible r1 h58)
    (compatible r1 h60)
    (compatible r1 h63)
    (compatible r1 h68)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h73)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h81)
    (compatible r1 h82)
    (compatible r1 h83)
    (compatible r1 h84)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h92)
    (compatible r1 h94)
    (compatible r1 h95)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h100)
    (compatible r1 h101)
    (compatible r1 h103)
    (compatible r1 h104)
    (compatible r1 h105)
    (compatible r1 h107)
    (compatible r1 h108)
    (compatible r1 h109)
    (compatible r1 h110)
    (compatible r1 h111)
    (compatible r1 h112)
    (compatible r1 h114)
    (compatible r1 h115)
    (compatible r1 h116)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h123)
    (compatible r1 h124)
    (compatible r1 h125)
    (compatible r1 h126)
    (compatible r1 h127)
    (compatible r1 h128)
    (compatible r1 h129)
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
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h5)
    (compatible r2 h8)
    (compatible r2 h11)
    (compatible r2 h25)
    (compatible r2 h29)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h34)
    (compatible r2 h40)
    (compatible r2 h41)
    (compatible r2 h46)
    (compatible r2 h69)
    (compatible r2 h75)
    (compatible r2 h77)
    (compatible r2 h82)
    (compatible r2 h89)
    (compatible r2 h92)
    (compatible r2 h100)
    (compatible r2 h107)
    (compatible r2 h114)
    (compatible r2 h115)
    (compatible r2 h116)
    (compatible r2 h123)
    (compatible r2 h126)
    (compatible r2 h127)
    (compatible r2 h128)
    (compatible r2 h134)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h146)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h5)
    (compatible r3 h8)
    (compatible r3 h11)
    (compatible r3 h25)
    (compatible r3 h29)
    (compatible r3 h31)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h40)
    (compatible r3 h41)
    (compatible r3 h46)
    (compatible r3 h69)
    (compatible r3 h75)
    (compatible r3 h77)
    (compatible r3 h82)
    (compatible r3 h89)
    (compatible r3 h92)
    (compatible r3 h100)
    (compatible r3 h107)
    (compatible r3 h114)
    (compatible r3 h115)
    (compatible r3 h116)
    (compatible r3 h123)
    (compatible r3 h126)
    (compatible r3 h127)
    (compatible r3 h128)
    (compatible r3 h134)
    (compatible r3 h139)
    (compatible r3 h140)
    (compatible r3 h141)
    (compatible r3 h143)
    (compatible r3 h144)
    (compatible r3 h146)

    ;; Reserva r4 (2 pax): 
    (compatible r4 h1)
    (compatible r4 h2)
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h7)
    (compatible r4 h8)
    (compatible r4 h9)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h17)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h22)
    (compatible r4 h23)
    (compatible r4 h24)
    (compatible r4 h25)
    (compatible r4 h27)
    (compatible r4 h28)
    (compatible r4 h29)
    (compatible r4 h30)
    (compatible r4 h31)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h36)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h39)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h42)
    (compatible r4 h43)
    (compatible r4 h45)
    (compatible r4 h46)
    (compatible r4 h47)
    (compatible r4 h48)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h52)
    (compatible r4 h53)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h56)
    (compatible r4 h58)
    (compatible r4 h60)
    (compatible r4 h63)
    (compatible r4 h68)
    (compatible r4 h69)
    (compatible r4 h70)
    (compatible r4 h72)
    (compatible r4 h73)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h76)
    (compatible r4 h77)
    (compatible r4 h81)
    (compatible r4 h82)
    (compatible r4 h83)
    (compatible r4 h84)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h92)
    (compatible r4 h94)
    (compatible r4 h95)
    (compatible r4 h96)
    (compatible r4 h98)
    (compatible r4 h100)
    (compatible r4 h101)
    (compatible r4 h103)
    (compatible r4 h104)
    (compatible r4 h105)
    (compatible r4 h107)
    (compatible r4 h108)
    (compatible r4 h109)
    (compatible r4 h110)
    (compatible r4 h111)
    (compatible r4 h112)
    (compatible r4 h114)
    (compatible r4 h115)
    (compatible r4 h116)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h123)
    (compatible r4 h124)
    (compatible r4 h125)
    (compatible r4 h126)
    (compatible r4 h127)
    (compatible r4 h128)
    (compatible r4 h129)
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
    (compatible r4 h146)
    (compatible r4 h148)
    (compatible r4 h149)
    (compatible r4 h150)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h1)
    (compatible r5 h2)
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h7)
    (compatible r5 h8)
    (compatible r5 h9)
    (compatible r5 h11)
    (compatible r5 h17)
    (compatible r5 h19)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h25)
    (compatible r5 h27)
    (compatible r5 h28)
    (compatible r5 h29)
    (compatible r5 h30)
    (compatible r5 h31)
    (compatible r5 h32)
    (compatible r5 h34)
    (compatible r5 h36)
    (compatible r5 h39)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h42)
    (compatible r5 h43)
    (compatible r5 h46)
    (compatible r5 h47)
    (compatible r5 h48)
    (compatible r5 h50)
    (compatible r5 h52)
    (compatible r5 h53)
    (compatible r5 h58)
    (compatible r5 h68)
    (compatible r5 h69)
    (compatible r5 h70)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h76)
    (compatible r5 h77)
    (compatible r5 h82)
    (compatible r5 h89)
    (compatible r5 h92)
    (compatible r5 h94)
    (compatible r5 h96)
    (compatible r5 h98)
    (compatible r5 h100)
    (compatible r5 h103)
    (compatible r5 h104)
    (compatible r5 h105)
    (compatible r5 h107)
    (compatible r5 h112)
    (compatible r5 h114)
    (compatible r5 h115)
    (compatible r5 h116)
    (compatible r5 h117)
    (compatible r5 h118)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h123)
    (compatible r5 h124)
    (compatible r5 h125)
    (compatible r5 h126)
    (compatible r5 h127)
    (compatible r5 h128)
    (compatible r5 h134)
    (compatible r5 h137)
    (compatible r5 h139)
    (compatible r5 h140)
    (compatible r5 h141)
    (compatible r5 h143)
    (compatible r5 h144)
    (compatible r5 h146)
    (compatible r5 h150)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r2 d1)
    (dies-reserva r2 d2)
    (dies-reserva r2 d3)
    (dies-reserva r2 d4)
    (dies-reserva r2 d5)
    (dies-reserva r3 d1)
    (dies-reserva r3 d2)
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
