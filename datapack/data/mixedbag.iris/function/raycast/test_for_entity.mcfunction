#> mixedbag.iris:raycast/test_for_entity
#
# @within mixedbag.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if an entity was hit, 0 otherwise

execute unless data storage mixedbag.iris:settings {TargetEntities: true} run return fail
execute align xyz unless entity @e[type=!#mixedbag.iris:ignore, tag=!mixedbag.iris.ignore, dx=0, dy=0, dz=0, tag=!mixedbag.iris.executing] run return fail
execute align xyz as @e[type=!#mixedbag.iris:ignore, tag=!mixedbag.iris.ignore, dx=0, dy=0, dz=0, tag=!mixedbag.iris.executing] run function mixedbag.iris:get_hitbox/entity
return run function mixedbag.iris:raycast/check_intersection/loop
