execute if entity @s[tag=!mixedbag.temp.sickle_victim_valid] run return run tag @s remove mixedbag.temp.sickle_victim
$damage @s $(damage_total) mixedbag:sickle by @p[tag=mixedbag.temp.sickle]
#$say $(damage_total)
#effect give @s minecraft:glowing 1 1
execute if score #mixedbag.gashing mixedbag.dummy matches 1 run function mixedbag:item/sickle/gashing/mark_entity
tag @s remove mixedbag.temp.sickle_victim
tag @s remove mixedbag.temp.sickle_victim_valid