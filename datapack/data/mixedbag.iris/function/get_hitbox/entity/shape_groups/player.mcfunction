scoreboard players set $entity_width mixedbag.iris 600000
scoreboard players set $entity_height mixedbag.iris 1800000
execute if predicate mixedbag.iris:swimming run return run scoreboard players set $entity_height mixedbag.iris 600000
execute if predicate mixedbag.iris:sneaking run return run scoreboard players set $entity_height mixedbag.iris 1500000
