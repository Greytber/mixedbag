# KS Enchantments Vein Miner check
execute if predicate mixedbag:entity_properties/enchantment/compat/ks_lumberjack run return run function mixedbag:item/enchantment/siphoning/compat/ks_lumberjack
# KS Enchantments Vein Miner check
execute if predicate mixedbag:entity_properties/enchantment/compat/ks_vein_miner run return run function mixedbag:item/enchantment/siphoning/compat/ks_veinminer
#execute if predicate mixedbag:entity_properties/enchantment/compat/ks_vein_miner as @n[distance=..10,type=minecraft:item,nbt={Age:0s}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run return run function mixedbag:item/enchantment/siphoning/attract/at_block_3x3x3
# JBT Hammer check
execute if predicate mixedbag:entity_properties/equipment/jbt_hammer run return run function mixedbag:item/enchantment/siphoning/compat/hammer
# At item's position
execute as @n[distance=..10,type=minecraft:item,nbt={Age:0s}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run return run function mixedbag:item/enchantment/siphoning/attract/at_block