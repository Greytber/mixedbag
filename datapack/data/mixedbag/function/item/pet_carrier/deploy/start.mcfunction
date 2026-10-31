data remove storage mixedbag:temp root.pet_carrier
#data modify storage mixedbag:temp root.pet_carrier.entity set from entity @s SelectedItem.components."minecraft:custom_data".mixedbag.entity_data
function mixedbag:item/pet_carrier/deploy/hand_check
#data modify storage mixedbag:temp root.pet_carrier.entity.Motion set from entity @s Motion
#data modify storage mixedbag:temp root.pet_carrier.player.Rotation set from entity @s Rotation

#function mixedbag:item/pet_carrier/deploy/summon_macro with storage mixedbag:temp root.pet_carrier.entity
execute as @s at @s run function mixedbag:item/pet_carrier/deploy/summon_macro with storage mixedbag:temp root.pet_carrier.entity

playsound mixedbag:item.pet_carrier.deploy player @a[distance=..16] ~ ~ ~ 1 1 0.1

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{mixedbag:{id:"pet_carrier"}}] run return run item modify entity @s weapon.mainhand mixedbag:pet_carrier/empty
item modify entity @s weapon.offhand mixedbag:pet_carrier/empty