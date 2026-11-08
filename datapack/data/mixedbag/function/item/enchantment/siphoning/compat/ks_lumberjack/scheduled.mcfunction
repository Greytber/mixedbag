data remove storage mixedbag:temp root.siphoning
data modify storage mixedbag:temp root.siphoning.uuid set from entity @s data.mixedbag.siphoning.uuid
execute align xyz positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=1,dy=51,dz=1,type=minecraft:item,limit=50,nbt={Age:0s}] at @s run function mixedbag:item/enchantment/siphoning/compat/ks_lumberjack/as_item with storage mixedbag:temp root.siphoning
#execute as @e[dx=50,dy=1,dz=1,type=minecraft:item,limit=50] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function mixedbag:item/enchantment/siphoning/compat/ks_lumberjack/as_item with storage mixedbag:temp root.siphoning
data remove storage mixedbag:temp root.siphoning
kill @s