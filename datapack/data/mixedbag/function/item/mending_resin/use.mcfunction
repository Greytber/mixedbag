#Main logic
advancement revoke @s only mixedbag:technical/using_item/mending_resin
advancement revoke @s only mixedbag:technical/tick/cooldown/mending_resin
scoreboard players set @s mixedbag.mending_resin.cooldown 2
execute if score @s mixedbag.mending_resin.timer matches 10 if predicate mixedbag:entity_properties/mending_resin_valid run function mixedbag:item/mending_resin/effect

#Timer logic
scoreboard players add @s mixedbag.mending_resin.timer 1
execute if score @s mixedbag.mending_resin.timer matches 11.. run return fail
scoreboard players set @s mixedbag.mending_resin.cooldown 1

#Fancy effects ^q^
execute if score @s mixedbag.mending_resin.timer matches ..10 unless predicate mixedbag:entity_properties/mending_resin_valid run return fail
function mixedbag:item/mending_resin/particles
execute if score @s mixedbag.mending_resin.timer matches 2 run playsound mixedbag:item.mending_resin.using player @a[distance=..16] ~ ~ ~ 0.5 0.75 0
execute if score @s mixedbag.mending_resin.timer matches 6 run playsound mixedbag:item.mending_resin.using player @a[distance=..16] ~ ~ ~ 0.5 0.75 0
execute if score @s mixedbag.mending_resin.timer matches 10 run playsound mixedbag:item.mending_resin.using player @a[distance=..16] ~ ~ ~ 0.5 0.75 0