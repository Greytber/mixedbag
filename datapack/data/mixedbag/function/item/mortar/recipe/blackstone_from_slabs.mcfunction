execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{"items":"#mixedbag:mortar/give_blackstone_halved"}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/blackstone_from_slabs
function mixedbag:item/mortar/common
particle minecraft:item{item:"minecraft:blackstone"} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
playsound minecraft:block.gilded_blackstone.break player @a ~ ~ ~ 1 0.8 0
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{"items":"#mixedbag:mortar/give_blackstone_halved"}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
item modify entity @s weapon.offhand mixedbag:count/remove_1