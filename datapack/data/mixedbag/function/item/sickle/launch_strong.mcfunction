function mixedbag:item/sickle/launch_shared

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch 20000
function player_motion:api/launch_local_xyz

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch -20000
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_global_xyz