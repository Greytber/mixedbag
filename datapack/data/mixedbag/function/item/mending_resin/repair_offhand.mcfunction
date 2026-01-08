execute if items entity @s weapon.offhand #minecraft:enchantable/armor run function mixedbag:technical/macro/repair_slot/main {slot:"weapon.offhand",slot_raw:"equipment.offhand",amount:"32"}
execute unless items entity @s weapon.offhand #minecraft:enchantable/armor run function mixedbag:technical/macro/repair_slot/main {slot:"weapon.offhand",slot_raw:"equipment.offhand",amount:"64"}
item modify entity @s weapon.offhand mixedbag:durability/mending_resin
item modify entity @s[gamemode=!creative] weapon.mainhand mixedbag:count/remove_1