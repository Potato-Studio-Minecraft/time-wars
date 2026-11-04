# Gestion des blocs en fonction du score Temps Timer
execute if score Temps Timer matches 0 run fill 33 -6 25 31 -8 23 minecraft:glass
execute if score Temps Timer matches 0 run fill 32 -6 39 34 -8 41 glass
execute if score Temps Timer matches 0 run fill 44 -7 60 46 -9 58 glass
execute if score Temps Timer matches 0 run fill 66 -9 60 68 -7 58 glass
execute if score Temps Timer matches 0 run fill 82 -7 58 84 -9 56 glass
execute if score Temps Timer matches 0 run fill 85 -7 45 87 -9 43 glass
execute if score Temps Timer matches 0 run fill 87 -7 26 85 -9 24 glass
execute if score Temps Timer matches 0 run fill 87 -9 8 85 -7 6 glass
execute if score Temps Timer matches 0 run fill 71 -9 -3 73 -7 -1 glass
execute if score Temps Timer matches 0 run fill 58 -7 -2 60 -9 0 glass
execute if score Temps Timer matches 0 run fill 47 -7 -2 45 -9 0 glass
execute if score Temps Timer matches 0 run fill 35 -7 11 37 -5 9 glass

execute if score Temps Timer matches 6 run fill 33 -6 25 31 -8 23 air
execute if score Temps Timer matches 6 run fill 32 -6 39 34 -8 41 air
execute if score Temps Timer matches 6 run fill 44 -7 60 46 -9 58 air
execute if score Temps Timer matches 6 run fill 66 -9 60 68 -7 58 air
execute if score Temps Timer matches 6 run fill 82 -7 58 84 -9 56 air
execute if score Temps Timer matches 6 run fill 85 -7 45 87 -9 43 air
execute if score Temps Timer matches 6 run fill 87 -7 26 85 -9 24 air
execute if score Temps Timer matches 6 run fill 87 -9 8 85 -7 6 air
execute if score Temps Timer matches 6 run fill 71 -9 -3 73 -7 -1 air
execute if score Temps Timer matches 6 run fill 58 -7 -2 60 -9 0 air
execute if score Temps Timer matches 6 run fill 47 -7 -2 45 -9 0 air
execute if score Temps Timer matches 6 run fill 35 -7 11 37 -5 9 air

# Gestion des bouteilles d'XP
execute at @e[type=minecraft:experience_bottle] run xp add @p 5 levels
kill @e[type=minecraft:experience_bottle]

# Modification des blocs et scores en fonction du crystal
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run fill -2 0 3 -2 0 3 minecraft:lime_stained_glass replace minecraft:red_stained_glass
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run fill 88 -5 -22 88 -5 -22 minecraft:lime_stained_glass replace minecraft:red_stained_glass
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run fill 113 -6 43 113 -6 43 minecraft:lime_stained_glass replace minecraft:red_stained_glass

# Événements et titres
execute if score Temps Timer matches 720 run function main:timer
execute if score Temps Timer matches 720 run title @a title {"text":"La protection du crystal","color":"dark_purple"}
execute if score Temps Timer matches 720 run title @a subtitle {"text":"est désactivée !","color":"green"}

# Réduction progressive de la bordure
execute if score Temps Timer matches 1020 run title @a title {"text":"La bordure rétrécit","color":"red"}
execute if score Temps Timer matches 1023 run worldborder set 135
execute if score Temps Timer matches 1026 run worldborder set 130
execute if score Temps Timer matches 1029 run worldborder set 125
execute if score Temps Timer matches 1031 run worldborder set 120
execute if score Temps Timer matches 1034 run worldborder set 115
execute if score Temps Timer matches 1037 run worldborder set 110
execute if score Temps Timer matches 1040 run worldborder set 105
execute if score Temps Timer matches 1043 run worldborder set 100
execute if score Temps Timer matches 1046 run worldborder set 95
execute if score Temps Timer matches 1049 run worldborder set 90
execute if score Temps Timer matches 1052 run worldborder set 85
execute if score Temps Timer matches 1055 run worldborder set 80
execute if score Temps Timer matches 1058 run worldborder set 75
execute if score Temps Timer matches 1061 run worldborder set 70
execute if score Temps Timer matches 1064 run worldborder set 65
execute if score Temps Timer matches 1067 run worldborder set 60
execute if score Temps Timer matches 1070 run worldborder set 55
execute if score Temps Timer matches 1073 run worldborder set 50
execute if score Temps Timer matches 1075 run worldborder set 45
execute if score Temps Timer matches 1078 run worldborder set 40
execute if score Temps Timer matches 1081 run worldborder set 39
execute if score Temps Timer matches 1084 run worldborder set 38
execute if score Temps Timer matches 1087 run worldborder set 37
execute if score Temps Timer matches 1090 run worldborder set 36
execute if score Temps Timer matches 1093 run worldborder set 35
execute if score Temps Timer matches 1094 run worldborder set 34
execute if score Temps Timer matches 1097 run worldborder set 33
execute if score Temps Timer matches 1100 run worldborder set 32
execute if score Temps Timer matches 1103 run worldborder set 31
execute if score Temps Timer matches 1106 run worldborder set 30


# Gestion des joueurs morts
execute as @a[scores={Deaths=1..}] run effect give @s minecraft:blindness 4 0 false
execute as @a[scores={Deaths=1..}] run gamemode spectator @s
execute as @a[scores={Deaths=1..}] run tp @s 57.01 38.00 24.01
execute as @a[scores={Deaths=1..}] run title @s title {"text":"Vous êtes mort !","color":"dark_red","bold":true}
execute as @a[scores={Deaths=1..}] run clear @s
execute as @a[scores={Deaths=1..}] run effect give @s regeneration 1 10 false
execute as @a[scores={Deaths=1..}] run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" est mort ","color":"red"}]
scoreboard players set @a[scores={Deaths=1..}] Deaths 0
# Comptage des joueurs en survie
scoreboard players set @a SurvivalPlayers 0
execute as @a[gamemode=adventure] run scoreboard players add @a SurvivalPlayers 1
execute if entity @a[scores={SurvivalPlayers=1}] run function main:victoire/gameover
execute if entity @a[scores={SurvivalPlayers=1}] run scoreboard objectives remove SurvivalPlayers 


# Effet de visibilité pour les joueurs
execute as @a[gamemode=adventure] if score @s SurvivalPlayers matches 2 run effect give @a[gamemode=adventure] minecraft:glowing infinite 255 false
tp @e[type=item] @p

# Gestion de l'actionbar


# Crystal détruit
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run scoreboard players add Crsytal Crystal 1
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run fill -2 0 3 -2 0 3 minecraft:red_stained_glass
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run fill 88 -5 -22 88 -5 -22 minecraft:red_stained_glass
execute unless entity @e[type=end_crystal] positioned 57.01 38.00 24.01 run fill 113 -6 43 113 -6 43 minecraft:red_stained_glass
execute if score Crsytal Crystal matches 1 run title @a title {"text":"Le crystal","color":"red"}
execute if score Crsytal Crystal matches 1 run title @a subtitle {"text":"a été détruit","color":"gold"}

execute if score End Timer matches ..9 run time set midnight
