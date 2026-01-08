execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:resin_clump",count:1}},distance=..8] run return run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:resin_clump",count:2}},distance=..8] run return run data modify entity @s Item.count set value 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:resin_clump",count:3}},distance=..8] run return run data modify entity @s Item.count set value 2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:resin_clump",count:4}},distance=..8] run return run data modify entity @s Item.count set value 3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:resin_clump",count:5}},distance=..8] run return run data modify entity @s Item.count set value 4
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:resin_clump",count:6}},distance=..8] run return run data modify entity @s Item.count set value 5