execute as @s anchored feet run particle minecraft:dust_plume ~ ~ ~ 0 -0.2 0 0 8
playsound mixedbag:item.sickle.lunge player @a[distance=..32] ~ ~ ~ 1 0.75 0

execute on vehicle run tag @s add mixedbag.temp.sickle
function mixedbag:item/sickle/launch_check

execute store result storage mixedbag:temp sickle_base_damage byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".mixedbag.sickle.damage
tag @s add mixedbag.temp.sickle
function mixedbag:item/sickle/attack_calc
scoreboard players reset @s mixedbag.sickle.timer
tag @s remove mixedbag.temp.sickle
execute on vehicle run tag @s remove mixedbag.temp.sickle
execute as @n[tag=mixedbag.temp.sickle,type=!player] run tag @s remove mixedbag.temp.sickle