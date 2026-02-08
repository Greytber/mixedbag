#execute on vehicle run function mixedbag:item/ornate_bucket/collect/as_nautilus
execute as @s run function mixedbag:item/pet_carrier/collect/as_entity

#scoreboard players set @p mixedbag.dummy
scoreboard players reset @p mixedbag.dummy
execute if data storage mixedbag:storage root.temp.entity.CustomName run scoreboard players set @s mixedbag.dummy 1

#execute as @p run item modify entity @s weapon.mainhand mixedbag:pet_carrier/full
#execute if score #mixedbag.temp2 mixedbag.dummy matches 1 run item modify entity @s weapon.mainhand mixedbag:ornate_bucket/full_nautilus
#execute if score #mixedbag.temp2 mixedbag.dummy matches 2 run item modify entity @s weapon.mainhand mixedbag:ornate_bucket/full_zombie_nautilus
#execute if score #mixedbag.temp2 mixedbag.dummy matches 3 run item modify entity @s weapon.mainhand mixedbag:ornate_bucket/full_zombie_nautilus_coral

playsound mixedbag:item.pet_carrier.collect player @a[distance=..16] ~ ~ ~ 1 1 0.1