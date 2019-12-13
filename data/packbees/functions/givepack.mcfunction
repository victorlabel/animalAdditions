kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:2b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_fence",Count:1b}}]
summon item ~ ~ ~ {Item:{id:"minecraft:chest",Count:1b,tag:{display:{Name:'[{"text":"BeePack","italic":"false","color":"yellow"}," (",{"keybind":"key.drop"},")"]',Lore:['{"text":"Drop near a bee for the bee to equip"}']},beepack:1b}}}
playsound minecraft:block.anvil.use player @a
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.04 10