#Mark the ray as having found a block.
scoreboard players set #mixedbag.ray.hit mixedbag.dummy 1
scoreboard players set #mixedbag.prospecting.wall_check mixedbag.dummy 1
#Running custom commands since the block was found.
execute positioned ^ ^ ^-0.5 run summon marker ~ ~ ~ {Tags:["mixedbag.prospecting.particles"]}