tp @s ~ ~0.001 ~
execute if score @s mixedbag.sickle.timer matches 20..59 run function mixedbag:item/sickle/launch_weak
execute if score @s mixedbag.sickle.timer matches 60..99 run function mixedbag:item/sickle/launch_medium
execute if score @s mixedbag.sickle.timer matches 100.. run function mixedbag:item/sickle/launch_strong