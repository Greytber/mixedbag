execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{predicates:{"minecraft:custom_data":{mixedbag:{id:"fortune_paper"}}}}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/paper_from_fortune
function mixedbag:item/mortar/common
particle item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"mixedbag:fortune_paper"}}} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
playsound mixedbag:item.mortar.paper player @a ~ ~ ~ 1 0.7 0
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{predicates:{"minecraft:custom_data":{mixedbag:{id:"fortune_paper"}}}}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
item modify entity @s weapon.offhand mixedbag:count/remove_1