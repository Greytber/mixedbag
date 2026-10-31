execute align xyz if entity @n[type=minecraft:marker,tag=mixedbag.prospecting.small,dx=0.5] run return fail
#execute align xyz run particle minecraft:end_rod ~0.5 ~0.5 ~0.5 0 0 0 0 1 normal
#execute align xyz run particle minecraft:dust{color:[1f,0f,0f],scale:2f} ~0.5 ~0.5 ~0.5 0 0 0 0 1 normal @a
execute if block ~ ~ ~ #minecraft:air run return run scoreboard players add #mixedbag.prospecting.air mixedbag.dummy 1
#execute if block ~ ~ ~ #mixedbag:prospected_ores run return run scoreboard players add #mixedbag.prospecting.ore mixedbag.dummy 1
execute if block ~ ~ ~ #mixedbag:prostepcting_weight/1x run return run scoreboard players add #mixedbag.prospecting.ore mixedbag.dummy 1
execute if block ~ ~ ~ #mixedbag:prostepcting_weight/2x run return run scoreboard players add #mixedbag.prospecting.ore mixedbag.dummy 2
#execute if block ~ ~ ~ #mixedbag:prostepcting_weight/3x run return run scoreboard players add #mixedbag.prospecting.ore mixedbag.dummy 3
#execute if block ~ ~ ~ #mixedbag:prostepcting_weight/4x run return run scoreboard players add #mixedbag.prospecting.ore mixedbag.dummy 4
#execute if block ~ ~ ~ #mixedbag:prostepcting_weight/5x run return run scoreboard players add #mixedbag.prospecting.ore mixedbag.dummy 5

#execute if block ~ ~ ~ #minecraft:coal_ores run return run scoreboard players add #mixedbag.prospecting.ore.coal mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:copper_ores run return run scoreboard players add #mixedbag.prospecting.ore.copper mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:diamond_ores run return run scoreboard players add #mixedbag.prospecting.ore.diamond mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:emerald_ores run return run scoreboard players add #mixedbag.prospecting.ore.emerald mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:gold_ores run return run scoreboard players add #mixedbag.prospecting.ore.gold mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:iron_ores run return run scoreboard players add #mixedbag.prospecting.ore.iron mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:lapis_ores run return run scoreboard players add #mixedbag.prospecting.ore.lapis mixedbag.dummy 1
#execute if block ~ ~ ~ #minecraft:redstone_ores run return run scoreboard players add #mixedbag.prospecting.ore.redstone mixedbag.dummy 1