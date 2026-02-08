data remove storage mixedbag:storage root.temp
data modify storage mixedbag:storage root.temp.entity set from entity @s SelectedItem.components."minecraft:custom_data".mixedbag.entity_data
#data modify storage mixedbag:storage root.temp.entity.Motion set from entity @s Motion
#data modify storage mixedbag:storage root.temp.player.Rotation set from entity @s Rotation

#function mixedbag:item/pet_carrier/deploy/summon_macro with storage mixedbag:storage root.temp.entity
execute as @s at @s run function mixedbag:item/pet_carrier/deploy/summon_macro with storage mixedbag:storage root.temp.entity
#execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{mixedbag:{full:1}}] summon minecraft:nautilus run function mixedbag:item/pet_carrier/deploy/as_entity
#execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{mixedbag:{full:1}}] summon minecraft:nautilus run function mixedbag:item/ornate_bucket/deploy/as_nautilus
#execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{mixedbag:{full:2}}] summon minecraft:zombie_nautilus run function mixedbag:item/ornate_bucket/deploy/as_nautilus
#execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{mixedbag:{full:3}}] summon minecraft:zombie_nautilus run function mixedbag:item/ornate_bucket/deploy/as_nautilus

item modify entity @s weapon.mainhand mixedbag:pet_carrier/empty

playsound mixedbag:item.pet_carrier.deploy player @a[distance=..16] ~ ~ ~ 1 1 0.1
#playsound mixedbag:item.ornate_bucket.flute player @a
#playsound mixedbag:item.ornate_bucket.summon player @a