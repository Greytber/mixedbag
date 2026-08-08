title @s actionbar {translate:"subtitles.mixedbag.item.prospecting_pickaxe.ores",color:"dark_gray",italic:1b}
playsound mixedbag:item.prospecting_pickaxe.ores player @a[distance=..16] ~ ~ ~ 1 0 0
#advancement grant @s only mixedbag:minecraft/story/prospecting_pickaxe
scoreboard players set #mixedbag.prospecting.particles mixedbag.dummy 1
execute as @e[type=minecraft:marker,tag=mixedbag.prospecting.particles,limit=1] at @s run function mixedbag:item/prospecting_pickaxe/cave_check/end/any