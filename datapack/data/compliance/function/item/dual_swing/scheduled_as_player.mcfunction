function compliance:entity/player/swing/offhand
#Mainhand restore
data modify storage compliance:temp dual_swing set from entity @s SelectedItem.components."minecraft:custom_data".compliance.dual_swing
function compliance:item/dual_swing/restore_mainhand with storage compliance:temp dual_swing
data remove storage compliance:temp dual_swing

#Offhand restore
data modify storage compliance:temp dual_swing set from entity @s equipment.offhand.components."minecraft:custom_data".compliance.dual_swing
function compliance:item/dual_swing/restore_offhand with storage compliance:temp dual_swing
data remove storage compliance:temp dual_swing

tag @s remove compliance.swing.dual
item modify entity @s weapon.offhand compliance:unique_id