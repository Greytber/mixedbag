# Sneak check
execute if predicate compliance:entity_properties/inputs/sneak run return fail
# Granting Tag
tag @s add mixedbag.siphoning.user
# Switch function
function mixedbag:item/enchantment/siphoning/switch
# Revoking Tag
tag @s remove mixedbag.siphoning.user