execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{"items":"#mixedbag:mortar/give_nether_bricks_quartered"}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/nether_bricks_quartered
function mixedbag:item/mortar/common
particle minecraft:item{item:"minecraft:nether_bricks"} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
playsound minecraft:block.nether_bricks.break player @a ~ ~ ~ 1 0.8 0
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{"items":"#mixedbag:mortar/give_nether_bricks_quartered"}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
item modify entity @s weapon.offhand mixedbag:count/remove_1