data remove storage mixedbag:temp root.siphoning
data modify storage mixedbag:temp root.siphoning.uuid set from entity @s data.mixedbag.siphoning.uuid
execute as @n[distance=..10,type=minecraft:item,limit=9] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function mixedbag:item/enchantment/siphoning/hammer/as_item with storage mixedbag:temp root.siphoning
data remove storage mixedbag:temp root.siphoning
kill @s