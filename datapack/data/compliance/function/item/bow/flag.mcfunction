scoreboard players remove @s compliance.bow.flag 1
execute if score @s compliance.bow matches 1.. run function compliance:entity/arrow/shoot
execute if score @s compliance.bow.flag matches 1.. run return run advancement revoke @s only compliance:technical/tick/flag/bow
function compliance:item/bow/reset
#function mixedbag:item/sickle/reset