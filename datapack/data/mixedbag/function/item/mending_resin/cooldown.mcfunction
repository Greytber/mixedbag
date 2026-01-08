scoreboard players remove @s mixedbag.mending_resin.cooldown 1
execute if score @s mixedbag.mending_resin.cooldown matches 0.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/mending_resin
execute unless score @s mixedbag.mending_resin.cooldown matches 0.. run scoreboard players reset @s mixedbag.mending_resin.timer
scoreboard players reset @s mixedbag.mending_resin.cooldown
#function mixedbag:item/sickle/reset