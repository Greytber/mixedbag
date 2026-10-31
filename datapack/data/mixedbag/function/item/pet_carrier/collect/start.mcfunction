execute as @s run function mixedbag:item/pet_carrier/collect/as_entity

#scoreboard players set @p mixedbag.dummy
scoreboard players reset @p mixedbag.dummy
execute if data storage mixedbag:temp root.pet_carrier.entity.CustomName run scoreboard players set @s mixedbag.dummy 1

playsound mixedbag:item.pet_carrier.collect player @a[distance=..16] ~ ~ ~ 1 1 0.1
advancement grant @p[tag=mixedbag.pet_carrier.user] only mixedbag:minecraft/husbandry/pet_carrier
data remove storage mixedbag:temp root.pet_carrier