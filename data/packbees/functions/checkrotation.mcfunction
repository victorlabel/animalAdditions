scoreboard players operation @s prevRotX = @s rotX
scoreboard players operation @s prevRotY = @s rotY
execute store result score @s rotX run data get entity @s Rotation[0]
execute store result score @s rotY run data get entity @s Rotation[1]
execute if score @s[scores={timer=10..}] beeIndex matches 0.. unless score @s rotX = @s prevRotX run function packbees:close
execute if score @s[scores={timer=10..}] beeIndex matches 0.. unless score @s rotY = @s prevRotY run function packbees:close
scoreboard players add @s timer 1