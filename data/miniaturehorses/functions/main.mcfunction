execute as @e[type=item,nbt={Item:{id:"minecraft:apple",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:leather",Count:2b}},distance=..1] run function miniaturehorses:summonminihorse
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:leather",Count:2b}},distance=..1] run function miniaturehorses:summonminidonkey
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_carrot",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:leather",Count:2b}},distance=..1] run function miniaturehorses:summonminimule
execute as @e[type=item,nbt={Item:{id:"minecraft:apple",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:white_wool",Count:2b}},distance=..1] run function miniaturehorses:summonminillama
execute as @a if data entity @s SelectedItem.tag{horse:1b} at @s positioned ^ ^ ^1 run function miniaturehorses:ride
execute at @e[type=#miniaturehorses:mini,tag=mini] as @e[tag=horse] if score @s horseIndex = @e[type=#miniaturehorses:mini,sort=nearest,limit=1] horseIndex run function miniaturehorses:bind
execute as @a[scores={horseIndex=0..}] run function miniaturehorses:checkdismount
execute as @e[type=#miniaturehorses:mini,tag=mini,scores={timer=0..}] run function miniaturehorses:checksize
execute as @e[tag=horse] unless score @s noKill matches 1 run kill @s
scoreboard players reset @e[tag=horse] noKill