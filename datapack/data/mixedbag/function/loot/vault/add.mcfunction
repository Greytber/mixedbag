execute if data block ~ ~ ~ config.loot_table run return fail
execute store result score $chance mixedbag.dummy run random value 1..100
execute if score $chance mixedbag.dummy matches 15.. run return fail
function mixedbag:loot_table_to_data/main {loot_table: "mixedbag:chests/trial_chambers/reward_unique"}
data modify block ~ ~ ~ server_data.items_to_eject prepend from storage mixedbag:temp loot_table.data
