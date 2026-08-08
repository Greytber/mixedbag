#particle minecraft:damage_indicator ~ ~1 ~ 0.1 0 0.1 0.5 1
particle minecraft:electric_spark ~ ~1 ~ 0.1 0 0.1 0.5 1
execute if predicate mixedbag:entity_properties/head_start/level_1 run function mixedbag:item/enchantment/head_start/effect/level_1
execute if predicate mixedbag:entity_properties/head_start/level_2 run function mixedbag:item/enchantment/head_start/effect/level_2
execute if predicate mixedbag:entity_properties/head_start/level_3 run function mixedbag:item/enchantment/head_start/effect/level_3
scoreboard players set @s mixedbag.timer.head_start 8
advancement revoke @s only mixedbag:technical/tick/effects/head_start