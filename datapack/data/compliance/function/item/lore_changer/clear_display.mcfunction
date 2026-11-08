tag @s add compliance.lore_changer.swap
say hii
item replace entity @s contents from entity @p[tag=compliance.lore_changer.swap] weapon.mainhand 
#data modify entity @n[type=minecraft:item_display] item set from storage compliance:temp root.lore_changer.swap
$data remove entity @s item.components."minecraft:lore"[$(offset)]
item replace entity @p[tag=compliance.lore_changer.swap] weapon.mainhand from entity @n[type=minecraft:item_display,tag=compliance.lore_changer.swap] contents
#data remove entity @s item.components."minecraft:lore"[1]
kill @s