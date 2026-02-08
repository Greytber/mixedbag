execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{"items":"minecraft:breeze_rod"}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/wind_charge_rod
function mixedbag:item/mortar/common
particle minecraft:item{item:"minecraft:breeze_rod"} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
summon wind_charge ~ ~ ~ {Motion:[0.0,-10.0,0.0]}
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{"items":"minecraft:breeze_rod"}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
item modify entity @s weapon.offhand mixedbag:count/remove_1