# Decrements durability on a specific slot of the player

data remove storage mixedbag:temp root
$data modify storage mixedbag:temp root.item set from entity @s $(slot_raw)
execute store result score #temp_0 mixedbag.dummy run data get storage mixedbag:temp root.item.components."minecraft:damage"

$scoreboard players remove #temp_0 mixedbag.dummy $(amount)
execute if score #temp_0 mixedbag.dummy matches ..1 run scoreboard players set #temp_0 mixedbag.dummy 0
execute store result storage mixedbag:temp root.macro_input.damage int 1 run scoreboard players get #temp_0 mixedbag.dummy
$data modify storage mixedbag:temp root.macro_input.slot set value $(slot)
function mixedbag:technical/macro/repair_slot/repair with storage mixedbag:temp root.macro_input