data remove storage mixedbag:temp loot_table.data
$data modify storage mixedbag:temp loot_table_to_data.loot_table set value "$(loot_table)"
function mixedbag:loot_table_to_data/macro with storage mixedbag:temp loot_table_to_data