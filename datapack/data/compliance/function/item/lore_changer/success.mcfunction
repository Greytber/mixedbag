#say hiii
scoreboard players operation #comp.lore_changer.index compliance.dummy = #comp.list_iteration compliance.dummy
execute store result storage compliance:temp root.lore_changer.offset int 1 run scoreboard players get #comp.lore_changer.index compliance.dummy
execute if data storage compliance:temp root.lore_changer{modifier:{clear:1b}} run return run function compliance:item/lore_changer/clear
#execute if data storage compliance:temp root.lore_changer.with run function compliance:item/lore_changer/modify_with with storage compliance:temp root.lore_changer
function compliance:item/lore_changer/modify with storage compliance:temp root.lore_changer