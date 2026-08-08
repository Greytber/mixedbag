data modify storage mixedbag.iris:data EntityTag set from entity @s
execute if data storage mixedbag.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width mixedbag.iris 250000
execute if data storage mixedbag.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height mixedbag.iris 987500
execute unless data storage mixedbag.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width mixedbag.iris 500000
execute unless data storage mixedbag.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height mixedbag.iris 1975000
execute if data storage mixedbag.iris:data EntityTag{Marker: 1b} store result score $entity_width mixedbag.iris run scoreboard players set $entity_height mixedbag.iris 0