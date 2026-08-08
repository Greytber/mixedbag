particle dust{color:[0.5f,0.5f,0.5f],scale:1f} ^ ^ ^ 0.1 0.05 0.1 1 4 normal @a[distance=..16]
particle minecraft:ash ^ ^ ^ 0.05 0.05 0.05 0 16 normal @a[distance=..8]
execute if score #mixedbag.prospecting.particles mixedbag.dummy matches 1 run particle minecraft:wax_off ^ ^ ^ 0.1 0.1 0.1 2 4 normal @a[distance=..8] 
scoreboard players reset #mixedbag.prospecting.return mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.wall_check mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.ore mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.air mixedbag.dummy
scoreboard players reset #mixedbag.prospecting.particles mixedbag.dummy
kill @s