data merge entity @s {width:6f,height:6f,response:0b,Tags:["mixedbag.cave_finder"]}
execute at @s positioned ~ ~1 ~ run function mixedbag:item/prospecting_pickaxe/cave_check/layer_small
execute at @s positioned ~ ~ ~ run function mixedbag:item/prospecting_pickaxe/cave_check/layer_small
execute at @s positioned ~ ~-1 ~ run function mixedbag:item/prospecting_pickaxe/cave_check/layer_small
kill @s