#function mixedbag:entity/player/score/reset/tool_usage
# Sneak check
execute if predicate compliance:entity_properties/inputs/sneak run return fail
# Granting Tag
tag @s add mixedbag.siphoning.user
# JBT Hammer check
execute if predicate mixedbag:entity_properties/equipment/jbt_hammer run return run function mixedbag:item/enchantment/siphoning/hammer
#execute if predicate mixedbag:reference/jbt_hammer run return run function mixedbag:item/enchantment/siphoning/hammer
# At item's position
execute as @n[distance=..10,type=minecraft:item,nbt={Age:0s}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function mixedbag:item/enchantment/siphoning/attract/at_block
# Revoking Tag
tag @s remove mixedbag.siphoning.user