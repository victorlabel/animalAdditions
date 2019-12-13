execute if entity @s[tag=yoke] run tp @s ~ ~-1.35 ~ ~90 ~
execute if entity @s[tag=chest1] rotated ~ 0 run tp @s ^0.4 ^-0.5 ^ ~-90 ~
execute if entity @s[tag=chest2] rotated ~ 0 run tp @s ^-0.4 ^-0.5 ^ ~90 ~
execute if entity @s[tag=chest,tag=!open] run tp @s ~ 0 ~
scoreboard players add @s noKill 1