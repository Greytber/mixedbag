#Check if an entity was detected.

#execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#mixedbag:prospecting_pickaxe_viable,tag=!vdvray,dx=1,sort=nearest] run function mixedbag:item/prospecting_pickaxe/raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute if block ~ ~ ~ #mixedbag:prospecting_viable run function mixedbag:item/prospecting_pickaxe/raycast/hit_block
scoreboard players add #mixedbag.ray.distance mixedbag.dummy 1

#If the raycast failed, run a function with the custom commands.

execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 if score #mixedbag.ray.distance mixedbag.dummy matches 21.. run function mixedbag:item/prospecting_pickaxe/raycast/failed

#Advance forward and run the ray again if no entity and/or block was found.

#particle dust{color:[1f,0f,0f],scale:1f} ^ ^ ^ 0 0 0 0 2
execute if score #mixedbag.ray.hit mixedbag.dummy matches 0 if score #mixedbag.ray.distance mixedbag.dummy matches ..20 positioned ^ ^ ^0.2 run function mixedbag:item/prospecting_pickaxe/raycast/ray