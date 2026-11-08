execute if score @s mixedbag.settings matches 1.. run function mixedbag:technical/settings/main
function mixedbag:entity/player/drop_item
function mixedbag:entity/player/pet_carrier
execute if score @s compliance.mount.flag matches 1 run function mixedbag:entity/player/on_vehicle
#execute if predicate mixedbag:entity_properties/enchantment/tunneler run function mixedbag:item/enchantment/tunneler/tick
#execute if predicate mixedbag:entity_properties/enchantment/siphoning run function mixedbag:item/enchantment/siphoning/tick
#execute if predicate mixedbag:entity_properties/enchantment/tunneler run scoreboard players add @s mixedbag.tool_usage 1
#execute if predicate mixedbag:entity_properties/enchantment/siphoning run scoreboard players add @s mixedbag.tool_usage 1
#execute if score @s mixedbag.tool_usage matches 1.. run function mixedbag:entity/player/tool_usage
function mixedbag:item/enchantment/mirroring/check
