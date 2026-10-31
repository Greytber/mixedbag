execute unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{"weapon.*":{items:"minecraft:resin_brick"}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/resin_clump_from_resin_brick
function mixedbag:item/mortar/common
particle minecraft:item{item:"minecraft:resin_brick"} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
playsound minecraft:block.resin.break player @a ~ ~ ~ 1 0.8 0
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{"weapon.mainhand":{items:"minecraft:resin_brick"}}}} run return run item modify entity @s weapon.mainhand compliance:count/remove_1
item modify entity @s weapon.offhand compliance:count/remove_1