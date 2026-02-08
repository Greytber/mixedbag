#Checks if an entity is found, and if so, runs the corresponding function.
execute as @s on passengers run return fail
execute as @s on vehicle run return fail
data remove storage mixedbag:temp root.owner_check
data modify storage mixedbag:temp root.owner_check set from entity @s Owner
data get entity @s Owner
execute unless entity @s[type=#mixedbag:pet_carrier_viable] run return fail
execute if entity @s[type=#mixedbag:pet_carrier_viable_if_owner] run function mixedbag:item/pet_carrier/raycast/check_hit_entity_owner with storage mixedbag:temp root
execute if entity @s[type=#mixedbag:pet_carrier_viable_if_owner] run execute unless score #mixedbag.pet_carrier.owner mixedbag.dummy matches 1 run return fail
scoreboard players reset #mixedbag.pet_carrier.owner
execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function mixedbag:item/pet_carrier/raycast/hit_entity