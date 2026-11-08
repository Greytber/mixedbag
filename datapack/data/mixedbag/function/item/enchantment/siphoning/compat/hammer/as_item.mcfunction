data modify entity @s PickupDelay set value 0b
tag @s add mixedbag.siphoned
$tp @s @p[nbt={UUID:$(uuid)}]
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.05 0.05 0.05 0 4 normal @a[distance=..8]
particle dust{color:[0f,0.60f,0.75f],scale:1f} ~ ~ ~ 0.01 0.01 0.01 0 1 normal @a[distance=..8]