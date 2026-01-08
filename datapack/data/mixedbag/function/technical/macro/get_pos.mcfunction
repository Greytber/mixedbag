data merge entity @s {Tags:["mixedbag.temp_marker","mixedbag.pos_marker"]}
data modify storage mixedbag:temp trail_particle.end_x set from entity @s Pos[0]
data modify storage mixedbag:temp trail_particle.end_y set from entity @s Pos[1]
data modify storage mixedbag:temp trail_particle.end_z set from entity @s Pos[2]
kill @s