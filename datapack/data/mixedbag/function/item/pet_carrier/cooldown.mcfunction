scoreboard players remove @s mixedbag.pet_carrier.cooldown 1
execute if score @s mixedbag.pet_carrier.cooldown matches 0.. run return run advancement revoke @s only mixedbag:technical/tick/cooldown/pet_carrier
scoreboard players reset @s mixedbag.pet_carrier.cooldown