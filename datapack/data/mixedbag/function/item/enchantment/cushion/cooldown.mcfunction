scoreboard players remove @s mixedbag.cushion.cooldown 1
execute if score @s mixedbag.cushion.cooldown matches 1.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/cushion
scoreboard players reset @s mixedbag.cushion.cooldown