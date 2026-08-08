#function mixedbag:entity/player/score/reset/tool_usage
# Sneak check
execute if predicate compliance:entity_properties/inputs/sneak run return fail
execute if score @s mixedbag.tunneler.count matches 64..100 run scoreboard players add @s mixedbag.tunneler.count 1
execute unless score @s mixedbag.tunneler.count matches 100.. run scoreboard players add @s mixedbag.tunneler.count 1
execute if score @s mixedbag.tunneler.count matches 100.. run scoreboard players add @s mixedbag.tunneler.instamined 1
execute if score @s mixedbag.tunneler.instamined matches 512.. run advancement grant @s only mixedbag:minecraft/adventure/tunneler
scoreboard players set @s mixedbag.tunneler.timer 100
advancement revoke @s only mixedbag:technical/tick/effects/tunneler
function mixedbag:item/enchantment/tunneler/haste