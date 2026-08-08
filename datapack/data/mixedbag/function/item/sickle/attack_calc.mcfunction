execute if predicate mixedbag:entity_properties/sickle/mainhand store result score @s mixedbag.sickle.damage_base run data get entity @s SelectedItem.components."minecraft:custom_data".mixedbag.sickle_damage
execute if predicate mixedbag:entity_properties/sickle/offhand store result score @s mixedbag.sickle.damage_base run data get entity @s equipment.offhand.components."minecraft:custom_data".mixedbag.sickle_damage

# Calculating enchantment bonus
execute if predicate mixedbag:entity_properties/enchantment/sweeping_edge_1 run scoreboard players set @s mixedbag.sickle.damage_bonus 2
execute if predicate mixedbag:entity_properties/enchantment/sweeping_edge_2 run scoreboard players set @s mixedbag.sickle.damage_bonus 3
execute if predicate mixedbag:entity_properties/enchantment/sweeping_edge_3 run scoreboard players set @s mixedbag.sickle.damage_bonus 4
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus

# Calculating charge time bonus
execute if score @s mixedbag.sickle.timer matches 20..59 run scoreboard players set @s mixedbag.sickle.damage_bonus 0
execute if score @s mixedbag.sickle.timer matches 60..99 run scoreboard players set @s mixedbag.sickle.damage_bonus 2
execute if score @s mixedbag.sickle.timer matches 100..129 run scoreboard players set @s mixedbag.sickle.damage_bonus 6
execute if score @s mixedbag.sickle.timer matches 130.. run scoreboard players set @s mixedbag.sickle.damage_bonus 10
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus

# Calculating strenght effect bonus
execute store result score @s mixedbag.sickle.damage_bonus run attribute @s minecraft:attack_damage modifier value get minecraft:effect.strength
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus

# Offhand bonus
execute if predicate mixedbag:entity_properties/sickle/both run scoreboard players add @s mixedbag.sickle.damage_base 2

# Storing total value
#execute store result storage mixedbag:sickle damage_total float 1 run scoreboard players get @s mixedbag.sickle.damage_base
execute store result storage mixedbag:sickle damage_total float 0.75 run scoreboard players get @s mixedbag.sickle.damage_base
#execute store result storage mixedbag:sickle damage_total float 0.5 run scoreboard players get @s mixedbag.sickle.damage_base

# Running an attack macro function
#function mixedbag:item/sickle/attack_macro with storage mixedbag:sickle
execute unless score @s mixedbag.sickle.timer matches 20.. run return fail
execute if predicate mixedbag:entity_properties/enchantment/gashing run scoreboard players set #mixedbag.gashing mixedbag.dummy 1
execute as @s at @s anchored eyes positioned ^ ^ ^ run function mixedbag.iris:get_target_sickle
execute as @s at @s anchored eyes positioned ^ ^ ^2 positioned ~-3 ~-2 ~-3 as @e[tag=mixedbag.temp.sickle_victim,type=!#mixedbag:non_living,dx=6,dy=1.5,dz=6] run tag @s add mixedbag.temp.sickle_victim_valid
execute at @s as @e[type=!#mixedbag:non_living,tag=mixedbag.temp.sickle_victim,distance=..16] run function mixedbag:item/sickle/attack_macro with storage mixedbag:sickle
#execute if predicate mixedbag:entity_properties/enchantment/gashing run function mixedbag:item/sickle/gashing/select_entity
execute if score @s mixedbag.courage.hit matches 1 if score @s mixedbag.sickle.damage_base matches 40.. run advancement grant @s only mixedbag:minecraft/adventure/sickle_stack_damage
scoreboard players reset @s mixedbag.sickle.damage_base
scoreboard players reset @s mixedbag.sickle.damage_bonus
scoreboard players reset #mixedbag.gashing mixedbag.dummy
function mixedbag:item/sickle/courage/check
#say srnec