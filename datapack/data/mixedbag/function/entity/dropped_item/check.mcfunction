scoreboard players reset @s mixedbag.dropped.stone_sword
scoreboard players reset @s mixedbag.dropped.poisonous_potato
execute as @e[type=item,distance=..2,nbt={Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_data":{mixedbag:{mirrored:1b}}}}}] run function mixedbag:entity/dropped_item/clear