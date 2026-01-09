execute if score @s mixedbag.sickle.timer matches 20.. run advancement grant @s only mixedbag:minecraft/adventure/sickle_use
execute if predicate mixedbag:entity_properties/sickle/either if score @s mixedbag.sickle.timer matches 20.. if entity @s[gamemode=!creative] run function mixedbag:item/sickle/damage
execute if predicate mixedbag:entity_properties/sickle/either if score @s mixedbag.sickle.timer matches 20.. run function mixedbag:item/sickle/launch
scoreboard players reset @s mixedbag.sickle.cooldown
execute unless score @s mixedbag.sickle.cooldown matches 0..2 run scoreboard players reset @s mixedbag.sickle.timer