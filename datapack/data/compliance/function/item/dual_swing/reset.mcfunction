scoreboard players reset @s compliance.dual_swing.timer
scoreboard players reset @s compliance.dual_swing.swing
execute unless predicate compliance:entity_properties/dual_swing/mainhand run return fail
#Mainhand restore
data modify storage compliance:temp dual_swing set from entity @s SelectedItem.components."minecraft:custom_data".compliance.dual_swing
function compliance:item/dual_swing/restore_mainhand with storage compliance:temp dual_swing
data remove storage compliance:temp dual_swing