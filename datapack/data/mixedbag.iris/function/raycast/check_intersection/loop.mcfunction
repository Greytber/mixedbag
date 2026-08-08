#> mixedbag.iris:raycast/check_intersection/loop
#
# Tests for ray-box intersections with all axis-aligned bounding boxes of a hitbox
#
# @within mixedbag.iris:raycast/test_for_block
# @within mixedbag.iris:raycast/test_for_entity
# @within mixedbag.iris:raycast/check_intersection/loop
# @reads
#   storage mixedbag.iris:data Shape
#       A list of axis-aligned bounding boxes of the form {min: [x, y, z], max: [x, y, z]}
# @output
#   Success: 1 if a box is hit, 0 otherwise
#   Result: the distance to the first box that is hit

# Test for intersection with a single bounding box
data modify storage mixedbag.iris:data Box set from storage mixedbag.iris:data Shape[-1]
data remove storage mixedbag.iris:data Shape[-1]
execute store success score $is_hit mixedbag.iris store result score $distance mixedbag.iris run function mixedbag.iris:raycast/check_intersection/ray_box

# If this box is indeed hit before any other this far, remember the targeted box and the targeted face
execute if score $is_hit mixedbag.iris matches 1 if score $distance mixedbag.iris >= $min_distance mixedbag.iris run scoreboard players set $is_hit mixedbag.iris 0
execute if score $is_hit mixedbag.iris matches 1 run data modify storage mixedbag.iris:data TargetedBox set from storage mixedbag.iris:data Box
execute if score $is_hit mixedbag.iris matches 1 if score $hits_x_face mixedbag.iris matches 1 if score $to_aabb mixedbag.iris = $to_x_face mixedbag.iris run data modify storage mixedbag.iris:data TargetedFace set from storage mixedbag.iris:data Faces[0]
execute if score $is_hit mixedbag.iris matches 1 if score $hits_y_face mixedbag.iris matches 1 if score $to_aabb mixedbag.iris = $to_y_face mixedbag.iris run data modify storage mixedbag.iris:data TargetedFace set from storage mixedbag.iris:data Faces[1]
execute if score $is_hit mixedbag.iris matches 1 if score $hits_z_face mixedbag.iris matches 1 if score $to_aabb mixedbag.iris = $to_z_face mixedbag.iris run data modify storage mixedbag.iris:data TargetedFace set from storage mixedbag.iris:data Faces[2]
execute if score $is_hit mixedbag.iris matches 1 run scoreboard players operation $min_distance mixedbag.iris = $distance mixedbag.iris

# Loop this function until all boxes have been analyzed
execute if data storage mixedbag.iris:data Shape[-1] run return run function mixedbag.iris:raycast/check_intersection/loop
execute if score $min_distance mixedbag.iris matches 2147483647 run return fail
scoreboard players operation $min_distance mixedbag.iris *= $1000 mixedbag.iris
return run scoreboard players get $min_distance mixedbag.iris
