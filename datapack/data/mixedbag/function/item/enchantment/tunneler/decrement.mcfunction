scoreboard players remove @s mixedbag.tunneler.count 20
execute if score @s mixedbag.tunneler.count matches ..0 run return run function mixedbag:item/enchantment/tunneler/reset
scoreboard players set @s mixedbag.tunneler.timer 40