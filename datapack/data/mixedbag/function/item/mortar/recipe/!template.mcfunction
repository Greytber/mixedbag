#Custom mortar recipe template

# Initial item check, if there isn't a match nothing further will run
#execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{<item data>}}}} run return fail

# Spawning the result item, can be replaced with other effects too I suppose
#loot spawn ~ ~0.5 ~ loot <result loot table>

# The common part of all recipes, which makes the item instantly pickable and granting the mortar advancement
#function mixedbag:item/mortar/common

# Visual and auditory effects, not required but it's fancy, just put the 
#particle minecraft:item{<item data like id or custom model>} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal

# The part that decreases the item count, check only needed for one hand since return is used
#execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{<item data>}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
#item modify entity @s weapon.offhand mixedbag:count/remove_1