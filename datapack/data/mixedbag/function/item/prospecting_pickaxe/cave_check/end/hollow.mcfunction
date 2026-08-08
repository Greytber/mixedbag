title @s actionbar {translate:"subtitles.mixedbag.item.prospecting_pickaxe.echo",color:"dark_gray",italic:1b}
playsound mixedbag:item.prospecting_pickaxe.echo block @s ~ ~ ~ 2
advancement grant @s only mixedbag:minecraft/story/prospecting_pickaxe
execute as @e[type=minecraft:marker,tag=mixedbag.prospecting.particles,limit=1] at @s run function mixedbag:item/prospecting_pickaxe/cave_check/end/any