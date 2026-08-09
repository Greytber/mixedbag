attribute @s minecraft:attack_damage modifier remove compliance:variance
#$say $(roll)
$attribute @s minecraft:attack_damage modifier add compliance:variance $(roll) add_value
execute store result score #compliance.variance.check_zero compliance.dummy run attribute @s minecraft:attack_damage get 1
execute if score #compliance.variance.check_zero compliance.dummy matches 0 run attribute @s minecraft:attack_damage modifier remove compliance:variance
function compliance:damage_variance/reset