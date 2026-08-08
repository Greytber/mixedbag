#> mixedbag.iris:get_hitbox/entity/scale
#
# Scales a living entity according to its scale attribute
#
# @within mixedbag.iris:get_hitbox/entity

execute store result score $attribute_scale mixedbag.iris run attribute @s minecraft:scale get 1000
execute if score $attribute_scale mixedbag.iris matches 0 run return fail
execute if score $attribute_scale mixedbag.iris matches 1000 run return 0

scoreboard players operation $entity_width mixedbag.iris /= $10 mixedbag.iris
scoreboard players operation $entity_width mixedbag.iris *= $attribute_scale mixedbag.iris
scoreboard players operation $entity_width mixedbag.iris /= $100 mixedbag.iris

scoreboard players operation $entity_height mixedbag.iris /= $10 mixedbag.iris
scoreboard players operation $entity_height mixedbag.iris *= $attribute_scale mixedbag.iris
scoreboard players operation $entity_height mixedbag.iris /= $100 mixedbag.iris
