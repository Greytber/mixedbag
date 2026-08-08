
data modify storage mixedbag:temp root.mirroring set from entity @s SelectedItem
data remove storage mixedbag:temp root.mirroring.components."minecraft:damage"
data modify storage mixedbag:temp root.mirroring.components."minecraft:custom_data".compliance.mirrored set value 1b