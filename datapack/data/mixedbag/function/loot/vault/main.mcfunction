advancement revoke @s only mixedbag:technical/item_used_on_block/vault
#execute store result score $chance mixedbag.dummy run random value 1..100
#execute if score $chance mixedbag.dummy matches 15.. run return fail
scoreboard players set $hit mixedbag.dummy 0
scoreboard players set $distance mixedbag.dummy 0
execute store result score $reach mixedbag.dummy run attribute @s minecraft:block_interaction_range get 100
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mixedbag:loot/vault/ray
