#Reset returned scores
scoreboard players reset #mixedbag.prospecting.return mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.wall_check mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.ore mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.air mixedbag.dummy
#Initial wall check
#function mixedbag:item/prospecting_pickaxe/cave_check/initial_check
function mixedbag:item/prospecting_pickaxe/raycast/start
execute unless score #mixedbag.prospecting.wall_check mixedbag.dummy matches 1 run return fail
#Damaging
execute unless entity @s[gamemode=creative] run function mixedbag:item/prospecting_pickaxe/damage
function mixedbag:item/prospecting_pickaxe/swing
#Scanning
execute at @s anchored eyes positioned ^ ^ ^10 summon minecraft:interaction run function mixedbag:item/prospecting_pickaxe/cave_check/scan
#execute at @s anchored feet positioned ^ ^ ^10 summon minecraft:interaction run function mixedbag:item/prospecting_pickaxe/cave_check/scan
#Succes logic
execute if score #mixedbag.prospecting.air mixedbag.dummy matches 8.. unless score #mixedbag.prospecting.ore mixedbag.dummy matches 7.. run return run function mixedbag:item/prospecting_pickaxe/cave_check/end/hollow
execute if score #mixedbag.prospecting.air mixedbag.dummy matches 8.. if score #mixedbag.prospecting.ore mixedbag.dummy matches 8.. run return run function mixedbag:item/prospecting_pickaxe/cave_check/end/ore_hollow
execute if score #mixedbag.prospecting.ore mixedbag.dummy matches 8.. run return run function mixedbag:item/prospecting_pickaxe/cave_check/end/ore
function mixedbag:item/prospecting_pickaxe/cave_check/end/fail
#scoreboard players reset #mixedbag.prospecting.return mixedbag.dummy