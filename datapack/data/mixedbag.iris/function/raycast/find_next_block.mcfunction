#> mixedbag.iris:raycast/find_next_block
#
# Find the coordinates of the next tile that should be traversed by the ray
#
# @within mixedbag.iris:raycast/loop
# @writes
#   scores $[x] $[y] $[z] mixedbag.iris
#       The new position
#   scores $last_[x] $last_[y] $last_[z] mixedbag.iris
#       The previous position
# @output
#   Result: The distance to the next block
#   Success: 1

# Save previous coordinates
scoreboard players operation $last_[x] mixedbag.iris = $[x] mixedbag.iris
scoreboard players operation $last_[y] mixedbag.iris = $[y] mixedbag.iris
scoreboard players operation $last_[z] mixedbag.iris = $[z] mixedbag.iris

# See what distance the ray needs to travel to hit another tile with a different x coordinate
execute if score $dx mixedbag.iris matches 0.. run scoreboard players set $to_next_x mixedbag.iris 1000000000
execute if score $dx mixedbag.iris matches ..-1 run scoreboard players set $to_next_x mixedbag.iris 0
scoreboard players operation ${x}*1000 mixedbag.iris = ${x} mixedbag.iris
scoreboard players operation ${x}*1000 mixedbag.iris *= $1000 mixedbag.iris
scoreboard players operation $to_next_x mixedbag.iris -= ${x}*1000 mixedbag.iris
scoreboard players operation $to_next_x mixedbag.iris /= $dx mixedbag.iris

# See what distance the ray needs to travel to hit another tile with a different y coordinate
execute if score $dy mixedbag.iris matches 0.. run scoreboard players set $to_next_y mixedbag.iris 1000000000
execute if score $dy mixedbag.iris matches ..-1 run scoreboard players set $to_next_y mixedbag.iris 0
scoreboard players operation ${y}*1000 mixedbag.iris = ${y} mixedbag.iris
scoreboard players operation ${y}*1000 mixedbag.iris *= $1000 mixedbag.iris
scoreboard players operation $to_next_y mixedbag.iris -= ${y}*1000 mixedbag.iris
scoreboard players operation $to_next_y mixedbag.iris /= $dy mixedbag.iris

# See what distance the ray needs to travel to hit another tile with a different z coordinate
execute if score $dz mixedbag.iris matches 0.. run scoreboard players set $to_next_z mixedbag.iris 1000000000
execute if score $dz mixedbag.iris matches ..-1 run scoreboard players set $to_next_z mixedbag.iris 0
scoreboard players operation ${z}*1000 mixedbag.iris = ${z} mixedbag.iris
scoreboard players operation ${z}*1000 mixedbag.iris *= $1000 mixedbag.iris
scoreboard players operation $to_next_z mixedbag.iris -= ${z}*1000 mixedbag.iris
scoreboard players operation $to_next_z mixedbag.iris /= $dz mixedbag.iris

# Determine which distance is the shortest
execute if score $to_next_x mixedbag.iris <= $to_next_y mixedbag.iris if score $to_next_x mixedbag.iris <= $to_next_z mixedbag.iris run data merge storage mixedbag.iris:data {NextCoordinateChange: "x"}
execute if score $to_next_y mixedbag.iris <= $to_next_x mixedbag.iris if score $to_next_y mixedbag.iris <= $to_next_z mixedbag.iris run data merge storage mixedbag.iris:data {NextCoordinateChange: "y"}
execute if score $to_next_z mixedbag.iris <= $to_next_x mixedbag.iris if score $to_next_z mixedbag.iris <= $to_next_y mixedbag.iris run data merge storage mixedbag.iris:data {NextCoordinateChange: "z"}

# Calculate the new coordinates when the ray reaches the next tile
execute if data storage mixedbag.iris:data {NextCoordinateChange: "x"} run data modify storage mixedbag.iris:args {} merge value {a: "x", b: "y", c: "z"}
execute if data storage mixedbag.iris:data {NextCoordinateChange: "y"} run data modify storage mixedbag.iris:args {} merge value {a: "y", b: "z", c: "x"}
execute if data storage mixedbag.iris:data {NextCoordinateChange: "z"} run data modify storage mixedbag.iris:args {} merge value {a: "z", b: "x", c: "y"}
function mixedbag.iris:raycast/macro_functions/find_next_block_aux with storage mixedbag.iris:args

# Return the added distance
return run scoreboard players operation $to_next_block mixedbag.iris *= $1000 mixedbag.iris
