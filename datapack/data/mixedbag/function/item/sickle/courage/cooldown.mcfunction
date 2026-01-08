scoreboard players remove @s mixedbag.courage.timer 1
execute if score @s mixedbag.courage.timer matches 1.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/courage
function mixedbag:item/sickle/courage/reset