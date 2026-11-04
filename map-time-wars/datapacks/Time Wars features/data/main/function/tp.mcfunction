# Commande pour attribuer chaque position aux joueurs aléatoires sans tag

# Attribue le tag "position1" à un joueur sans tag
tag @r[tag=Joueurs,tag=!position1,tag=!position2,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position3,tag=!position10,tag=!position11,tag=!position12] add position1

# Attribue le tag "position2" à un joueur sans tag
tag @r[tag=Joueurs,tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position2

# Attribue le tag "position3" à un joueur sans tag
tag @r[tag=Joueurs,tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position3

# Attribue le tag "position4" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position4

# Attribue le tag "position5" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position5

# Attribue le tag "position6" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position6

# Attribue le tag "position7" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position7

# Attribue le tag "position8" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position8

# Attribue le tag "position9" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position9

# Attribue le tag "position10" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position10

# Attribue le tag "position11" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position11

# Attribue le tag "position12" à un joueur sans tag
tag @r[tag=!position1,tag=!position2,tag=!position3,tag=!position4,tag=!position5,tag=!position6,tag=!position7,tag=!position8,tag=!position9,tag=!position10,tag=!position11,tag=!position12] add position12

tp @e[tag=position1] 32 -8 24 facing 33.70 -8.00 24.51
tp @e[tag=position2] 33 -8 40 facing 34.00 -8 40.5
tp @e[tag=position3] 45 -9 59 facing 45.51 -9.00 59.28
tp @e[tag=position4] 67 -9 59 facing 67.50 -9.00 59.06
tp @e[tag=position5] 83 -9 57 facing 83.18 -9.00 57.08
tp @e[tag=position6] 86 -9 44 facing 86.01 -9.00 44.48
tp @e[tag=position7] 86 -9 25 facing 86.10 -9.00 25.48
tp @e[tag=position8] 86 -9 7 facing 86.02 -9.00 7.79
tp @e[tag=position9] 72 -9 -2 facing 72.32 -9.00 -1.09
tp @e[tag=position10] 59 -9 -1 facing 59.50 -9.00 -0.19
tp @e[tag=position11] 46 -9 -1 facing 46.48 -9.00 -0.28
tp @e[tag=position12] 36 -7 10 facing 36.85 -7.00 10.85

tag @e remove position1
tag @e remove position2
tag @e remove position3
tag @e remove position4
tag @e remove position5
tag @e remove position6
tag @e remove position7
tag @e remove position8
tag @e remove position9
tag @e remove position10
tag @e remove position11
tag @e remove position12
tag @a remove EndGame