#> mixedbag.iris:raycast/test_for_block
#
# @within mixedbag.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if a block was hit, 0 otherwise

# Check if the current block is loaded
execute store success score $loaded mixedbag.iris if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ masked
execute if score $loaded mixedbag.iris matches 0 run return fail

# Check if the current block is blacklisted, or explicitly not whitelisted
execute if data storage mixedbag.iris:settings Whitelist run data modify storage mixedbag.iris:args id set from storage mixedbag.iris:settings Whitelist
execute if data storage mixedbag.iris:settings Whitelist store success score $is_whitelisted mixedbag.iris run function mixedbag.iris:raycast/macro_functions/block_id_test with storage mixedbag.iris:args
execute if data storage mixedbag.iris:settings Whitelist unless score $is_whitelisted mixedbag.iris matches 1 run return fail
execute if data storage mixedbag.iris:settings Blacklist run data modify storage mixedbag.iris:args id set from storage mixedbag.iris:settings Blacklist
execute if data storage mixedbag.iris:settings Blacklist store success score $is_blacklisted mixedbag.iris run function mixedbag.iris:raycast/macro_functions/block_id_test with storage mixedbag.iris:args
execute if data storage mixedbag.iris:settings Blacklist if score $is_blacklisted mixedbag.iris matches 1 run return fail

# See if the block is hit
function mixedbag.iris:get_hitbox/block
execute unless data storage mixedbag.iris:data Shape[0] run return fail
return run function mixedbag.iris:raycast/check_intersection/loop
