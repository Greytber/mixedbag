execute store result score $pufferfish_puffstate mixedbag.iris run data get entity @s PuffState
execute if score $pufferfish_puffstate mixedbag.iris matches 0 run scoreboard players set $entity_width mixedbag.iris 350000
execute if score $pufferfish_puffstate mixedbag.iris matches 1 run scoreboard players set $entity_width mixedbag.iris 490000
execute if score $pufferfish_puffstate mixedbag.iris matches 2 run scoreboard players set $entity_width mixedbag.iris 700000
scoreboard players operation $entity_height mixedbag.iris = $entity_width mixedbag.iris

