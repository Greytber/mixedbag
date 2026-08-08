#> mixedbag.iris:get_position/get_rotation
#
# Returns the context rotation as a vector
#
# @context A marker and a rotation
# @within mixedbag.iris:get_position/main

execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1000000
data modify storage mixedbag.iris:data Pos set from entity @s Pos
execute store result score $dx mixedbag.iris run data get storage mixedbag.iris:data Pos[0]
execute store result score $dy mixedbag.iris run data get storage mixedbag.iris:data Pos[1]
execute store result score $dz mixedbag.iris run data get storage mixedbag.iris:data Pos[2]
