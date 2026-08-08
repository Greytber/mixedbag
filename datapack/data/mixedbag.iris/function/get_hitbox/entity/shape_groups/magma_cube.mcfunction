scoreboard players set $entity_width mixedbag.iris 510000
scoreboard players set $entity_height mixedbag.iris 510000
execute store result score $slime_size mixedbag.iris run data get entity @s Size
scoreboard players add $slime_size mixedbag.iris 1
scoreboard players operation $entity_width mixedbag.iris *= $slime_size mixedbag.iris
scoreboard players operation $entity_height mixedbag.iris *= $slime_size mixedbag.iris
