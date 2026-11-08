#$item modify entity @s $(slot) {type:"minecraft:set_lore",entity:"this",lore:[$(modifier)],mode:"replace_section",offset:$(offset)}
data modify storage compliance:temp root.lore_changer.swap set from entity @s SelectedItem
tag @s add compliance.lore_changer.swap
execute summon minecraft:item_display run function compliance:item/lore_changer/clear_display with storage compliance:temp root.lore_changer
tag @s remove compliance.lore_changer.swap
data remove storage compliance:temp root.lore_changer.swap
#data modify storage compliance:temp root.display set from entity @s SelectedItem.tag.display
#data remove storage compliance:temp root.display.Lore
#item modify entity @s weapon.mainhand ns:replace_display 