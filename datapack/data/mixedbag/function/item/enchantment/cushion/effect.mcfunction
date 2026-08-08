item modify entity @s weapon.offhand mixedbag:count/remove_wind_charge
effect give @s minecraft:slow_falling 1 0 true
function mixedbag:entity/technical/custom_explosion/cushion_wind_burst
scoreboard players set @s mixedbag.cushion.cooldown 20
advancement revoke @s only mixedbag:technical/tick/cooldown/cushion