tag @s remove Up
tp @s ~ ~-3 ~
scoreboard players operation $current beeIndex = @s beeIndex
execute as @e[type=minecraft:armor_stand,tag=pack] if score @s beeIndex = $current beeIndex run data modify entity @s Marker set value 0b