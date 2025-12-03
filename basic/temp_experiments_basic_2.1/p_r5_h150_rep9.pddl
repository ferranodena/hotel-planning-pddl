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
    ;; h3: 1 persones
    ;; h4: 3 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 3 persones
    ;; h9: 1 persones
    ;; h10: 4 persones
    ;; h11: 4 persones
    ;; h12: 1 persones
    ;; h13: 3 persones
    ;; h14: 3 persones
    ;; h15: 2 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 3 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 4 persones
    ;; h23: 1 persones
    ;; h24: 4 persones
    ;; h25: 2 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 3 persones
    ;; h30: 2 persones
    ;; h31: 1 persones
    ;; h32: 4 persones
    ;; h33: 3 persones
    ;; h34: 4 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 4 persones
    ;; h38: 3 persones
    ;; h39: 2 persones
    ;; h40: 4 persones
    ;; h41: 3 persones
    ;; h42: 1 persones
    ;; h43: 3 persones
    ;; h44: 3 persones
    ;; h45: 2 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 2 persones
    ;; h49: 4 persones
    ;; h50: 4 persones
    ;; h51: 4 persones
    ;; h52: 4 persones
    ;; h53: 1 persones
    ;; h54: 3 persones
    ;; h55: 3 persones
    ;; h56: 1 persones
    ;; h57: 2 persones
    ;; h58: 3 persones
    ;; h59: 1 persones
    ;; h60: 1 persones
    ;; h61: 1 persones
    ;; h62: 1 persones
    ;; h63: 1 persones
    ;; h64: 4 persones
    ;; h65: 4 persones
    ;; h66: 3 persones
    ;; h67: 3 persones
    ;; h68: 4 persones
    ;; h69: 1 persones
    ;; h70: 4 persones
    ;; h71: 4 persones
    ;; h72: 2 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 3 persones
    ;; h76: 1 persones
    ;; h77: 1 persones
    ;; h78: 3 persones
    ;; h79: 1 persones
    ;; h80: 2 persones
    ;; h81: 1 persones
    ;; h82: 1 persones
    ;; h83: 4 persones
    ;; h84: 2 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 1 persones
    ;; h88: 4 persones
    ;; h89: 3 persones
    ;; h90: 3 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 1 persones
    ;; h94: 1 persones
    ;; h95: 2 persones
    ;; h96: 4 persones
    ;; h97: 1 persones
    ;; h98: 3 persones
    ;; h99: 4 persones
    ;; h100: 4 persones
    ;; h101: 1 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 1 persones
    ;; h105: 4 persones
    ;; h106: 4 persones
    ;; h107: 3 persones
    ;; h108: 2 persones
    ;; h109: 3 persones
    ;; h110: 1 persones
    ;; h111: 4 persones
    ;; h112: 1 persones
    ;; h113: 4 persones
    ;; h114: 1 persones
    ;; h115: 3 persones
    ;; h116: 1 persones
    ;; h117: 4 persones
    ;; h118: 4 persones
    ;; h119: 3 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 4 persones
    ;; h123: 1 persones
    ;; h124: 1 persones
    ;; h125: 2 persones
    ;; h126: 1 persones
    ;; h127: 4 persones
    ;; h128: 1 persones
    ;; h129: 1 persones
    ;; h130: 2 persones
    ;; h131: 2 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 2 persones
    ;; h135: 2 persones
    ;; h136: 4 persones
    ;; h137: 1 persones
    ;; h138: 4 persones
    ;; h139: 4 persones
    ;; h140: 2 persones
    ;; h141: 1 persones
    ;; h142: 2 persones
    ;; h143: 2 persones
    ;; h144: 2 persones
    ;; h145: 2 persones
    ;; h146: 4 persones
    ;; h147: 1 persones
    ;; h148: 4 persones
    ;; h149: 1 persones
    ;; h150: 4 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h16)
    (compatible r1 h17)
    (compatible r1 h18)
    (compatible r1 h19)
    (compatible r1 h20)
    (compatible r1 h22)
    (compatible r1 h24)
    (compatible r1 h26)
    (compatible r1 h29)
    (compatible r1 h32)
    (compatible r1 h33)
    (compatible r1 h34)
    (compatible r1 h37)
    (compatible r1 h38)
    (compatible r1 h40)
    (compatible r1 h41)
    (compatible r1 h43)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h49)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h52)
    (compatible r1 h54)
    (compatible r1 h55)
    (compatible r1 h58)
    (compatible r1 h64)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h67)
    (compatible r1 h68)
    (compatible r1 h70)
    (compatible r1 h71)
    (compatible r1 h74)
    (compatible r1 h75)
    (compatible r1 h78)
    (compatible r1 h83)
    (compatible r1 h88)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h96)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h100)
    (compatible r1 h105)
    (compatible r1 h106)
    (compatible r1 h107)
    (compatible r1 h109)
    (compatible r1 h111)
    (compatible r1 h113)
    (compatible r1 h115)
    (compatible r1 h117)
    (compatible r1 h118)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h121)
    (compatible r1 h122)
    (compatible r1 h127)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h136)
    (compatible r1 h138)
    (compatible r1 h139)
    (compatible r1 h146)
    (compatible r1 h148)
    (compatible r1 h150)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h8)
    (compatible r2 h10)
    (compatible r2 h11)
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
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h28)
    (compatible r2 h29)
    (compatible r2 h30)
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
    (compatible r2 h54)
    (compatible r2 h55)
    (compatible r2 h57)
    (compatible r2 h58)
    (compatible r2 h64)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h70)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h78)
    (compatible r2 h80)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h86)
    (compatible r2 h88)
    (compatible r2 h89)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h98)
    (compatible r2 h99)
    (compatible r2 h100)
    (compatible r2 h102)
    (compatible r2 h105)
    (compatible r2 h106)
    (compatible r2 h107)
    (compatible r2 h108)
    (compatible r2 h109)
    (compatible r2 h111)
    (compatible r2 h113)
    (compatible r2 h115)
    (compatible r2 h117)
    (compatible r2 h118)
    (compatible r2 h119)
    (compatible r2 h120)
    (compatible r2 h121)
    (compatible r2 h122)
    (compatible r2 h125)
    (compatible r2 h127)
    (compatible r2 h130)
    (compatible r2 h131)
    (compatible r2 h132)
    (compatible r2 h133)
    (compatible r2 h134)
    (compatible r2 h135)
    (compatible r2 h136)
    (compatible r2 h138)
    (compatible r2 h139)
    (compatible r2 h140)
    (compatible r2 h142)
    (compatible r2 h143)
    (compatible r2 h144)
    (compatible r2 h145)
    (compatible r2 h146)
    (compatible r2 h148)
    (compatible r2 h150)

    ;; Reserva r3 (4 pax): 
    (compatible r3 h5)
    (compatible r3 h10)
    (compatible r3 h11)
    (compatible r3 h16)
    (compatible r3 h18)
    (compatible r3 h20)
    (compatible r3 h22)
    (compatible r3 h24)
    (compatible r3 h26)
    (compatible r3 h32)
    (compatible r3 h34)
    (compatible r3 h37)
    (compatible r3 h40)
    (compatible r3 h46)
    (compatible r3 h49)
    (compatible r3 h50)
    (compatible r3 h51)
    (compatible r3 h52)
    (compatible r3 h64)
    (compatible r3 h65)
    (compatible r3 h68)
    (compatible r3 h70)
    (compatible r3 h71)
    (compatible r3 h74)
    (compatible r3 h83)
    (compatible r3 h88)
    (compatible r3 h92)
    (compatible r3 h96)
    (compatible r3 h99)
    (compatible r3 h100)
    (compatible r3 h105)
    (compatible r3 h106)
    (compatible r3 h111)
    (compatible r3 h113)
    (compatible r3 h117)
    (compatible r3 h118)
    (compatible r3 h121)
    (compatible r3 h122)
    (compatible r3 h127)
    (compatible r3 h132)
    (compatible r3 h136)
    (compatible r3 h138)
    (compatible r3 h139)
    (compatible r3 h146)
    (compatible r3 h148)
    (compatible r3 h150)

    ;; Reserva r4 (3 pax): 
    (compatible r4 h4)
    (compatible r4 h5)
    (compatible r4 h6)
    (compatible r4 h8)
    (compatible r4 h10)
    (compatible r4 h11)
    (compatible r4 h13)
    (compatible r4 h14)
    (compatible r4 h16)
    (compatible r4 h17)
    (compatible r4 h18)
    (compatible r4 h19)
    (compatible r4 h20)
    (compatible r4 h22)
    (compatible r4 h24)
    (compatible r4 h26)
    (compatible r4 h29)
    (compatible r4 h32)
    (compatible r4 h33)
    (compatible r4 h34)
    (compatible r4 h37)
    (compatible r4 h38)
    (compatible r4 h40)
    (compatible r4 h41)
    (compatible r4 h43)
    (compatible r4 h44)
    (compatible r4 h46)
    (compatible r4 h49)
    (compatible r4 h50)
    (compatible r4 h51)
    (compatible r4 h52)
    (compatible r4 h54)
    (compatible r4 h55)
    (compatible r4 h58)
    (compatible r4 h64)
    (compatible r4 h65)
    (compatible r4 h66)
    (compatible r4 h67)
    (compatible r4 h68)
    (compatible r4 h70)
    (compatible r4 h71)
    (compatible r4 h74)
    (compatible r4 h75)
    (compatible r4 h78)
    (compatible r4 h83)
    (compatible r4 h88)
    (compatible r4 h89)
    (compatible r4 h90)
    (compatible r4 h92)
    (compatible r4 h96)
    (compatible r4 h98)
    (compatible r4 h99)
    (compatible r4 h100)
    (compatible r4 h105)
    (compatible r4 h106)
    (compatible r4 h107)
    (compatible r4 h109)
    (compatible r4 h111)
    (compatible r4 h113)
    (compatible r4 h115)
    (compatible r4 h117)
    (compatible r4 h118)
    (compatible r4 h119)
    (compatible r4 h120)
    (compatible r4 h121)
    (compatible r4 h122)
    (compatible r4 h127)
    (compatible r4 h132)
    (compatible r4 h133)
    (compatible r4 h136)
    (compatible r4 h138)
    (compatible r4 h139)
    (compatible r4 h146)
    (compatible r4 h148)
    (compatible r4 h150)

    ;; Reserva r5 (3 pax): 
    (compatible r5 h4)
    (compatible r5 h5)
    (compatible r5 h6)
    (compatible r5 h8)
    (compatible r5 h10)
    (compatible r5 h11)
    (compatible r5 h13)
    (compatible r5 h14)
    (compatible r5 h16)
    (compatible r5 h17)
    (compatible r5 h18)
    (compatible r5 h19)
    (compatible r5 h20)
    (compatible r5 h22)
    (compatible r5 h24)
    (compatible r5 h26)
    (compatible r5 h29)
    (compatible r5 h32)
    (compatible r5 h33)
    (compatible r5 h34)
    (compatible r5 h37)
    (compatible r5 h38)
    (compatible r5 h40)
    (compatible r5 h41)
    (compatible r5 h43)
    (compatible r5 h44)
    (compatible r5 h46)
    (compatible r5 h49)
    (compatible r5 h50)
    (compatible r5 h51)
    (compatible r5 h52)
    (compatible r5 h54)
    (compatible r5 h55)
    (compatible r5 h58)
    (compatible r5 h64)
    (compatible r5 h65)
    (compatible r5 h66)
    (compatible r5 h67)
    (compatible r5 h68)
    (compatible r5 h70)
    (compatible r5 h71)
    (compatible r5 h74)
    (compatible r5 h75)
    (compatible r5 h78)
    (compatible r5 h83)
    (compatible r5 h88)
    (compatible r5 h89)
    (compatible r5 h90)
    (compatible r5 h92)
    (compatible r5 h96)
    (compatible r5 h98)
    (compatible r5 h99)
    (compatible r5 h100)
    (compatible r5 h105)
    (compatible r5 h106)
    (compatible r5 h107)
    (compatible r5 h109)
    (compatible r5 h111)
    (compatible r5 h113)
    (compatible r5 h115)
    (compatible r5 h117)
    (compatible r5 h118)
    (compatible r5 h119)
    (compatible r5 h120)
    (compatible r5 h121)
    (compatible r5 h122)
    (compatible r5 h127)
    (compatible r5 h132)
    (compatible r5 h133)
    (compatible r5 h136)
    (compatible r5 h138)
    (compatible r5 h139)
    (compatible r5 h146)
    (compatible r5 h148)
    (compatible r5 h150)

    ;; Calendari de reserves
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
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
    (dies-reserva r4 d1)
    (dies-reserva r4 d2)
    (dies-reserva r4 d3)
    (dies-reserva r4 d4)
    (dies-reserva r4 d5)
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
