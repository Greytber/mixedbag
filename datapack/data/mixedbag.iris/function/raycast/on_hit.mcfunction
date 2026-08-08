#> mixedbag.iris:raycast/on_hit
#
# Writes all available information about the encountered block or entity
# See mixedbag.iris:get_target for full documentation
#
# @within mixedbag.iris:raycast/loop

# Write target type (one of BLOCK, ENTITY)
execute if score $block_hit mixedbag.iris matches 1 if score $entity_hit mixedbag.iris matches 0 run data modify storage mixedbag.iris:output TargetType set value "BLOCK"
execute if score $entity_hit mixedbag.iris matches 1 if score $block_hit mixedbag.iris matches 0 run data modify storage mixedbag.iris:output TargetType set value "ENTITY"
execute if score $block_hit mixedbag.iris matches 1 if score $entity_hit mixedbag.iris matches 1 if score $block_distance mixedbag.iris <= $entity_distance mixedbag.iris run data modify storage mixedbag.iris:output TargetType set value "BLOCK"
execute if score $block_hit mixedbag.iris matches 1 if score $entity_hit mixedbag.iris matches 1 if score $block_distance mixedbag.iris > $entity_distance mixedbag.iris run data modify storage mixedbag.iris:output TargetType set value "ENTITY"

# Write targeted block
execute if data storage mixedbag.iris:output {TargetType: "BLOCK"} run data modify storage mixedbag.iris:output TargetedBlock set value [0, 0, 0]
execute if data storage mixedbag.iris:output {TargetType: "BLOCK"} store result storage mixedbag.iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] mixedbag.iris
execute if data storage mixedbag.iris:output {TargetType: "BLOCK"} store result storage mixedbag.iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] mixedbag.iris
execute if data storage mixedbag.iris:output {TargetType: "BLOCK"} store result storage mixedbag.iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] mixedbag.iris
execute if data storage mixedbag.iris:output {TargetType: "BLOCK"} align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["mixedbag.iris", "mixedbag.iris.targeted_block"]}

# Write targeted entity
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} run data modify storage mixedbag.iris:output TargetedEntity set from storage mixedbag.iris:data TargetedBox.entity_id
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} run data remove storage mixedbag.iris:data TargetedBox.entity_id
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} run data remove storage mixedbag.iris:data TargetedFace.entity_id
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} store result score $entity_id mixedbag.iris run data get storage mixedbag.iris:output TargetedEntity
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} as @e[tag=mixedbag.iris.possible_target] if score @s mixedbag.iris.id = $entity_id mixedbag.iris run tag @s add mixedbag.iris.targeted_entity
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} run tag @e remove mixedbag.iris.possible_target

# Write target position
data modify storage mixedbag.iris:output TargetPosition.tile set value [0, 0, 0]
execute store result storage mixedbag.iris:output TargetPosition.tile[0] int 1 run scoreboard players get $[x] mixedbag.iris
execute store result storage mixedbag.iris:output TargetPosition.tile[1] int 1 run scoreboard players get $[y] mixedbag.iris
execute store result storage mixedbag.iris:output TargetPosition.tile[2] int 1 run scoreboard players get $[z] mixedbag.iris
data modify storage mixedbag.iris:output TargetPosition.point set from storage mixedbag.iris:data TargetPoint
execute store result score ${x} mixedbag.iris run data get storage mixedbag.iris:output TargetPosition.point[0] 1000000
execute store result score ${y} mixedbag.iris run data get storage mixedbag.iris:output TargetPosition.point[1] 1000000
execute store result score ${z} mixedbag.iris run data get storage mixedbag.iris:output TargetPosition.point[2] 1000000

# Write targeted box
data modify storage mixedbag.iris:output TargetedBox set from storage mixedbag.iris:data TargetedBox

# Write targeted face
data modify storage mixedbag.iris:output TargetedFace set from storage mixedbag.iris:data TargetedFace
execute if data storage mixedbag.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx mixedbag.iris matches 0.. run data modify storage mixedbag.iris:output TargetedFace.Direction set value "WEST"
execute if data storage mixedbag.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx mixedbag.iris matches ..-1 run data modify storage mixedbag.iris:output TargetedFace.Direction set value "EAST"
execute if data storage mixedbag.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy mixedbag.iris matches 0.. run data modify storage mixedbag.iris:output TargetedFace.Direction set value "DOWN"
execute if data storage mixedbag.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy mixedbag.iris matches ..-1 run data modify storage mixedbag.iris:output TargetedFace.Direction set value "UP"
execute if data storage mixedbag.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz mixedbag.iris matches 0.. run data modify storage mixedbag.iris:output TargetedFace.Direction set value "NORTH"
execute if data storage mixedbag.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz mixedbag.iris matches ..-1 run data modify storage mixedbag.iris:output TargetedFace.Direction set value "SOUTH"

# Write total distance
execute if data storage mixedbag.iris:output {TargetType: "BLOCK"} run scoreboard players operation $total_distance mixedbag.iris += $block_distance mixedbag.iris
execute if data storage mixedbag.iris:output {TargetType: "ENTITY"} run scoreboard players operation $total_distance mixedbag.iris += $entity_distance mixedbag.iris
execute store result storage mixedbag.iris:output Distance double 0.000001 run scoreboard players get $total_distance mixedbag.iris

# Run callback
execute if data storage mixedbag.iris:settings Callback run data modify storage mixedbag.iris:args function set from storage mixedbag.iris:settings Callback
execute if data storage mixedbag.iris:settings Callback run function mixedbag.iris:raycast/macro_functions/callback with storage mixedbag.iris:args

return run scoreboard players get $total_distance mixedbag.iris
