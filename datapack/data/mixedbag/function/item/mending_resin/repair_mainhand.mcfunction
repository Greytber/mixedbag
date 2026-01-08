execute if items entity @s weapon.mainhand #minecraft:enchantable/armor run function mixedbag:technical/macro/repair_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"32"}
execute unless items entity @s weapon.mainhand #minecraft:enchantable/armor run function mixedbag:technical/macro/repair_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"64"}
item modify entity @s weapon.mainhand mixedbag:durability/mending_resin
item modify entity @s[gamemode=!creative] weapon.offhand mixedbag:count/remove_1