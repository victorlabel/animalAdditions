clear @s minecraft:oak_fence{pack:1b}
clear @s minecraft:chest{pack:1b}
execute as @e[type=minecraft:armor_stand,tag=pack] unless data entity @s ArmorItems[0].id run scoreboard players operation $current beeIndex = @s beeIndex
execute as @e[type=minecraft:armor_stand,tag=pack] unless data entity @s ArmorItems[1].id run scoreboard players operation $current beeIndex = @s beeIndex
execute as @e[type=minecraft:armor_stand,tag=pack] unless data entity @s ArmorItems[2].id run scoreboard players operation $current beeIndex = @s beeIndex
execute as @e[type=minecraft:armor_stand,tag=pack] unless data entity @s ArmorItems[3].id run scoreboard players operation $current beeIndex = @s beeIndex
execute positioned ~ ~1.6 ~ run summon chest_minecart ^ ^ ^0.5 {Invulnerable:1b,NoGravity:1b,Tags:["New","Up","items"],CustomName:'{"text":"Pack Bee"}}'}
execute as @e[type=chest_minecart,tag=pack] if score @s beeIndex = $current beeIndex run data modify entity @e[tag=New,limit=1] Items set from entity @s Items
execute as @e[type=bee,tag=packBee] if score @s beeIndex = $current beeIndex run data modify entity @s NoAI set value 1b
scoreboard players operation @e[tag=New] beeIndex = $current beeIndex
tag @e[tag=New] remove New
scoreboard players operation @s beeIndex = $current beeIndex
execute as @e[type=armor_stand,tag=pack] if score @s beeIndex = $current beeIndex run data modify entity @s Marker set value 1b
execute store result score @s rotX run data get entity @s Rotation[0]
execute store result score @s rotY run data get entity @s Rotation[1]
execute at @e[type=bee,sort=nearest] run playsound block.chest.open block @s ~ ~ ~
execute as @e[type=armor_stand,tag=yoke] if score @s beeIndex = $current beeIndex run data modify entity @s ArmorItems set value [{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}}]
execute as @e[type=armor_stand,tag=c] if score @s beeIndex = $current beeIndex run data modify entity @s ArmorItems set value [{id:"minecraft:chest",Count:1b,tag:{pack:1b}},{id:"minecraft:chest",Count:1b,tag:{pack:1b}},{id:"minecraft:chest",Count:1b,tag:{pack:1b}},{id:"minecraft:chest",Count:1b,tag:{pack:1b}}]