execute at @s as @e[tag=items] if score @s beeIndex = @p beeIndex run tag @s add close
execute as @e[tag=close] at @e[tag=chest] if score @s beeIndex = @e[limit=1,sort=nearest] beeIndex run data modify entity @e[limit=1,sort=nearest] Items set from entity @s Items
tag @e[tag=close] remove items
execute as @e[tag=close] at @s run tp @s ~ -10 ~
execute as @e[type=bee] if score @s beeIndex = @p beeIndex run data modify entity @s NoAI set value 0b
scoreboard players reset @s beeIndex
scoreboard players reset @s timer
execute at @e[type=bee,sort=nearest] run playsound block.chest.close block @s ~ ~ ~