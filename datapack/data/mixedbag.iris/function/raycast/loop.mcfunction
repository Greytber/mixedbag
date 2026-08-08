#> mixedbag.iris:raycast/loop
#
# Loops forward until an obstacle is hit or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within mixedbag.iris:get_target
# @within mixedbag.iris:raycast/loop

# Test for collisions
execute store success score $block_hit mixedbag.iris store result score $block_distance mixedbag.iris run function mixedbag.iris:raycast/test_for_block
execute store success score $entity_hit mixedbag.iris store result score $entity_distance mixedbag.iris run function mixedbag.iris:raycast/test_for_entity
execute if score $block_hit mixedbag.iris matches 1 run return run function mixedbag.iris:raycast/on_hit
execute if score $entity_hit mixedbag.iris matches 1 run return run function mixedbag.iris:raycast/on_hit

# Proceed to the next block
execute store result score $to_next_block mixedbag.iris run function mixedbag.iris:raycast/find_next_block
scoreboard players operation $total_distance mixedbag.iris += $to_next_block mixedbag.iris

# Fail if the maximum recursion depth is reached and nothing was found
scoreboard players add $depth mixedbag.iris 1
execute if score $depth mixedbag.iris = $max_depth mixedbag.iris run tag @s remove mixedbag.iris.executing
execute if score $depth mixedbag.iris = $max_depth mixedbag.iris run return fail

# Otherwise, loop this function at the next block
execute if data storage mixedbag.iris:data {NextCoordinateChange: "x"} if score $dx mixedbag.iris matches 0.. positioned ~1 ~ ~ run return run function mixedbag.iris:raycast/loop
execute if data storage mixedbag.iris:data {NextCoordinateChange: "x"} if score $dx mixedbag.iris matches ..-1 positioned ~-1 ~ ~ run return run function mixedbag.iris:raycast/loop
execute if data storage mixedbag.iris:data {NextCoordinateChange: "y"} if score $dy mixedbag.iris matches 0.. positioned ~ ~1 ~ run return run function mixedbag.iris:raycast/loop
execute if data storage mixedbag.iris:data {NextCoordinateChange: "y"} if score $dy mixedbag.iris matches ..-1 positioned ~ ~-1 ~ run return run function mixedbag.iris:raycast/loop
execute if data storage mixedbag.iris:data {NextCoordinateChange: "z"} if score $dz mixedbag.iris matches 0.. positioned ~ ~ ~1 run return run function mixedbag.iris:raycast/loop
execute if data storage mixedbag.iris:data {NextCoordinateChange: "z"} if score $dz mixedbag.iris matches ..-1 positioned ~ ~ ~-1 run return run function mixedbag.iris:raycast/loop
execute if score $depth mixedbag.iris < $max_depth mixedbag.iris at @s run return run function mixedbag.iris:raycast/loop
