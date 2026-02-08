execute on passengers run ride @s dismount
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mixedbag.temp_marker","mixedbag.entity_type_marker"]}
ride @s mount @n[type=minecraft:armor_stand,tag=mixedbag.entity_type_marker]
data remove storage mixedbag:storage root.temp.entity
data remove storage mixedbag:storage root.temp.entity.id
data modify storage mixedbag:storage root.temp.entity set from entity @s
execute as @s on vehicle run data modify storage mixedbag:storage root.temp.entity.id set from entity @s Passengers[].id
execute as @s on vehicle run kill @s[tag=mixedbag.entity_type_marker]
#execute at @s run particle minecraft:poof ~ ~1 ~ 0.8 0.25 0.8 0 20
execute at @s run function mixedbag:item/pet_carrier/particles
tag @s add mixedbag.pet_carrier.collected

execute as @p run item modify entity @s weapon.mainhand mixedbag:pet_carrier/full
data merge entity @s {Owner:[]}
tp @s ~ -200 ~
#kill @s