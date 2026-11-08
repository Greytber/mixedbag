#$data remove storage compliance:temp root.lore_changer.list[$(list_iteration)]
#say hi
#$say $(list_iteration)
#$say $(slot)
#$say $(slot_raw)
#$say $(searched_key)
$data modify storage compliance:temp root.lore_changer.list[$(list_iteration)].root set from entity @s $(slot_raw).components."minecraft:lore"[$(list_iteration)]
$execute if data storage compliance:temp root.lore_changer.list[$(list_iteration)].root{translate:$(searched_key)} run return run function compliance:item/lore_changer/success
#execute if data storage compliance:temp root.lore_changer.list[1].root{translate:"Extra durability: %s"} run scoreboard players set #comp.lore_changer.index compliance.dummy $(list_iteration)
scoreboard players add #comp.list_iteration compliance.dummy 1
execute if score #comp.list_iteration compliance.dummy >= #comp.list_length compliance.dummy run return fail
execute store result storage compliance:temp root.lore_changer.list_iteration int 1 run scoreboard players get #comp.list_iteration compliance.dummy
function compliance:item/lore_changer/iterate with storage compliance:temp root.lore_changer