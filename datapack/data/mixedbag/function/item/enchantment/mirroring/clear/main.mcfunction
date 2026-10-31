advancement revoke @s only mixedbag:technical/inventory_changed/mirroring_item
execute if predicate mixedbag:entity_properties/enchantment/mirroring run return run item modify entity @s mixedbag:clear_mirroring_except_offhand mixedbag:clear_mirrored
item modify entity @s mixedbag:clear_mirroring mixedbag:clear_mirrored
#execute if predicate mixedbag:entity_properties/enchantment/mirroring run return run function mixedbag:item/enchantment/mirroring/clear/non_offhand
#function mixedbag:item/enchantment/mirroring/clear/all