#> mixedbag.iris:get_hitbox/entity
#
# Returns the shape of the executing entity
#
# @within mixedbag.iris:raycast/test_for_entity
# @writes
#	storage mixedbag.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Get entity dimensions
scoreboard players set $entity_found mixedbag.iris 0
execute if score $entity_found mixedbag.iris matches 0 if entity @s[type=#mixedbag.iris:tree/0] run function mixedbag.iris:get_hitbox/entity/tree/0
execute if score $entity_found mixedbag.iris matches 0 if entity @s[type=#mixedbag.iris:tree/1] run function mixedbag.iris:get_hitbox/entity/tree/1
execute if score $entity_found mixedbag.iris matches 0 if entity @s[type=#mixedbag.iris:tree/2] run function mixedbag.iris:get_hitbox/entity/tree/2
execute if score $entity_found mixedbag.iris matches 0 if entity @s[type=#mixedbag.iris:tree/3] run function mixedbag.iris:get_hitbox/entity/tree/3
execute if score $entity_found mixedbag.iris matches 0 if entity @s[type=#mixedbag.iris:tree/4] run function mixedbag.iris:get_hitbox/entity/tree/4

# Scale
function mixedbag.iris:get_hitbox/entity/scale
execute if predicate mixedbag.iris:baby run scoreboard players operation $entity_width mixedbag.iris /= $2 mixedbag.iris
execute if predicate mixedbag.iris:baby run scoreboard players operation $entity_height mixedbag.iris /= $2 mixedbag.iris

# Get the entity's coordinates
scoreboard players operation $entity_[x] mixedbag.iris = $[x] mixedbag.iris
scoreboard players operation $entity_[y] mixedbag.iris = $[y] mixedbag.iris
scoreboard players operation $entity_[z] mixedbag.iris = $[z] mixedbag.iris
scoreboard players operation $entity_{x} mixedbag.iris = ${x} mixedbag.iris
scoreboard players operation $entity_{y} mixedbag.iris = ${y} mixedbag.iris
scoreboard players operation $entity_{z} mixedbag.iris = ${z} mixedbag.iris
execute at @s summon minecraft:marker run function mixedbag.iris:get_position/get_coordinates
kill @e[type=minecraft:marker, tag=mixedbag.iris.coordinate_getter]
scoreboard players operation $entity_[x] mixedbag.iris >< $[x] mixedbag.iris
scoreboard players operation $entity_[y] mixedbag.iris >< $[y] mixedbag.iris
scoreboard players operation $entity_[z] mixedbag.iris >< $[z] mixedbag.iris
scoreboard players operation $entity_{x} mixedbag.iris >< ${x} mixedbag.iris
scoreboard players operation $entity_{y} mixedbag.iris >< ${y} mixedbag.iris
scoreboard players operation $entity_{z} mixedbag.iris >< ${z} mixedbag.iris

# Save how many blocks away the entity is from the block origin
scoreboard players operation $entity_dx mixedbag.iris = $entity_[x] mixedbag.iris
scoreboard players operation $entity_dx mixedbag.iris -= $[x] mixedbag.iris
scoreboard players operation $entity_dx mixedbag.iris *= $1000000 mixedbag.iris
scoreboard players operation $entity_dx mixedbag.iris += $entity_{x} mixedbag.iris
scoreboard players operation $entity_dy mixedbag.iris = $entity_[y] mixedbag.iris
scoreboard players operation $entity_dy mixedbag.iris -= $[y] mixedbag.iris
scoreboard players operation $entity_dy mixedbag.iris *= $1000000 mixedbag.iris
scoreboard players operation $entity_dy mixedbag.iris += $entity_{y} mixedbag.iris
scoreboard players operation $entity_dz mixedbag.iris = $entity_[z] mixedbag.iris
scoreboard players operation $entity_dz mixedbag.iris -= $[z] mixedbag.iris
scoreboard players operation $entity_dz mixedbag.iris *= $1000000 mixedbag.iris
scoreboard players operation $entity_dz mixedbag.iris += $entity_{z} mixedbag.iris

# Get the coordinates of the bounding box
scoreboard players operation $entity_half_width mixedbag.iris = $entity_width mixedbag.iris
scoreboard players operation $entity_half_width mixedbag.iris /= $2 mixedbag.iris
scoreboard players operation $entity_x0 mixedbag.iris = $entity_dx mixedbag.iris
scoreboard players operation $entity_x0 mixedbag.iris -= $entity_half_width mixedbag.iris
execute if score $entity_x0 mixedbag.iris matches ..0 run scoreboard players set $entity_x0 mixedbag.iris 0
scoreboard players operation $entity_y0 mixedbag.iris = $entity_dy mixedbag.iris
execute if score $entity_y0 mixedbag.iris matches ..0 run scoreboard players set $entity_y0 mixedbag.iris 0
scoreboard players operation $entity_z0 mixedbag.iris = $entity_dz mixedbag.iris
scoreboard players operation $entity_z0 mixedbag.iris -= $entity_half_width mixedbag.iris
execute if score $entity_z0 mixedbag.iris matches ..0 run scoreboard players set $entity_z0 mixedbag.iris 0
scoreboard players operation $entity_x1 mixedbag.iris = $entity_dx mixedbag.iris
scoreboard players operation $entity_x1 mixedbag.iris += $entity_half_width mixedbag.iris
execute if score $entity_x1 mixedbag.iris matches 1000000.. run scoreboard players set $entity_x1 mixedbag.iris 1000000
scoreboard players operation $entity_y1 mixedbag.iris = $entity_dy mixedbag.iris
scoreboard players operation $entity_y1 mixedbag.iris += $entity_height mixedbag.iris
execute if score $entity_y1 mixedbag.iris matches 1000000.. run scoreboard players set $entity_y1 mixedbag.iris 1000000
scoreboard players operation $entity_z1 mixedbag.iris = $entity_dz mixedbag.iris
scoreboard players operation $entity_z1 mixedbag.iris += $entity_half_width mixedbag.iris
execute if score $entity_z1 mixedbag.iris matches 1000000.. run scoreboard players set $entity_z1 mixedbag.iris 1000000

# Store these coordinates to storage
data modify storage mixedbag.iris:data Shape append value {type: "ENTITY", min: [0.0, 0.0, 0.0], max: [0.0, 0.0, 0.0]}
execute store result storage mixedbag.iris:data Shape[-1].min[0] double 0.000001 run scoreboard players get $entity_x0 mixedbag.iris
execute store result storage mixedbag.iris:data Shape[-1].min[1] double 0.000001 run scoreboard players get $entity_y0 mixedbag.iris
execute store result storage mixedbag.iris:data Shape[-1].min[2] double 0.000001 run scoreboard players get $entity_z0 mixedbag.iris
execute store result storage mixedbag.iris:data Shape[-1].max[0] double 0.000001 run scoreboard players get $entity_x1 mixedbag.iris
execute store result storage mixedbag.iris:data Shape[-1].max[1] double 0.000001 run scoreboard players get $entity_y1 mixedbag.iris
execute store result storage mixedbag.iris:data Shape[-1].max[2] double 0.000001 run scoreboard players get $entity_z1 mixedbag.iris

# Special case for item frames and paintings which are annoying
#execute if score $entity_found mixedbag.iris matches 0 store success score $entity_found mixedbag.iris store success score $entity.is_item_frame mixedbag.iris if entity @s[type=#mixedbag.iris:item_frames]
#execute if score $entity.is_item_frame mixedbag.iris matches 1 run function mixedbag.iris:get_hitbox/entity/item_frame

# Give this entity a tag and an ID, and store the ID in the hitbox
tag @s add mixedbag.iris.possible_target
scoreboard players operation @s mixedbag.iris.id = $max_entity_id mixedbag.iris.id
execute store result storage mixedbag.iris:data Shape[-1].entity_id int 1 run scoreboard players get @s mixedbag.iris.id
scoreboard players add $max_entity_id mixedbag.iris.id 1
