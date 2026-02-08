#Mark the ray as having found a block.
scoreboard players set #mixedbag.ray.hit mixedbag.dummy 1

#Running custom commands since the block was found.
#function mixedbag:item/pet_carrier/deploy/start
#execute as @p[tag=mixedbag.pet_carrier.user] run function mixedbag:item/pet_carrier/deploy/start