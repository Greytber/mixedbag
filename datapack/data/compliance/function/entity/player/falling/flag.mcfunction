scoreboard players remove @s compliance.falling.flag 1
#execute if score @s compliance.bow matches 1.. run function compliance:entity/arrow/shoot
execute if score @s compliance.falling.flag matches 1.. run return run advancement revoke @s only compliance:technical/tick/flag/falling
execute if score @s compliance.falling.flag matches ..0 run function compliance:entity/player/falling/landing
#function compliance:item/bow/reset
#function mixedbag:item/sickle/reset