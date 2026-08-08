#> mixedbag.iris:raycast/check_intersection/ray_plane
#
# Tests for ray-plane intersections with a face
#
# @within mixedbag.iris:raycast/check_intersection/ray_box
# @reads
#   storage mixedbag.iris:data Face: compound
#       Direction: string
#           The axis that is perpendicular to this face
#           One of WEST_EAST, UP_DOWN, NORTH_SOUTH
#       min: float[]
#       max: float[]
# @output
#   Success: 1 if the face is hit, 0 otherwise
#   Result: the distance, in mm, before the face is hit

# Save face coordinates
execute store result score $x0 mixedbag.iris run data get storage mixedbag.iris:data Face.min[0] 1000000
execute store result score $y0 mixedbag.iris run data get storage mixedbag.iris:data Face.min[1] 1000000
execute store result score $z0 mixedbag.iris run data get storage mixedbag.iris:data Face.min[2] 1000000
execute store result score $x1 mixedbag.iris run data get storage mixedbag.iris:data Face.max[0] 1000000
execute store result score $y1 mixedbag.iris run data get storage mixedbag.iris:data Face.max[1] 1000000
execute store result score $z1 mixedbag.iris run data get storage mixedbag.iris:data Face.max[2] 1000000

# Get distance (in mm) to the plane, i.e. how long the ray should extend before it hits the plane
# This value should be at most sqrt(3)*1000; if it's more than 2000, we fail (otherwise we risk overflow errors)
execute if data storage mixedbag.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance mixedbag.iris = $x0 mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance mixedbag.iris -= ${x} mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance mixedbag.iris = $y0 mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance mixedbag.iris -= ${y} mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance mixedbag.iris = $z0 mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance mixedbag.iris -= ${z} mixedbag.iris
scoreboard players operation $distance mixedbag.iris *= $1000 mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance mixedbag.iris /= $dx mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance mixedbag.iris /= $dy mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance mixedbag.iris /= $dz mixedbag.iris
execute if score $distance mixedbag.iris matches ..-1 run return fail
execute if score $distance mixedbag.iris matches 2000.. run return fail

# Get x position of the ray/plane intersection
scoreboard players operation $x_intersection mixedbag.iris = $distance mixedbag.iris
scoreboard players operation $x_intersection mixedbag.iris *= $dx mixedbag.iris
scoreboard players operation $x_intersection mixedbag.iris /= $1000 mixedbag.iris
scoreboard players operation $x_intersection mixedbag.iris += ${x} mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $x_intersection mixedbag.iris = $x0 mixedbag.iris

# Get y position of the ray/plane intersection
scoreboard players operation $y_intersection mixedbag.iris = $distance mixedbag.iris
scoreboard players operation $y_intersection mixedbag.iris *= $dy mixedbag.iris
scoreboard players operation $y_intersection mixedbag.iris /= $1000 mixedbag.iris
scoreboard players operation $y_intersection mixedbag.iris += ${y} mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $y_intersection mixedbag.iris = $y0 mixedbag.iris

# Get z position of the ray/plane intersection
scoreboard players operation $z_intersection mixedbag.iris = $distance mixedbag.iris
scoreboard players operation $z_intersection mixedbag.iris *= $dz mixedbag.iris
scoreboard players operation $z_intersection mixedbag.iris /= $1000 mixedbag.iris
scoreboard players operation $z_intersection mixedbag.iris += ${z} mixedbag.iris
execute if data storage mixedbag.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $z_intersection mixedbag.iris = $z0 mixedbag.iris

# Save the position of the intersection
data modify storage mixedbag.iris:data Face.Collision set value [0.0d, 0.0d, 0.0d]
execute store result storage mixedbag.iris:data Face.Collision[0] double 0.000001 run scoreboard players get $x_intersection mixedbag.iris
execute store result storage mixedbag.iris:data Face.Collision[1] double 0.000001 run scoreboard players get $y_intersection mixedbag.iris
execute store result storage mixedbag.iris:data Face.Collision[2] double 0.000001 run scoreboard players get $z_intersection mixedbag.iris

# See if that intersection falls within the face
execute if score $x_intersection mixedbag.iris >= $x0 mixedbag.iris if score $x_intersection mixedbag.iris <= $x1 mixedbag.iris \
        if score $y_intersection mixedbag.iris >= $y0 mixedbag.iris if score $y_intersection mixedbag.iris <= $y1 mixedbag.iris \
        if score $z_intersection mixedbag.iris >= $z0 mixedbag.iris if score $z_intersection mixedbag.iris <= $z1 mixedbag.iris \
        run return run scoreboard players get $distance mixedbag.iris

return fail
