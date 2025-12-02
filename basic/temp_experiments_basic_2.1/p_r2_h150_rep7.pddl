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
    ;; h2: 1 persones
    ;; h3: 2 persones
    ;; h4: 2 persones
    ;; h5: 4 persones
    ;; h6: 3 persones
    ;; h7: 2 persones
    ;; h8: 3 persones
    ;; h9: 4 persones
    ;; h10: 3 persones
    ;; h11: 4 persones
    ;; h12: 2 persones
    ;; h13: 3 persones
    ;; h14: 4 persones
    ;; h15: 3 persones
    ;; h16: 4 persones
    ;; h17: 2 persones
    ;; h18: 4 persones
    ;; h19: 1 persones
    ;; h20: 1 persones
    ;; h21: 3 persones
    ;; h22: 1 persones
    ;; h23: 2 persones
    ;; h24: 4 persones
    ;; h25: 4 persones
    ;; h26: 4 persones
    ;; h27: 1 persones
    ;; h28: 2 persones
    ;; h29: 1 persones
    ;; h30: 2 persones
    ;; h31: 2 persones
    ;; h32: 2 persones
    ;; h33: 2 persones
    ;; h34: 1 persones
    ;; h35: 2 persones
    ;; h36: 2 persones
    ;; h37: 1 persones
    ;; h38: 2 persones
    ;; h39: 2 persones
    ;; h40: 1 persones
    ;; h41: 4 persones
    ;; h42: 4 persones
    ;; h43: 1 persones
    ;; h44: 3 persones
    ;; h45: 1 persones
    ;; h46: 4 persones
    ;; h47: 2 persones
    ;; h48: 3 persones
    ;; h49: 2 persones
    ;; h50: 3 persones
    ;; h51: 4 persones
    ;; h52: 2 persones
    ;; h53: 4 persones
    ;; h54: 2 persones
    ;; h55: 3 persones
    ;; h56: 2 persones
    ;; h57: 2 persones
    ;; h58: 1 persones
    ;; h59: 4 persones
    ;; h60: 4 persones
    ;; h61: 4 persones
    ;; h62: 2 persones
    ;; h63: 1 persones
    ;; h64: 1 persones
    ;; h65: 3 persones
    ;; h66: 2 persones
    ;; h67: 3 persones
    ;; h68: 1 persones
    ;; h69: 4 persones
    ;; h70: 4 persones
    ;; h71: 2 persones
    ;; h72: 4 persones
    ;; h73: 1 persones
    ;; h74: 4 persones
    ;; h75: 1 persones
    ;; h76: 3 persones
    ;; h77: 4 persones
    ;; h78: 2 persones
    ;; h79: 2 persones
    ;; h80: 3 persones
    ;; h81: 1 persones
    ;; h82: 2 persones
    ;; h83: 1 persones
    ;; h84: 4 persones
    ;; h85: 1 persones
    ;; h86: 2 persones
    ;; h87: 4 persones
    ;; h88: 1 persones
    ;; h89: 3 persones
    ;; h90: 4 persones
    ;; h91: 1 persones
    ;; h92: 4 persones
    ;; h93: 2 persones
    ;; h94: 2 persones
    ;; h95: 2 persones
    ;; h96: 1 persones
    ;; h97: 3 persones
    ;; h98: 3 persones
    ;; h99: 4 persones
    ;; h100: 2 persones
    ;; h101: 1 persones
    ;; h102: 2 persones
    ;; h103: 1 persones
    ;; h104: 3 persones
    ;; h105: 1 persones
    ;; h106: 3 persones
    ;; h107: 1 persones
    ;; h108: 2 persones
    ;; h109: 1 persones
    ;; h110: 2 persones
    ;; h111: 1 persones
    ;; h112: 2 persones
    ;; h113: 1 persones
    ;; h114: 1 persones
    ;; h115: 2 persones
    ;; h116: 3 persones
    ;; h117: 1 persones
    ;; h118: 2 persones
    ;; h119: 4 persones
    ;; h120: 3 persones
    ;; h121: 1 persones
    ;; h122: 1 persones
    ;; h123: 3 persones
    ;; h124: 2 persones
    ;; h125: 3 persones
    ;; h126: 2 persones
    ;; h127: 4 persones
    ;; h128: 1 persones
    ;; h129: 2 persones
    ;; h130: 3 persones
    ;; h131: 2 persones
    ;; h132: 4 persones
    ;; h133: 3 persones
    ;; h134: 4 persones
    ;; h135: 3 persones
    ;; h136: 1 persones
    ;; h137: 1 persones
    ;; h138: 4 persones
    ;; h139: 2 persones
    ;; h140: 4 persones
    ;; h141: 4 persones
    ;; h142: 4 persones
    ;; h143: 3 persones
    ;; h144: 3 persones
    ;; h145: 3 persones
    ;; h146: 1 persones
    ;; h147: 1 persones
    ;; h148: 3 persones
    ;; h149: 3 persones
    ;; h150: 3 persones

    ;; Compatibilitats (persones_reserva <= capacitat_habitacio)
    ;; Reserva r1 (3 pax): 
    (compatible r1 h1)
    (compatible r1 h5)
    (compatible r1 h6)
    (compatible r1 h8)
    (compatible r1 h9)
    (compatible r1 h10)
    (compatible r1 h11)
    (compatible r1 h13)
    (compatible r1 h14)
    (compatible r1 h15)
    (compatible r1 h16)
    (compatible r1 h18)
    (compatible r1 h21)
    (compatible r1 h24)
    (compatible r1 h25)
    (compatible r1 h26)
    (compatible r1 h41)
    (compatible r1 h42)
    (compatible r1 h44)
    (compatible r1 h46)
    (compatible r1 h48)
    (compatible r1 h50)
    (compatible r1 h51)
    (compatible r1 h53)
    (compatible r1 h55)
    (compatible r1 h59)
    (compatible r1 h60)
    (compatible r1 h61)
    (compatible r1 h65)
    (compatible r1 h67)
    (compatible r1 h69)
    (compatible r1 h70)
    (compatible r1 h72)
    (compatible r1 h74)
    (compatible r1 h76)
    (compatible r1 h77)
    (compatible r1 h80)
    (compatible r1 h84)
    (compatible r1 h87)
    (compatible r1 h89)
    (compatible r1 h90)
    (compatible r1 h92)
    (compatible r1 h97)
    (compatible r1 h98)
    (compatible r1 h99)
    (compatible r1 h104)
    (compatible r1 h106)
    (compatible r1 h116)
    (compatible r1 h119)
    (compatible r1 h120)
    (compatible r1 h123)
    (compatible r1 h125)
    (compatible r1 h127)
    (compatible r1 h130)
    (compatible r1 h132)
    (compatible r1 h133)
    (compatible r1 h134)
    (compatible r1 h135)
    (compatible r1 h138)
    (compatible r1 h140)
    (compatible r1 h141)
    (compatible r1 h142)
    (compatible r1 h143)
    (compatible r1 h144)
    (compatible r1 h145)
    (compatible r1 h148)
    (compatible r1 h149)
    (compatible r1 h150)

    ;; Reserva r2 (4 pax): 
    (compatible r2 h5)
    (compatible r2 h9)
    (compatible r2 h11)
    (compatible r2 h14)
    (compatible r2 h16)
    (compatible r2 h18)
    (compatible r2 h24)
    (compatible r2 h25)
    (compatible r2 h26)
    (compatible r2 h41)
    (compatible r2 h42)
    (compatible r2 h46)
    (compatible r2 h51)
    (compatible r2 h53)
    (compatible r2 h59)
    (compatible r2 h60)
    (compatible r2 h61)
    (compatible r2 h69)
    (compatible r2 h70)
    (compatible r2 h72)
    (compatible r2 h74)
    (compatible r2 h77)
    (compatible r2 h84)
    (compatible r2 h87)
    (compatible r2 h90)
    (compatible r2 h92)
    (compatible r2 h99)
    (compatible r2 h119)
    (compatible r2 h127)
    (compatible r2 h132)
    (compatible r2 h134)
    (compatible r2 h138)
    (compatible r2 h140)
    (compatible r2 h141)
    (compatible r2 h142)

    ;; Calendari de reserves
    (dies-reserva r1 d4)
    (dies-reserva r2 d8)
  )

  (:goal (and
    (assignada r1)
    (assignada r2)
  ))
)
