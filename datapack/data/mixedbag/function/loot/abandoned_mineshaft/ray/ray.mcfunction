execute as @n[type=minecraft:chest_minecart,dx=0] run return run function mixedbag:loot/abandoned_mineshaft/ray/hit_entity
execute if block ~ ~ ~ #compliance:chests align xyz positioned ~0.5 ~0.5 ~0.5 run return run function mixedbag:loot/abandoned_mineshaft/ray/hit_block

scoreboard players add $distance mixedbag.dummy 1
execute if score $distance mixedbag.dummy < $reach mixedbag.dummy positioned ^ ^ ^0.01 run function mixedbag:loot/abandoned_mineshaft/ray/ray