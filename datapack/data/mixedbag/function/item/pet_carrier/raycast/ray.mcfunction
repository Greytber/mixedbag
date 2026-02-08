#Check if an entity was detected.

execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#mixedbag:pet_carrier_viable,tag=!vdvray,dx=1,sort=nearest] run function mixedbag:item/pet_carrier/raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #mixedbag:not_solid run function mixedbag:item/pet_carrier/raycast/hit_block
scoreboard players add #mixedbag.ray.distance mixedbag.dummy 1

#If the raycast failed, run a function with the custom commands.

execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 if score #mixedbag.ray.distance mixedbag.dummy matches 51.. run function mixedbag:item/pet_carrier/raycast/failed

#Advance forward and run the ray again if no entity and/or block was found.

#particle dust{color:[1f,0f,0f],scale:1f} ^ ^ ^ 0 0 0 0 2
execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 if score #mixedbag.ray.distance mixedbag.dummy matches ..50 positioned ^ ^ ^0.1 run function mixedbag:item/pet_carrier/raycast/ray