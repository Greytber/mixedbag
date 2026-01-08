item modify entity @s[gamemode=!creative] weapon.offhand mixedbag:count/remove_1
execute if entity @s[gamemode=!creative] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:glass_bottle",count:1}}
playsound mixedbag:entity.horse.drink_potion neutral @s
advancement grant @s only mixedbag:minecraft/husbandry/riding_crop_potion