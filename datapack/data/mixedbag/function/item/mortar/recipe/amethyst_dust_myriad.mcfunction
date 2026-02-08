execute unless score #server_version tcc.dummy matches 1.. run return fail
execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.*":{"items":"#mixedbag:mortar/give_amethyst_dust_myriad"}}}} run return fail
loot spawn ~ ~0.5 ~ loot mixedbag:recipe/mortar/amethyst_dust_myriad
function mixedbag:item/mortar/common
particle minecraft:item{item:"minecraft:amethyst_shard"} ~ ~0.75 ~ 0.2 0.2 0.2 0.05 10 normal
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 0.8 0
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{"items":"#mixedbag:mortar/give_amethyst_dust_myriad"}}}} run return run item modify entity @s weapon.mainhand mixedbag:count/remove_1
item modify entity @s weapon.offhand mixedbag:count/remove_1