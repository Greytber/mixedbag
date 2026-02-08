execute if predicate metalmorphy:entity_properties/equipment/mortar_main run item modify entity @s weapon.mainhand metalmorphy:mortar_remainder
execute if predicate metalmorphy:entity_properties/equipment/mortar_off run item modify entity @s weapon.offhand metalmorphy:mortar_remainder
#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mixedbag:{id:mortar}}] run return run item modify entity @s weapon.mainhand mixedbag:mortar_remainder
#item modify entity @s weapon.offhand mixedbag:mortar_remainder