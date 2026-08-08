scoreboard players set $entity_width mixedbag.iris 900000
scoreboard players set $entity_height mixedbag.iris 500000

execute store result score $phantom_size mixedbag.iris run data get entity @s Size
execute if score $phantom_size mixedbag.iris matches 0 run return 0
scoreboard players set $phantom_extra_width mixedbag.iris 135000
scoreboard players operation $phantom_extra_width mixedbag.iris *= $phantom_size mixedbag.iris
scoreboard players operation $entity_width mixedbag.iris += $phantom_extra_width mixedbag.iris
scoreboard players set $phantom_extra_height mixedbag.iris 75000
scoreboard players operation $phantom_extra_height mixedbag.iris *= $phantom_size mixedbag.iris
scoreboard players operation $entity_height mixedbag.iris += $phantom_extra_height mixedbag.iris
