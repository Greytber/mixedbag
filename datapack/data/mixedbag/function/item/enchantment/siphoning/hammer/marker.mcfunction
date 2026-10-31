tag @s add mixedbag.siphoning.hammer.marker
# Get player's UUID
data modify entity @s data.mixedbag.siphoning.uuid set from entity @p[tag=mixedbag.siphoning.user] UUID
# Schedule
schedule function mixedbag:item/enchantment/siphoning/hammer/schedule 1t replace