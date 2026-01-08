advancement revoke @s only mixedbag:technical/using_item/sickle
advancement revoke @s only mixedbag:technical/tick/cooldown/sickle
scoreboard players set @s mixedbag.sickle.cooldown 2
execute unless score @s mixedbag.sickle.timer matches 120.. run scoreboard players add @s mixedbag.sickle.timer 1
execute if predicate mixedbag:entity_properties/enchantment/overload if score @s mixedbag.sickle.timer matches 120..139 run scoreboard players add @s mixedbag.sickle.timer 1
execute if score @s mixedbag.sickle.timer matches 20 run playsound mixedbag:item.sickle.charge player @s ~ ~ ~ 1 0.975
execute if score @s mixedbag.sickle.timer matches 60 run playsound mixedbag:item.sickle.charge player @s ~ ~ ~ 1 1
execute if score @s mixedbag.sickle.timer matches 100 run playsound mixedbag:item.sickle.charge player @s ~ ~ ~ 1 1.025
execute if score @s mixedbag.sickle.timer matches 130 run playsound mixedbag:item.sickle.overcharge player @s ~ ~ ~ 1 1