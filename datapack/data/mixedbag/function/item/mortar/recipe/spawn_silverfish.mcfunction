execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{"items":"#mixedbag:mortar/spawn_silverfish"}}}} run return fail
execute unless predicate mixedbag:random_chance/0.33 run return fail
summon minecraft:silverfish
#execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{"items":"#mixedbag:mortar/give_cobblestone"}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
#item modify entity @s weapon.offhand mixedbag:count/remove_1