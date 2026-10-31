data remove storage mixedbag:temp root.loot_table_to_data
data remove storage mixedbag:temp root.loot_table
$data modify storage mixedbag:temp root.loot_table_to_data.loot_table set value "$(loot_table)"
function mixedbag:loot_table_to_data/macro with storage mixedbag:temp root.loot_table_to_data