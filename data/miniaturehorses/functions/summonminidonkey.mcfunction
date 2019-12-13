summon donkey ~ ~ ~ {Tame:1b,Age:-999999999,Tags:["mini","New"]}
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{id:"minecraft:saddle",Count:1b,tag:{horse:1b}},{id:"minecraft:saddle",Count:1b,tag:{horse:1b}},{id:"minecraft:saddle",Count:1b,tag:{horse:1b}},{}],Invisible:1b,Tags:["horse","New"]}
scoreboard players add $global horseIndex 1
scoreboard players operation @e[tag=New] horseIndex = $global horseIndex
tag @e[tag=New] remove New
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.04 10
playsound minecraft:item.armor.equip_iron player @a
kill @e[type=item,nbt={Item:{id:"minecraft:leather",Count:2b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}]