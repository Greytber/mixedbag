#> mixedbag.iris:raycast/loop_sickle
#
# Loops forward until an obstacle is hit or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within mixedbag.iris:get_target
# @within mixedbag.iris:raycast/loop_sickle

# Test for collisions
execute store success score $block_hit mixedbag.iris store result score $block_distance mixedbag.iris run function mixedbag.iris:raycast/test_for_block
execute store success score $entity_hit mixedbag.iris store result score $entity_distance mixedbag.iris run function mixedbag.iris:raycast/test_for_entity
execute if score $block_hit mixedbag.iris matches 1 run return run function mixedbag.iris:raycast/on_hit
execute if score $entity_hit mixedbag.iris matches 1 run return run function mixedbag.iris:raycast/on_hit

# Proceed to the next block
execute store result score $to_next_block mixedbag.iris run function mixedbag.iris:raycast/find_next_block
scoreboard players operation $total_distance mixedbag.iris += $to_next_block mixedbag.iris

# Test
#particle minecraft:flame ^ ^ ^ 0 0 0 0 4
#execute if score $depth mixedbag.iris matches 1 run particle minecraft:copper_fire_flame ^ ^ ^0.5 0.01 0.01 0.01 0 8
#execute if score $depth mixedbag.iris matches 1 if score @s mixedbag.sickle.timer matches 20.. as @s at @s anchored eyes positioned ~-3 ~-1.5 ~-3 as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,dx=6,dy=3,dz=6] run tag @s add mixedbag.temp.sickle_victim
#execute if score $depth mixedbag.iris matches 2 run particle minecraft:soul_fire_flame ^ ^ ^ 0.01 0.01 0.01 0 8
#execute if score $depth mixedbag.iris matches 2 run particle minecraft:copper_fire_flame ^ ^ ^0.5 0.01 0.01 0.01 0 8

# Tag entities to be damaged
execute if score $depth mixedbag.iris matches 1 if score @s mixedbag.sickle.timer matches 20.. positioned ^ ^ ^0.5 as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,distance=..2] run tag @s add mixedbag.temp.sickle_victim
#execute if score $depth mixedbag.iris matches 2 if score @s mixedbag.sickle.timer matches 20.. as @s at @s anchored eyes positioned ~-3 ~-1.5 ~-3 as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,dx=6,dy=3,dz=6] run tag @s add mixedbag.temp.sickle_victim
execute if score $depth mixedbag.iris matches 2 if score @s mixedbag.sickle.timer matches 60.. positioned ^ ^ ^ as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,distance=..2] run tag @s add mixedbag.temp.sickle_victim
execute if score $depth mixedbag.iris matches 3 if score @s mixedbag.sickle.timer matches 100.. positioned ^ ^ ^ as @e[tag=!mixedbag.temp.sickle,type=!#mixedbag:non_living,distance=..3] run tag @s add mixedbag.temp.sickle_victim


# Fail if the maximum recursion depth is reached and nothing was found
scoreboard players add $depth mixedbag.iris 1
execute if score $depth mixedbag.iris = $max_depth mixedbag.iris run tag @s remove mixedbag.iris.executing
execute if score $depth mixedbag.iris = $max_depth mixedbag.iris run return run function mixedbag.iris:raycast/end

# Otherwise, loop this function at the next block
execute if data storage mixedbag.iris:data {NextCoordinateChange: "x"} if score $dx mixedbag.iris matches 0.. positioned ~1 ~ ~ run return run function mixedbag.iris:raycast/loop_sickle
execute if data storage mixedbag.iris:data {NextCoordinateChange: "x"} if score $dx mixedbag.iris matches ..-1 positioned ~-1 ~ ~ run return run function mixedbag.iris:raycast/loop_sickle
execute if data storage mixedbag.iris:data {NextCoordinateChange: "y"} if score $dy mixedbag.iris matches 0.. positioned ~ ~1 ~ run return run function mixedbag.iris:raycast/loop_sickle
execute if data storage mixedbag.iris:data {NextCoordinateChange: "y"} if score $dy mixedbag.iris matches ..-1 positioned ~ ~-1 ~ run return run function mixedbag.iris:raycast/loop_sickle
execute if data storage mixedbag.iris:data {NextCoordinateChange: "z"} if score $dz mixedbag.iris matches 0.. positioned ~ ~ ~1 run return run function mixedbag.iris:raycast/loop_sickle
execute if data storage mixedbag.iris:data {NextCoordinateChange: "z"} if score $dz mixedbag.iris matches ..-1 positioned ~ ~ ~-1 run return run function mixedbag.iris:raycast/loop_sickle
execute if score $depth mixedbag.iris < $max_depth mixedbag.iris at @s run return run function mixedbag.iris:raycast/loop_sickle
