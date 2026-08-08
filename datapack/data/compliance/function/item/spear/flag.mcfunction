scoreboard players remove @s compliance.spear.flag 1
execute if score @s compliance.spear.flag matches 1.. run return run advancement revoke @s only compliance:technical/tick/flag/spear
scoreboard players reset @s compliance.spear.flag
#function mixedbag:item/sickle/reset