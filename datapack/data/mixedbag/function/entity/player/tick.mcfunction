execute if score @s compliance.mount.flag matches 1 run function mixedbag:entity/player/on_vehicle
execute if score @s mixedbag.dropped.stone_sword matches 1.. run function mixedbag:entity/dropped_item/check
#execute if predicate mixedbag:entity_properties/enchantment/tunneler run function mixedbag:item/enchantment/tunneler/tick
#execute if predicate mixedbag:entity_properties/enchantment/siphoning run function mixedbag:item/enchantment/siphoning/tick
execute if predicate mixedbag:entity_properties/enchantment/tunneler run scoreboard players add @s mixedbag.tool_usage 1
execute if predicate mixedbag:entity_properties/enchantment/siphoning run scoreboard players add @s mixedbag.tool_usage 1
execute if score @s mixedbag.tool_usage matches 1.. run function mixedbag:entity/player/tool_usage
function mixedbag:item/enchantment/mirroring/check
