data remove storage compliance:temp root.tp_to_player
execute unless entity @a[distance=..16,limit=1] run return run function compliance:entity/tp_to_player/kill
#data modify storage compliance:temp root.tp_to_player.uuid set from entity @s Owner
data modify storage compliance:temp root.tp_to_player.uuid.0 set from entity @s data.compliance.tp_tp.uuid[0]
data modify storage compliance:temp root.tp_to_player.uuid.1 set from entity @s data.compliance.tp_tp.uuid[1]
data modify storage compliance:temp root.tp_to_player.uuid.2 set from entity @s data.compliance.tp_tp.uuid[2]
data modify storage compliance:temp root.tp_to_player.uuid.3 set from entity @s data.compliance.tp_tp.uuid[3]
#data modify storage compliance:temp root.tp_to_player.uuid.0 set from entity @s Owner[0]
#data modify storage compliance:temp root.tp_to_player.uuid.1 set from entity @s Owner[1]
#data modify storage compliance:temp root.tp_to_player.uuid.2 set from entity @s Owner[2]
#data modify storage compliance:temp root.tp_to_player.uuid.3 set from entity @s Owner[3]
function compliance:entity/tp_to_player/tp_macro with storage compliance:temp root.tp_to_player.uuid
data remove storage compliance:temp root.tp_to_player