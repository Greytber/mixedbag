execute unless score @s mixedbag.prospecting_pickaxe.cooldown matches 1.. run function mixedbag:item/prospecting_pickaxe/cave_check/main
#execute unless score @s mixedbag.prospecting_pickaxe.cooldown matches 1.. run function mixedbag:item/prospecting_pickaxe/effect

advancement revoke @s only mixedbag:technical/using_item/prospecting_pickaxe
advancement revoke @s only mixedbag:technical/tick/cooldown/prospecting_pickaxe
scoreboard players set @s mixedbag.prospecting_pickaxe.cooldown 10