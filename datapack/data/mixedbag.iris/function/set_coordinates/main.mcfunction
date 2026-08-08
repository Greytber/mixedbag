#> mixedbag.iris:set_coordinates
#
# Teleports the executing entity at a given position from six scores.
# Meant to be executed as the ray marker after raycasting, scores are then set to the player's targeted position:
#    execute as @p at @s anchored eyes positioned ^ ^ ^ run function mixedbag.iris:get_target
#    execute as @e[type=minecraft:marker, tag=mixedbag.iris.ray] run function mixedbag.iris:set_coordinates
#
# @public
# @context any entity
# @input
#   score $[x] mixedbag.iris
#       The integer value of the new X position
#   score ${x} mixedbag.iris
#       The fractional value of the new X position, as a number between 0 and 1000000

execute unless entity @s run return fail

# Clamp to 0..999999
execute if score ${x} mixedbag.iris matches ..0 run scoreboard players set ${x} mixedbag.iris 0
execute if score ${y} mixedbag.iris matches ..0 run scoreboard players set ${y} mixedbag.iris 0
execute if score ${z} mixedbag.iris matches ..0 run scoreboard players set ${z} mixedbag.iris 0
execute if score ${x} mixedbag.iris matches 1000000.. run scoreboard players set ${x} mixedbag.iris 999999
execute if score ${y} mixedbag.iris matches 1000000.. run scoreboard players set ${y} mixedbag.iris 999999
execute if score ${z} mixedbag.iris matches 1000000.. run scoreboard players set ${z} mixedbag.iris 999999

# Get integer coordinates for the first teleport command (absolute coordinates)
execute store result storage mixedbag.iris:args x int 1 run scoreboard players get $[x] mixedbag.iris
execute store result storage mixedbag.iris:args y int 1 run scoreboard players get $[y] mixedbag.iris
execute store result storage mixedbag.iris:args z int 1 run scoreboard players get $[z] mixedbag.iris

# Get fractional coordinates for the second teleport command (relative coordinates)
execute store result storage mixedbag.iris:args value int 1 run scoreboard players get ${x} mixedbag.iris
function mixedbag.iris:set_coordinates/pad_with_zeros with storage mixedbag.iris:args
data modify storage mixedbag.iris:args dx set string storage mixedbag.iris:data String -6

execute store result storage mixedbag.iris:args value int 1 run scoreboard players get ${y} mixedbag.iris
function mixedbag.iris:set_coordinates/pad_with_zeros with storage mixedbag.iris:args
data modify storage mixedbag.iris:args dy set string storage mixedbag.iris:data String -6

execute store result storage mixedbag.iris:args value int 1 run scoreboard players get ${z} mixedbag.iris
function mixedbag.iris:set_coordinates/pad_with_zeros with storage mixedbag.iris:args
data modify storage mixedbag.iris:args dz set string storage mixedbag.iris:data String -6

# Generate the two teleport commands
function mixedbag.iris:set_coordinates/teleport with storage mixedbag.iris:args
