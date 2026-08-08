advancement revoke @s only compliance:technical/player_hurt_entity/dual_swing
execute unless predicate compliance:entity_properties/dual_swing/both_hands run return fail

#scoreboard players set @s compliance.dual_swing.timer 20
scoreboard players set @s compliance.dual_swing.swing 6
#advancement revoke @s only compliance:technical/tick/timer/dual_swing_reset
#function compliance:item/arbitrary_technical_modifier/bothhands
#item modify entity @s weapon.mainhand compliance:unique_id
#execute unless predicate compliance:entity_properties/dual_swing/both_hands run return run say epic reddit fail
#say seks
execute unless predicate compliance:entity_properties/dual_swing/swing_offhand run return run function compliance:item/dual_swing/modify_mainhand
#say seks23
#tag @s add compliance.swing.offhand
tag @s add compliance.swing.dual
schedule function compliance:item/dual_swing/scheduled 1t append
#schedule function compliance:entity/player/swing/check 1t append
#data modify storage compliance:temp dual_swing set from entity @s SelectedItem.components."minecraft:custom_data".compliance.dual_swing
#function compliance:item/dual_swing/restore_mainhand with storage compliance:temp dual_swing
#data remove storage compliance:temp dual_swing