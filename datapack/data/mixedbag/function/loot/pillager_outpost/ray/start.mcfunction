tag @s remove mixedbag.loot.outpost

scoreboard players set $distance mixedbag.dummy 0

#store reach
execute store result score $reach mixedbag.dummy run attribute @s minecraft:block_interaction_range get 100

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mixedbag:loot/pillager_outpost/ray/ray