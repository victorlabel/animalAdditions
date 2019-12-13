clear @s minecraft:saddle{horse:1b}
execute as @e[type=minecraft:armor_stand,tag=horse] unless data entity @s ArmorItems[0].id run scoreboard players operation $current horseIndex = @s horseIndex
execute as @e[type=minecraft:armor_stand,tag=horse] unless data entity @s ArmorItems[1].id run scoreboard players operation $current horseIndex = @s horseIndex
execute as @e[type=minecraft:armor_stand,tag=horse] unless data entity @s ArmorItems[2].id run scoreboard players operation $current horseIndex = @s horseIndex
execute as @e[type=#miniaturehorses:mini,tag=mini] if score @s horseIndex = $current horseIndex run data merge entity @e[type=#miniaturehorses:mini,limit=1,sort=nearest] {Age:0}
execute as @e[type=#miniaturehorses:mini,tag=mini] if score @s horseIndex = $current horseIndex run scoreboard players add @s timer 1
execute as @e[type=minecraft:armor_stand,tag=horse] if score @s horseIndex = $current horseIndex run data modify entity @s ArmorItems set value [{id:"minecraft:saddle",Count:1b,tag:{horse:1b}},{id:"minecraft:saddle",Count:1b,tag:{horse:1b}},{id:"minecraft:saddle",Count:1b,tag:{horse:1b}},{}]
execute as @e[type=minecraft:armor_stand,tag=horse] if score @s horseIndex = $current horseIndex run data modify entity @s Marker set value 1b
scoreboard players operation @s horseIndex = $current horseIndex