execute as @s at @s anchored eyes positioned ^ ^ ^2 positioned ~ ~ ~ run particle minecraft:sweep_attack

$execute if score @s mixedbag.sickle.timer matches 20..59 run execute as @s at @s anchored eyes positioned ^ ^ ^1 positioned ~-0.5 ~-1.5 ~-0.5 run execute as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,dx=1.5,dy=2,dz=1.5] run damage @s $(damage_total) minecraft:player_attack by @p[tag=mixedbag.temp.sickle]
$execute if score @s mixedbag.sickle.timer matches 60..99 run execute as @s at @s anchored eyes positioned ^ ^ ^2 positioned ~-1 ~-1.5 ~-1 run execute as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,dx=2,dy=2,dz=2] run damage @s $(damage_total) minecraft:player_attack by @p[tag=mixedbag.temp.sickle]
$execute if score @s mixedbag.sickle.timer matches 100..129 run execute as @s at @s anchored eyes positioned ^ ^ ^3 positioned ~-1.5 ~-1.5 ~-1.5 run execute as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,dx=3,dy=3,dz=3] run damage @s $(damage_total) minecraft:player_attack by @p[tag=mixedbag.temp.sickle]
$execute if score @s mixedbag.sickle.timer matches 130.. run execute as @s at @s anchored eyes positioned ^ ^ ^3 positioned ~-1.5 ~-1.5 ~-1.5 run execute as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,dx=3,dy=3,dz=3] run damage @s $(damage_total) minecraft:player_attack by @p[tag=mixedbag.temp.sickle]

execute if predicate mixedbag:entity_properties/enchantment/gashing run function mixedbag:item/sickle/gashing/select_entity
execute if score @s mixedbag.courage.hit matches 1 if score @s mixedbag.sickle.damage_base matches 36.. run advancement grant @s only mixedbag:minecraft/adventure/sickle_stack_damage
scoreboard players reset @s mixedbag.sickle.damage_base
scoreboard players reset @s mixedbag.sickle.damage_bonus
function mixedbag:item/sickle/courage/check