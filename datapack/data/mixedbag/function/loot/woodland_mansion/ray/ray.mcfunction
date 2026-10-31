execute if block ~ ~ ~ #mixedbag:chests align xyz positioned ~0.5 ~0.5 ~0.5 run return run function mixedbag:loot/woodland_mansion/ray/hit

scoreboard players add $distance mixedbag.dummy 1
execute if score $distance mixedbag.dummy < $reach mixedbag.dummy positioned ^ ^ ^0.01 run function mixedbag:loot/woodland_mansion/ray/ray