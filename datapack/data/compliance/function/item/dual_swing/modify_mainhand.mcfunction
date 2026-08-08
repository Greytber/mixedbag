function compliance:entity/player/swing/mainhand
#item modify entity @s weapon.mainhand compliance:dual_swing/modify

scoreboard players set @s compliance.dual_swing.timer 20
scoreboard players set @s compliance.dual_swing.swing 3
advancement revoke @s only compliance:technical/tick/timer/dual_swing_reset

#function compliance:entity/player/swing/mainhand
#tag @s add compliance.dual_swing.modify
#schedule function compliance:item/dual_swing/modify_mainhand_scheduled 1t append
#item modify entity @s weapon.mainhand compliance:dual_swing/modify