execute if data storage mixedbag:admin settings{happy_ghast_swiftness: false} run return run function mixedbag:entity/happy_ghast/clear_modifiers
execute unless predicate compliance:entity_properties/effects/speed run return run function mixedbag:entity/happy_ghast/clear_modifiers
execute if predicate compliance:entity_properties/effects/speed/0 run return run attribute @s minecraft:flying_speed modifier add mixedbag:effect.speed 0.01 add_value
execute if predicate compliance:entity_properties/effects/speed/1 run return run attribute @s minecraft:flying_speed modifier add mixedbag:effect.speed 0.02 add_value
execute if predicate compliance:entity_properties/effects/speed/2 run return run attribute @s minecraft:flying_speed modifier add mixedbag:effect.speed 0.03 add_value