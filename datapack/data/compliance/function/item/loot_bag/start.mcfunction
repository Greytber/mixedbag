playsound valiance:item.loot_bag player @a

data remove storage compliance:storage root.temp

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{compliance:{id:"loot_bag"}}] run function compliance:item/loot_bag/mainhand
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{compliance:{id:"loot_bag"}}] unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{compliance:{id:"loot_bag"}}] run function compliance:item/loot_bag/offhand

function compliance:item/loot_bag/drop_loot_table with storage compliance:storage root.temp.item.components."minecraft:custom_data".compliance