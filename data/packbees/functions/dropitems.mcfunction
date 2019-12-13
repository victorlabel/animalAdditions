summon chest_minecart ~ ~2 ~
execute as @e[tag=pack,tag=chest] unless score @s noKill matches 1 run data modify entity @e[type=chest_minecart,sort=nearest,limit=1] Items set from entity @s Items
kill @e[type=chest_minecart,sort=nearest,limit=1]