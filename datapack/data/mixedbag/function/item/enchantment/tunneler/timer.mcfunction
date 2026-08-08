execute if score @s mixedbag.tunneler.timer matches 1.. run scoreboard players remove @s mixedbag.tunneler.timer 1
execute if score @s mixedbag.tunneler.timer matches 0.. run advancement revoke @s only mixedbag:technical/tick/effects/tunneler
execute if score @s mixedbag.tunneler.timer matches 0 run function mixedbag:item/enchantment/tunneler/reset