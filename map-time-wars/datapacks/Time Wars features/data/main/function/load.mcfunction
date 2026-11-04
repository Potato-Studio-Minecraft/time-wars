# Nettoyage et Réinitialisation
tag @a remove EndGame
effect clear @a
effect give @a regeneration infinite 255
kill @e[type=end_crystal]
kill @e[type=!minecraft:player]
kill @e[type=item]
tag @a remove PNJ

# Préparation de l'environnement
time set midnight
weather clear

fill -2 0 3 -2 0 3 minecraft:lime_stained_glass
fill 88 -5 -22 88 -5 -22 minecraft:lime_stained_glass
fill 113 -6 43 113 -6 43 minecraft:lime_stained_glass

fill 71 -9 32 71 66 17 minecraft:barrier
fill 70 66 16 70 -9 14 minecraft:barrier
fill 70 -9 14 68 66 14 minecraft:barrier
fill 68 -9 13 68 66 13 minecraft:barrier
fill 67 -9 11 67 66 12 minecraft:barrier replace minecraft:light
fill 67 -9 11 67 66 12 minecraft:barrier replace minecraft:air
fill 65 -9 10 65 66 10 minecraft:barrier
fill 64 -9 9 64 66 9 barrier
fill 63 -9 8 51 66 8 barrier
fill 50 -9 9 50 66 9 barrier
fill 49 -9 10 49 66 10 barrier
fill 48 -9 11 47 66 11 minecraft:barrier
fill 46 -9 12 46 66 12 minecraft:barrier replace air
fill 46 -9 12 46 66 12 minecraft:barrier replace light
fill 45 -9 13 45 66 13 minecraft:barrier replace air
fill 45 -9 13 45 66 13 minecraft:barrier replace light
fill 44 -9 14 44 66 14 minecraft:barrier replace air
fill 44 -9 14 44 66 14 minecraft:barrier replace light
fill 43 -9 15 43 66 15 minecraft:barrier replace air
fill 43 -9 15 43 66 15 minecraft:barrier replace light
fill 42 -9 16 43 66 34 minecraft:barrier
fill 44 -9 35 44 66 37 minecraft:barrier replace air
fill 44 -9 35 44 66 37 minecraft:barrier replace light
fill 45 -9 38 47 66 39 minecraft:barrier replace air
fill 45 -9 38 47 66 39 minecraft:barrier replace light
fill 48 -9 40 64 66 40 minecraft:barrier replace air
fill 48 -9 40 64 66 40 minecraft:barrier replace light
fill 68 -9 37 65 66 39 minecraft:barrier replace air
fill 68 -9 37 65 66 39 minecraft:barrier replace light
fill 68 -9 37 68 66 37 minecraft:barrier replace air
fill 68 -9 37 68 66 37 minecraft:barrier replace light
fill 69 -9 35 69 66 35 minecraft:barrier replace air
fill 69 -9 35 69 66 35 minecraft:barrier replace light
fill 70 -9 34 70 66 33 minecraft:barrier replace air
fill 70 -9 34 70 66 33 minecraft:barrier replace light

# Configuration des joueurs
gamemode adventure @a
experience set @a 301 levels
effect give @a minecraft:saturation 999999 1 true
effect give @a regeneration 30 3
clear @a
give @a minecraft:stick[enchantments={knockback:2}]
give @a shield

item replace entity @p container.9 with minecraft:arrow 15

# Messages et Feedback
tellraw @a ["",{"text":"Let's go","bold":true,"color":"gold"},{"text":" les","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":" gars !","bold":true,"color":"gold"}]

# Invocation de villageois
function main:villageois

# Invocation de mobs ennemis
summon minecraft:end_crystal 57.01 38.00 24.01

# Invocation d'animaux et divers
summon minecraft:wither_skeleton 66.02 -5.08 -40.00
summon minecraft:wither_skeleton 66.02 -5.08 -40.00
summon minecraft:piglin_brute 105.31 2.00 -31.29
summon minecraft:piglin_brute 105.31 2.00 -31.29
summon minecraft:skeleton 114.56 -8.00 5.54
summon minecraft:skeleton 104.48 -8.00 14.51
summon minecraft:creaking 80.39 -1.00 72.60
summon minecraft:creaking 117.42 3.00 57.25
summon minecraft:creaking 58.88 4.00 82.83
summon minecraft:creaking 58.88 4.00 82.83

summon minecraft:tropical_fish 18.49 -8.00 53.58
summon minecraft:tropical_fish 18.49 -8.00 53.58
summon minecraft:tropical_fish 18.49 -8.00 53.58
summon minecraft:tropical_fish 18.49 -8.00 53.58
summon minecraft:tropical_fish 18.49 -8.00 53.58
summon minecraft:tropical_fish 18.49 -8.00 53.58
summon minecraft:panda -2.00 7.42 39.13
summon minecraft:panda -2.00 7.42 39.13
summon minecraft:panda 14.57 -6.44 -6.00
summon minecraft:panda 14.57 -6.44 -6.00
summon minecraft:parrot 16.39 4.58 7.00
summon minecraft:parrot 16.39 4.58 7.00
summon minecraft:parrot 16.39 4.58 7.00
summon minecraft:dolphin 40.00 -9.33 23.56
summon minecraft:tropical_fish 40.00 -9.33 23.56
summon minecraft:dolphin 40.00 -9.33 23.56
summon minecraft:drowned 40.00 -9.33 23.56
summon minecraft:drowned 40.00 -9.33 23.56
summon minecraft:drowned 40.00 -9.33 23.56
summon minecraft:dolphin 56.93 -12.00 48.69
summon minecraft:dolphin 56.93 -12.00 48.69
summon minecraft:tropical_fish 56.93 -12.00 48.69
summon minecraft:tropical_fish 56.93 -12.00 48.69
summon minecraft:drowned 56.93 -12.00 48.69
summon minecraft:drowned 56.93 -12.00 48.69
summon minecraft:drowned 56.93 -12.00 48.69
summon minecraft:tropical_fish 74.29 -12.00 4.26
summon minecraft:tropical_fish 74.29 -12.00 4.26
summon minecraft:drowned 76.62 -12.00 40.69
summon minecraft:drowned 76.62 -12.00 40.69
summon minecraft:drowned 76.62 -12.00 40.69



# Clonage des coffres
clone 55 -12 25 55 -12 25 to minecraft:overworld 113 -11 79
clone 55 -12 25 55 -12 25 to minecraft:overworld 104 5 -22
clone 55 -12 25 55 -12 25 to minecraft:overworld -11 29 60
clone 55 -12 23 55 -12 23 to minecraft:overworld 49 8 83
clone 55 -12 23 55 -12 23 to minecraft:overworld 108 3 61
clone 55 -12 23 55 -12 23 to minecraft:overworld 110 -3 -41
clone 55 -12 23 55 -12 23 to minecraft:overworld 63 -2 -39
clone 55 -12 23 55 -12 23 to minecraft:overworld 7 -8 -16
clone 55 -12 23 55 -12 23 to minecraft:overworld -5 19 44
clone 55 -12 21 55 -12 21 to minecraft:overworld 2 -3 21
clone 55 -12 21 55 -12 21 to minecraft:overworld 29 -7 -26
clone 55 -12 21 55 -12 21 to minecraft:overworld 102 -2 -30
clone 55 -12 21 55 -12 21 to minecraft:overworld 119 0 54
clone 55 -12 21 55 -12 21 to minecraft:overworld 28 -1 78
clone 55 -12 19 55 -12 19 to minecraft:overworld 12 -3 -1
clone 55 -12 19 55 -12 19 to minecraft:overworld 67 -6 -14
clone 55 -12 19 55 -12 19 to minecraft:overworld 110 -9 9
clone 55 -12 19 55 -12 19 to minecraft:overworld 98 -6 61
clone 55 -12 19 55 -12 19 to minecraft:overworld 61 -6 67
clone 55 -12 19 55 -12 19 to minecraft:overworld 5 -3 72
clone 55 -12 23 55 -12 23 to minecraft:overworld -4 13 78
clone 55 -12 23 55 -12 23 to minecraft:overworld 1 -4 46
clone 55 -12 25 55 -12 25 to minecraft:overworld 56 -7 24

# Scores et Objectifs
scoreboard objectives remove Timer
scoreboard objectives add Timer dummy
scoreboard players set Temps Timer -1
scoreboard objectives remove Deaths
scoreboard objectives add Deaths deathCount
scoreboard objectives remove SurvivalPlayers
scoreboard objectives add SurvivalPlayers dummy
scoreboard objectives remove Crystal
scoreboard objectives add Crystal dummy
scoreboard players set Crsytal Crystal 0

# Fonctions personnalisées
function main:tp
function main:schedule
function main:spawn

# Gestion des joueurs et visibilité


# Barrières mondiales
worldborder set 140

#Tag de jeu
tag @a remove Joueurs
tag @a[limit=2,tag=VIP] add Joueurs
tag @a[limit=6] add Joueurs
