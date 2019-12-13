kill @e[type=item,sort=nearest,limit=1]
tag @s add packBee
scoreboard players add $global beeIndex 1
scoreboard players operation @s beeIndex = $global beeIndex
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}}],Invisible:1b,Tags:["pack","yoke","New"]}
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:chest",Count:1b,tag:{pack:1b}}],Invisible:1b,Tags:["pack","chest1","New","c"],Small:1b}
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:oak_fence",Count:1b,tag:{pack:1b}},{id:"minecraft:chest",Count:1b,tag:{pack:1b}}],Invisible:1b,Tags:["pack","chest2","New","c"],Small:1b}
summon minecraft:chest_minecart ~ ~ ~ {CustomName:'{"text":"Pack Bee"}}',Tags:["pack","chest","New"],NoGravity:1b}
scoreboard players operation @e[tag=New] beeIndex = $global beeIndex
tag @e[tag=New] remove New
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.04 10
playsound minecraft:item.armor.equip_iron player @a