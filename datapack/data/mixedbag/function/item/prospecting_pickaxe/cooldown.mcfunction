scoreboard players remove @s mixedbag.prospecting_pickaxe.cooldown 1
execute if score @s mixedbag.prospecting_pickaxe.cooldown matches 1.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/prospecting_pickaxe
scoreboard players reset @s mixedbag.prospecting_pickaxe.cooldown