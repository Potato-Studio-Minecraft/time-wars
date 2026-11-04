experience add @a -1 levels
execute as @a if entity @s[level=..0] run scoreboard players set @s Deaths 1
execute as @a if entity @s[level=..0] run xp add @s 999999 levels
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_stained_glass run give @s minecraft:experience_bottle 1
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_stained_glass run playsound minecraft:entity.experience_orb.pickup ambient @s
schedule function main:schedule 1s

#plus de temps
execute as @a at @s if block ~ ~-1 ~ minecraft:red_stained_glass run playsound minecraft:block.anvil.place ambient @s
execute as @a at @s if block ~ ~-1 ~ minecraft:red_stained_glass run tellraw @s [{"text":"Plus de temps disponible","color":"red"}]
scoreboard players add Temps Timer 1

execute if score Temps Timer matches 1 run title @a title {"text":"5","color":"dark_red"}
execute if score Temps Timer matches 1 run playsound minecraft:block.anvil.land ambient @a
execute if score Temps Timer matches 2 run title @a title {"text":"4","color":"red"}
execute if score Temps Timer matches 2 run playsound minecraft:block.anvil.land ambient @a
execute if score Temps Timer matches 3 run title @a title {"text":"3","color":"gold"}
execute if score Temps Timer matches 3 run playsound minecraft:block.anvil.land ambient @a
execute if score Temps Timer matches 4 run title @a title {"text":"2","color":"yellow"}
execute if score Temps Timer matches 4 run playsound minecraft:block.anvil.land ambient @a
execute if score Temps Timer matches 5 run title @a title {"text":"1","color":"green"}
execute if score Temps Timer matches 5 run playsound minecraft:block.anvil.land ambient @a
execute if score Temps Timer matches 6 run title @a title {"text":"Puisse le sort ","color":"yellow"}
execute if score Temps Timer matches 6 run title @a subtitle {"text":"vous être favorable","color":"yellow"}
execute if score Temps Timer matches 6 run playsound minecraft:block.anvil.land ambient @a

execute if score Temps Timer matches 1020 run title @a title {"text":"La bordure rétrécit","color":"red"}
execute if score Temps Timer matches 1023 run tellraw @a {"text":"La bordure est maintenant à 135 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1026 run tellraw @a {"text":"La bordure est maintenant à 130 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1029 run tellraw @a {"text":"La bordure est maintenant à 125 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1031 run tellraw @a {"text":"La bordure est maintenant à 120 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1034 run tellraw @a {"text":"La bordure est maintenant à 115 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1037 run tellraw @a {"text":"La bordure est maintenant à 110 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1040 run tellraw @a {"text":"La bordure est maintenant à 105 blocs !","color":"green","bold":true}
execute if score Temps Timer matches 1043 run tellraw @a {"text":"La bordure est maintenant à 100 blocs !","color":"gold","bold":true}
execute if score Temps Timer matches 1046 run tellraw @a {"text":"La bordure est maintenant à 95 blocs !","color":"gold","bold":true}
execute if score Temps Timer matches 1049 run tellraw @a {"text":"La bordure est maintenant à 90 blocs !","color":"gold","bold":true}
execute if score Temps Timer matches 1052 run tellraw @a {"text":"La bordure est maintenant à 85 blocs !","color":"gold","bold":true}
execute if score Temps Timer matches 1055 run tellraw @a {"text":"La bordure est maintenant à 80 blocs !","color":"yellow","bold":true}
execute if score Temps Timer matches 1058 run tellraw @a {"text":"La bordure est maintenant à 75 blocs !","color":"yellow","bold":true}
execute if score Temps Timer matches 1061 run tellraw @a {"text":"La bordure est maintenant à 70 blocs !","color":"yellow","bold":true}
execute if score Temps Timer matches 1064 run tellraw @a {"text":"La bordure est maintenant à 65 blocs !","color":"aqua","bold":true}
execute if score Temps Timer matches 1067 run tellraw @a {"text":"La bordure est maintenant à 60 blocs !","color":"aqua","bold":true}
execute if score Temps Timer matches 1070 run tellraw @a {"text":"La bordure est maintenant à 55 blocs !","color":"aqua","bold":true}
execute if score Temps Timer matches 1073 run tellraw @a {"text":"La bordure est maintenant à 50 blocs !","color":"blue","bold":true}
execute if score Temps Timer matches 1075 run tellraw @a {"text":"La bordure est maintenant à 45 blocs !","color":"blue","bold":true}
execute if score Temps Timer matches 1078 run tellraw @a {"text":"La bordure est maintenant à 40 blocs !","color":"blue","bold":true}
execute if score Temps Timer matches 1081 run tellraw @a {"text":"La bordure est maintenant à 39 blocs !","color":"red","bold":true}
execute if score Temps Timer matches 1084 run tellraw @a {"text":"La bordure est maintenant à 38 blocs !","color":"red","bold":true}
execute if score Temps Timer matches 1087 run tellraw @a {"text":"La bordure est maintenant à 37 blocs !","color":"red","bold":true}
execute if score Temps Timer matches 1090 run tellraw @a {"text":"La bordure est maintenant à 36 blocs !","color":"red","bold":true}
execute if score Temps Timer matches 1093 run tellraw @a {"text":"La bordure est maintenant à 35 blocs !","color":"red","bold":true}
execute if score Temps Timer matches 1094 run tellraw @a {"text":"La bordure est maintenant à 34 blocs !","color":"dark_red","bold":true}
execute if score Temps Timer matches 1097 run tellraw @a {"text":"La bordure est maintenant à 33 blocs !","color":"dark_red","bold":true}
execute if score Temps Timer matches 1100 run tellraw @a {"text":"La bordure est maintenant à 32 blocs !","color":"dark_red","bold":true}
execute if score Temps Timer matches 1103 run tellraw @a {"text":"La bordure est maintenant à 31 blocs !","color":"dark_red","bold":true}
execute if score Temps Timer matches 1106 run tellraw @a {"text":"La bordure est maintenant à 30 blocs !","color":"dark_red","bold":true}

execute if score Temps Timer matches 300 run effect clear @a regeneration
