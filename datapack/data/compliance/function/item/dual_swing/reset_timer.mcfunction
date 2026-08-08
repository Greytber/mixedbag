execute if score @s compliance.dual_swing.timer matches 1.. run scoreboard players remove @s compliance.dual_swing.timer 1
execute if score @s compliance.dual_swing.swing matches 1.. run scoreboard players remove @s compliance.dual_swing.swing 1
execute if score @s compliance.dual_swing.swing matches 0 run item modify entity @s weapon.mainhand compliance:dual_swing/modify
execute if score @s compliance.dual_swing.swing matches 0 run scoreboard players reset @s compliance.dual_swing.swing
execute if score @s compliance.dual_swing.timer matches 0.. run advancement revoke @s only compliance:technical/tick/timer/dual_swing_reset
execute if score @s compliance.dual_swing.timer matches 0 run function compliance:item/dual_swing/reset