#> mixedbag.iris:get_position/main
#
# Gets the current coordinates and rotation.
# Coordinates are returned as a triplet of integer coordinates and a triplet of fractional coordinates.
# Rotation is returned as a steering vector of magnitude 1000000.
#
# @context a marker
# @within mixedbag.iris:get_target
# @within mixedbag.iris:get_hitbox/entity
# @writes
#    score $[x] mixedbag.iris
#        The integer x coordinate of the current position
#    score $[y] mixedbag.iris
#        The integer y coordinate of the current position
#    score $[z] mixedbag.iris
#        The integer z coordinate of the current position
#    score ${x} mixedbag.iris
#        The fractional x coordinate of the current position, represented by an integer between 0 and 1000000
#    score ${y} mixedbag.iris
#        The fractional y coordinate of the current position, represented by an integer between 0 and 1000000
#    score ${z} mixedbag.iris
#        The fractional z coordinate of the current position, represented by an integer between 0 and 1000000
#    score $dx mixedbag.iris
#        The x coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000
#    score $dy mixedbag.iris
#        The y coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000
#    score #dz mixedbag.iris
#        The z coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000

function mixedbag.iris:get_position/get_coordinates
function mixedbag.iris:get_position/get_rotation
kill @s
