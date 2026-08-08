function compliance:entity/player/vehicle_check
function compliance:item/dual_swing/attribute_check
execute if score @s compliance.tick.falling.flag matches 1.. if predicate compliance:entity_properties/is_falling run function compliance:entity/player/falling/set

execute if items entity @s weapon.* minecraft:crossbow run scoreboard players set @s compliance.crossbow.holding 1
execute unless items entity @s weapon.* minecraft:crossbow run scoreboard players reset @s compliance.crossbow.holding
execute if items entity @s weapon.* minecraft:bow run scoreboard players set @s compliance.bow.holding 1
execute unless items entity @s weapon.* minecraft:bow run scoreboard players reset @s compliance.bow.holding
execute unless score @s compliance.crossbow.holding matches 1 unless score @s compliance.bow.holding matches 1 run function #compliance:item/bow/reset

execute if items entity @s weapon.mainhand #compliance:enchantable/technical_weapon[minecraft:custom_data~{compliance:{technical_weapon:true}}] run function compliance:item/technical_weapon/enchant
execute unless items entity @s weapon.mainhand #compliance:enchantable/technical_weapon[minecraft:custom_data~{compliance:{technical_weapon:true}}] run function compliance:item/technical_weapon/disenchant