scoreboard players reset #comp.lore_changer.index compliance.dummy
scoreboard players reset #comp.list_iteration compliance.dummy
scoreboard players reset #comp.list_length compliance.dummy
data remove storage compliance:temp root.lore_changer
#data remove storage compliance:temp root.lore_changer.list_length
#data remove storage compliance:temp root.lore_changer.list
#data remove storage compliance:temp root.lore_changer.slot
#data remove storage compliance:temp root.lore_changer.slot_raw
#data remove storage compliance:temp root.lore_changer.searched_key
#data remove storage compliance:temp root.lore_changer.modifier
#data remove storage compliance:temp root.lore_changer.offset
$data modify storage compliance:temp root.lore_changer.list set from entity @s $(slot_raw).components."minecraft:lore"
$data modify storage compliance:temp root.lore_changer.slot set value $(slot)
$data modify storage compliance:temp root.lore_changer.slot_raw set value $(slot_raw)
$data modify storage compliance:temp root.lore_changer.searched_key set value $(searched_key)
$data modify storage compliance:temp root.lore_changer.modifier set value $(modifier)
#$data modify storage compliance:temp root.lore_changer.translation_key set value $(translate)
#$data modify storage compliance:temp root.lore_changer.with set value $(with)
#data modify storage compliance:temp root.lore_changer.list[0].root set from entity @s Inventory[0].components."minecraft:lore"[0]
#data modify storage compliance:temp root.lore_changer.list[1].root set from entity @s Inventory[0].components."minecraft:lore"[1]
#data modify storage compliance:temp root.lore_changer.list[2].root set from entity @s Inventory[0].components."minecraft:lore"[2]
execute store result score #comp.list_length compliance.dummy run data get storage compliance:temp root.lore_changer.list
scoreboard players set #comp.list_iteration compliance.dummy 0
execute store result storage compliance:temp root.lore_changer.list_iteration int 1 run scoreboard players get #comp.list_iteration compliance.dummy
#function compliance:item/lore_changer/iterate
function compliance:item/lore_changer/iterate with storage compliance:temp root.lore_changer