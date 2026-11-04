execute as @a[gamemode=adventure] run title @s title {"text":"Victory","color":"green"}
execute as @a[gamemode=adventure] run playsound entity.villager.celebrate ambient @s
execute as @a[gamemode=!adventure] run title @s title {"text":"Game Over","color":"dark_red"}
execute as @a[gamemode=!adventure] run playsound minecraft:event.raid.horn ambient @s

function main:end