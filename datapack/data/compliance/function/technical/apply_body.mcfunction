function smithed.tech_slots:impl/player/set_body_item
item modify entity @s armor.body {function:"minecraft:set_enchantments", enchantments:{"compliance:technical":1}}
data modify storage smithed.tech_slots:data input set value {id:"compliance:technical",modifier:{function:"minecraft:set_enchantments", enchantments:{"compliance:technical":1}}}
function smithed.tech_slots:impl/storage/save_modifier