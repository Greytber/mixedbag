scoreboard players remove @s mixedbag.riding_crop.cooldown 1
execute if score @s mixedbag.riding_crop.cooldown matches 1.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/riding_crop
scoreboard players reset @s mixedbag.riding_crop.cooldown