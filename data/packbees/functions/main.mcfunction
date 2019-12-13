execute as @e[type=item,nbt={Item:{id:"minecraft:oak_fence",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:chest",Count:2b}},distance=..1] run function packbees:givepack
execute at @e[type=item,nbt={Item:{tag:{beepack:1b}}}] as @e[type=bee,distance=..3] unless score @s beeIndex matches 0.. run function packbees:equip
execute at @e[type=minecraft:bee,tag=packBee] as @e[tag=pack] if score @s beeIndex = @e[type=bee,sort=nearest,limit=1] beeIndex run function packbees:bind
execute as @a at @s if data entity @s SelectedItem.tag{pack:1b} run function packbees:open
execute as @a[scores={beeIndex=0..}] run function packbees:checkrotation
execute as @e[tag=pack,tag=chest1] at @s unless score @s noKill matches 1 run function packbees:dropitems
execute as @e[tag=Up] at @s run function packbees:downcheck
execute as @e[tag=pack] unless score @s noKill matches 1 run kill @s
scoreboard players reset @e[tag=pack] noKill