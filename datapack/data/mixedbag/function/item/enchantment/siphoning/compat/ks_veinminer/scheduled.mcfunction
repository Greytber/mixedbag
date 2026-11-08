data remove storage mixedbag:temp root.siphoning
data modify storage mixedbag:temp root.siphoning.uuid set from entity @s data.mixedbag.siphoning.uuid
execute align xyz positioned ~-1 ~-1 ~-1 as @e[dx=3,dy=3,dz=3,type=minecraft:item,limit=27,nbt={Age:0s}] at @s run function mixedbag:item/enchantment/siphoning/compat/ks_veinminer/as_item with storage mixedbag:temp root.siphoning
#execute as @n[distance=..10,type=minecraft:item,limit=27,nbt={Age:0s}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function mixedbag:item/enchantment/siphoning/compat/ks_veinminer/as_item with storage mixedbag:temp root.siphoning
data remove storage mixedbag:temp root.siphoning
kill @s