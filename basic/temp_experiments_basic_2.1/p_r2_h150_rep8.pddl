(define (problem hotel-basic)
  (:domain hotelbasic)
  (:objects
    r1 r2 - reserva
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100 h101 h102 h103 h104 h105 h106 h107 h108 h109 h110 h111 h112 h113 h114 h115 h116 h117 h118 h119 h120 h121 h122 h123 h124 h125 h126 h127 h128 h129 h130 h131 h132 h133 h134 h135 h136 h137 h138 h139 h140 h141 h142 h143 h144 h145 h146 h147 h148 h149 h150 - habitacio
    d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - dia
  )

  (:init
    ;; Capacitats de les habitacions (implícites):
    ;; h1: 3 persones
    ;; h2: 4 persones
    ;; h3: 1 persones
    ;; h4: 4 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 1 persones
    ;; h8: 1 persones
    ;; h9: 3 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 1 persones
    ;; h15: 4 persones
    ;; h16: 4 persones
    ;; h17: 3 persones
    ;; h18: 4 persones
    ;; h19: 2 persones
    ;; h20: 4 persones
    ;; h21: 2 persones
    ;; h22: 2 persones
    ;; h23: 4 persones
    ;; h24: 4 persones
    ;; h25: 1 persones
    ;; h26: 1 persones
    ;; h27: 1 persones
    ;; h28: 1 persones
    ;; h29: 1 persones
    ;; h30: 4 persones
    ;; h31: 3 persones
    ;; h32: 3 persones
    ;; h33: 4 persones
    ;; h34: 1 persones
    ;; h35: 3 persones
    ;; h36: 4 persones
    ;; h37: 4 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 2 persones
    ;; h41: 1 persones
    ;; h42: 3 persones
    ;; h43: 3 persones
    ;; h44: 2 persones
    ;; h45: 3 persones
    ;; h46: 4 persones
    ;; h47: 1 persones
    ;; h48: 4 persones
    ;; h49: 1 persones
    ;; h50: 3 persones
    ;; h51: 2 persones
    ;; h52: 1 persones
    ;; h53: 2 persones
    ;; h54: 1 persones
    ;; h55: 2 persones
    ;; h56: 2 persones
    ;; h57: 1 persones
    ;; h58: 1 persones
    ;; h59: 1 persones
    ;; h60: 4 persones
    ;; h61: 2 persones
    ;; h62: 4 persones
    ;; h63: 2 persones
    ;; h64: 1 persones
    ;; h65: 4 persones
    ;; h66: 4 persones
    ;; h67: 2 persones
    ;; h68: 2 persones
    ;; h69: 2 persones
    ;; h70: 1 persones
    ;; h71: 2 persones
    ;; h72: 3 persones
    ;; h73: 2 persones
    ;; h74: 2 persones
    ;; h75: 3 persones
    ;; h76: 4 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 1 persones
    ;; h81: 2 persones
    ;; h82: 4 persones
    ;; h83: 3 persones
    ;; h84: 3 persones
    ;; h85: 2 persones
    ;; h86: 4 persones
    ;; h87: 2 persones
    ;; h88: 1 persones
    ;; h89: 1 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 1 persones
    ;; h93: 2 persones
    ;; h94: 4 persones
    ;; h95: 3 persones
    ;; h96: 3 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 1 persones
    ;; h100: 1 persones
    ;; h101: 2 persones
    ;; h102: 1 persones
    ;; h103: 3 persones
    ;; h104: 1 persones
    ;; h105: 3 persones
    ;; h106: 1 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 1 persones
    ;; h111: 3 persones
    ;; h112: 1 persones
    ;; h113: 3 persones
    ;; h114: 4 persones
    ;; h115: 3 persones
    ;; h116: 2 persones
    ;; h117: 3 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 3 persones
    ;; h121: 4 persones
    ;; h122: 2 persones
    ;; h123: 4 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 3 persones
    ;; h127: 1 persones
    ;; h128: 4 persones
    ;; h129: 3 persones
    ;; h130: 1 persones
    ;; h131: 3 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 3 persones
    ;; h136: 3 persones
    ;; h137: 2 persones
    ;; h138: 2 persones
    ;; h139: 4 persones
    ;; h140: 4 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 1 persones
    ;; h145: 1 persones
    ;; h146: 3 persones
    ;; h147: 3 persones
    ;; h148: 3 persones
    ;; h149: 1 persones
    ;; h150: 2 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (4 pax): 
    (compatible r1 h2)
    (compatible r1 h4)
    (compatible r1 h5)
    (compatible r1 h11)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h20)
    (compatible r1 h23)
    (compatible r1 h24)
    (compatible r1 h30)
    (compatible r1 h33)
    (compatible r1 h36)
    (compatible r1 h37)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h60)
    (compatible r1 h62)
    (compatible r1 h65)
    (compatible r1 h66)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h82)
    (compatible r1 h86)
    (compatible r1 h90)
    (compatible r1 h94)
    (compatible r1 h114)
    (compatible r1 h119)
    (compatible r1 h121)
    (compatible r1 h123)
    (compatible r1 h128)
    (compatible r1 h132)
    (compatible r1 h134)
    (compatible r1 h139)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)

    ;; Reserva r2 (2 pax): 
    (compatible r2 h1)
    (compatible r2 h2)
    (compatible r2 h4)
    (compatible r2 h5)
    (compatible r2 h6)
    (compatible r2 h9)
    (compatible r2 h10)
    (compatible r2 h11)
    (compatible r2 h12)
    (compatible r2 h13)
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
    (compatible r2 h30)
    (compatible r2 h31)
    (compatible r2 h32)
    (compatible r2 h33)
    (compatible r2 h35)
    (compatible r2 h36)
    (compatible r2 h37)
    (compatible r2 h38)
    (compatible r2 h39)
    (compatible r2 h40)
    (compatible r2 h42)
    (compatible r2 h43)
    (compatible r2 h44)
    (compatible r2 h45)
    (compatible r2 h46)
    (compatible r2 h48)
    (compatible r2 h50)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h55)
    (compatible r2 h56)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h62)
    (compatible r2 h63)
    (compatible r2 h65)
    (compatible r2 h66)
    (compatible r2 h67)
    (compatible r2 h68)
    (compatible r2 h69)
    (compatible r2 h71)
    (compatible r2 h72)
    (compatible r2 h73)
    (compatible r2 h74)
    (compatible r2 h75)
    (compatible r2 h76)
    (compatible r2 h77)
    (compatible r2 h78)
    (compatible r2 h79)
    (compatible r2 h81)
    (compatible r2 h82)
    (compatible r2 h83)
    (compatible r2 h84)
    (compatible r2 h85)
    (compatible r2 h86)
    (compatible r2 h87)
    (compatible r2 h90)
    (compatible r2 h93)
    (compatible r2 h94)
    (compatible r2 h95)
    (compatible r2 h96)
    (compatible r2 h97)
    (compatible r2 h98)
    (compatible r2 h101)
    (compatible r2 h103)
    (compatible r2 h105)
    (compatible r2 h108)
    (compatible r2 h111)
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
    (compatible r2 h128)
    (compatible r2 h129)
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
    (compatible r2 h146)
    (compatible r2 h147)
    (compatible r2 h148)
    (compatible r2 h150)

    ;; Calendari de reserves
    (dies-reserva r1 d2)
    (dies-reserva r1 d3)
    (dies-reserva r1 d4)
    (dies-reserva r1 d5)
    (dies-reserva r1 d6)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
