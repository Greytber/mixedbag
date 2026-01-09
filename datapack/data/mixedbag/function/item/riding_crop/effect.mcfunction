execute on vehicle run execute if entity @s[type=!#mixedbag:riding_crop_viable] run return fail
execute at @s run playsound mixedbag:item.riding_crop.use player @a[distance=..16] ~ ~ ~ 1 1 0
execute on vehicle run effect give @s minecraft:speed 30 0
execute if entity @s[gamemode=!creative] run function mixedbag:item/riding_crop/damage
execute if predicate mixedbag:entity_properties/offhand_speed_potion/base on vehicle run effect give @s minecraft:speed 180 1
execute if predicate mixedbag:entity_properties/offhand_speed_potion/long on vehicle run effect give @s minecraft:speed 480 1
execute if predicate mixedbag:entity_properties/offhand_speed_potion/strong on vehicle run effect give @s minecraft:speed 90 2
execute if predicate mixedbag:entity_properties/offhand_speed_potion/any run function mixedbag:item/riding_crop/use_potion
execute as @s on vehicle run execute if entity @s[type=minecraft:happy_ghast] run function mixedbag:entity/happy_ghast/effect_check

#advancements
execute on vehicle run execute if entity @s[type=#mixedbag:riding_crop_viable] on passengers run advancement grant @s only mixedbag:minecraft/husbandry/riding_crop
execute on vehicle run execute if entity @s[type=#mixedbag:undead_horse] on passengers run advancement grant @s only mixedbag:minecraft/husbandry/dead_horse
execute on vehicle run execute if entity @s[type=minecraft:camel_husk] on passengers run advancement grant @s only mixedbag:minecraft/husbandry/undead_mayhem camel_husk
execute on vehicle run execute if entity @s[type=minecraft:skeleton_horse] on passengers run advancement grant @s only mixedbag:minecraft/husbandry/undead_mayhem skeleton_horse
execute on vehicle run execute if entity @s[type=minecraft:zombie_horse] on passengers run advancement grant @s only mixedbag:minecraft/husbandry/undead_mayhem zombie_horse
execute on vehicle run execute if entity @s[type=minecraft:zombie_nautilus] on passengers run advancement grant @s only mixedbag:minecraft/husbandry/undead_mayhem zombie_nautilus