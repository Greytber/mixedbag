data remove storage mixedbag:temp tunneler
attribute @s minecraft:block_break_speed modifier remove mixedbag:tunneler
attribute @s minecraft:block_interaction_range modifier remove mixedbag:tunneler
execute if score @s mixedbag.tunneler.count matches 100.. run return run function mixedbag:item/enchantment/tunneler/haste_cap
execute store result storage mixedbag:temp tunneler.block_speed float 0.08 run scoreboard players get @s mixedbag.tunneler.count
execute store result storage mixedbag:temp tunneler.block_reach float 0.02 run scoreboard players get @s mixedbag.tunneler.count
#execute store result storage mixedbag:temp tunneler.step float 0.005 run scoreboard players get @s mixedbag.tunneler.timer
#execute store result storage mixedbag:temp tunneler.speed float 0.005 run scoreboard players get @s mixedbag.tunneler.timer
function mixedbag:item/enchantment/tunneler/haste_macro with storage mixedbag:temp tunneler