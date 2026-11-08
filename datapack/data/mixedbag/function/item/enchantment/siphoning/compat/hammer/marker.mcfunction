tag @s add mixedbag.siphoning.marker
tag @s add mixedbag.siphoning.marker.hammer
# Get player's UUID
data modify entity @s data.mixedbag.siphoning.uuid set from entity @p[tag=mixedbag.siphoning.user] UUID
# Schedule
schedule function mixedbag:item/enchantment/siphoning/compat/marker/schedule 1t replace