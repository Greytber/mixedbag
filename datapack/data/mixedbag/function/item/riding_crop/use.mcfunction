execute unless score @s mixedbag.riding_crop.cooldown matches 1.. run function mixedbag:item/riding_crop/effect

advancement revoke @s only mixedbag:technical/using_item/riding_crop
advancement revoke @s only mixedbag:technical/tick/cooldown/riding_crop
scoreboard players set @s mixedbag.riding_crop.cooldown 10