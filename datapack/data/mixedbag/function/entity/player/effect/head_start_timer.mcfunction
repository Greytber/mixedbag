execute if score @s mixedbag.timer.head_start matches 1.. run scoreboard players remove @s mixedbag.timer.head_start 1
execute if score @s mixedbag.timer.head_start matches 0.. run advancement revoke @s only mixedbag:technical/tick/effects/head_start
execute unless score @s mixedbag.timer.head_start matches 1.. run attribute @s minecraft:movement_speed modifier remove mixedbag:head_start
execute if score @s mixedbag.timer.head_start matches 0 run scoreboard players reset @s mixedbag.timer.head_start