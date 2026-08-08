schedule function compliance:technical/second_clock 1s replace
execute as @a at @s run function compliance:entity/player/second_clock
execute as @e[type=#compliance:markers,tag=compliance.marker] run function compliance:entity/marker_cleanup
#execute as @a at @s run function compliance:entity/player/second_clock