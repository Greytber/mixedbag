scoreboard players remove @s mixedbag.sickle.cooldown 1
execute if score @s mixedbag.sickle.cooldown matches 1.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/sickle
function mixedbag:item/sickle/reset