execute as @e[type=minecraft:armor_stand,tag=horse] if score @s horseIndex = @p horseIndex run data modify entity @s Marker set value 0b
scoreboard players reset @s horseIndex
scoreboard players reset @s timer