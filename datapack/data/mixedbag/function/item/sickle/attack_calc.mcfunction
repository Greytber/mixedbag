execute if predicate mixedbag:entity_properties/sickle/mainhand store result score @s mixedbag.sickle.damage_base run data get entity @s SelectedItem.components."minecraft:custom_data".mixedbag.sickle_damage
execute if predicate mixedbag:entity_properties/sickle/offhand store result score @s mixedbag.sickle.damage_base run data get entity @s equipment.offhand.components."minecraft:custom_data".mixedbag.sickle_damage

#Calculating enchantment bonus
execute if predicate mixedbag:entity_properties/enchantment/sweeping_edge_1 run scoreboard players set @s mixedbag.sickle.damage_bonus 2
execute if predicate mixedbag:entity_properties/enchantment/sweeping_edge_2 run scoreboard players set @s mixedbag.sickle.damage_bonus 3
execute if predicate mixedbag:entity_properties/enchantment/sweeping_edge_3 run scoreboard players set @s mixedbag.sickle.damage_bonus 4
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus

#Calculating charge time bonus
execute if score @s mixedbag.sickle.timer matches 20..59 run scoreboard players set @s mixedbag.sickle.damage_bonus 0
execute if score @s mixedbag.sickle.timer matches 60..99 run scoreboard players set @s mixedbag.sickle.damage_bonus 2
execute if score @s mixedbag.sickle.timer matches 100..129 run scoreboard players set @s mixedbag.sickle.damage_bonus 6
execute if score @s mixedbag.sickle.timer matches 130.. run scoreboard players set @s mixedbag.sickle.damage_bonus 10
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus

#Calculating strenght effect bonus
execute store result score @s mixedbag.sickle.damage_bonus run attribute @s minecraft:attack_damage modifier value get minecraft:effect.strength
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus
scoreboard players operation @s mixedbag.sickle.damage_base += @s mixedbag.sickle.damage_bonus

#Storing total value
execute store result storage mixedbag:sickle damage_total float 1 run scoreboard players get @s mixedbag.sickle.damage_base

#Running an attack macro function
function mixedbag:item/sickle/attack_macro with storage mixedbag:sickle