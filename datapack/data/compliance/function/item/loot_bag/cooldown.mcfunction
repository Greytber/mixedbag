scoreboard players remove @s compliance.loot_bag.cooldown 1
execute if score @s compliance.loot_bag.cooldown matches 1.. run return run advancement revoke @s only compliance:technical/tick/cooldown/loot_bag
scoreboard players reset @s compliance.loot_bag.cooldown
#function mixedbag:item/sickle/reset