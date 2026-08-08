#say rei
execute if block ~ ~ ~ minecraft:vault run return run function mixedbag:loot/vault/add
scoreboard players add $distance mixedbag.dummy 1
execute if score $distance mixedbag.dummy < $reach mixedbag.dummy positioned ^ ^ ^0.01 run function mixedbag:loot/vault/ray
