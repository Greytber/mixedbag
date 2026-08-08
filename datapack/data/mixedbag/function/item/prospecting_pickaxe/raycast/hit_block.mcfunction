#Mark the ray as having found a block.
scoreboard players set #mixedbag.ray.hit mixedbag.dummy 1
scoreboard players set #mixedbag.prospecting.wall_check mixedbag.dummy 1
#Running custom commands since the block was found.
#say seks
#particle dust{color:[0.5f,0.5f,0.5f],scale:1f} ^ ^ ^-0.25 0.1 0.05 0.1 1 4 normal @a[distance=..16]
#particle minecraft:ash ~ ~ ~ 0 0 0 0 40
#particle minecraft:ash ^ ^ ^-0.25 0.05 0.05 0.05 0 16 normal @a[distance=..8]

#summon marker ^ ^ ^-0.25 {Tags:["mixedbag.prospecting.particles"]}
execute positioned ^ ^ ^-0.5 run summon marker ~ ~ ~ {Tags:["mixedbag.prospecting.particles"]}
#function mixedbag:item/prospecting_pickaxe/deploy/start
#execute as @p[tag=mixedbag.prospecting_pickaxe.user] run function mixedbag:item/prospecting_pickaxe/deploy/start