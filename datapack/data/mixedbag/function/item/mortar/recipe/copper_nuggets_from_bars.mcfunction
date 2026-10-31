execute unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{"weapon.*":{items:"#mixedbag:mortar/give_copper_nuggets_from_bars"}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/copper_nuggets_from_bars
function mixedbag:item/mortar/common
particle minecraft:item{item:"minecraft:copper_bars"} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
playsound minecraft:block.copper.break player @a ~ ~ ~ 1 0.8 0
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{"weapon.mainhand":{items:"#mixedbag:mortar/give_copper_nuggets_from_bars"}}}} run return run item modify entity @s weapon.mainhand compliance:count/remove_1
item modify entity @s weapon.offhand compliance:count/remove_1