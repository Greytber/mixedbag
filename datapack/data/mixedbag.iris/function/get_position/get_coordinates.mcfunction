#> mixedbag.iris:get_position/get_coordinates
#
# Gets the coordinates of the executing entity
#
# @context A marker
# @within mixedbag.iris:get_position/main
# @within mixedbag.iris:get_hitbox/entity

tag @s add mixedbag.iris.coordinate_getter

# Get integer coordinates
data modify storage mixedbag.iris:data Pos set from entity @s Pos
execute store result score $[x] mixedbag.iris store result storage mixedbag.iris:args x int -1 run data get storage mixedbag.iris:data Pos[0]
execute store result score $[y] mixedbag.iris store result storage mixedbag.iris:args y int -1 run data get storage mixedbag.iris:data Pos[1]
execute store result score $[z] mixedbag.iris store result storage mixedbag.iris:args z int -1 run data get storage mixedbag.iris:data Pos[2]

# Get fractional coordinates
function mixedbag.iris:get_position/teleport with storage mixedbag.iris:args
data modify storage mixedbag.iris:data Pos set from entity @s Pos
execute store result score ${x} mixedbag.iris run data get storage mixedbag.iris:data Pos[0] 1000000
execute store result score ${y} mixedbag.iris run data get storage mixedbag.iris:data Pos[1] 1000000
execute store result score ${z} mixedbag.iris run data get storage mixedbag.iris:data Pos[2] 1000000

# Clean up
data remove storage mixedbag.iris:data Pos
