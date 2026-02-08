#Main logic
execute unless score @s mixedbag.pet_carrier.cooldown matches 1.. if entity @s[advancements={mixedbag:technical/using_item/pet_carrier={full=false}}] run function mixedbag:item/pet_carrier/effect
execute unless score @s mixedbag.pet_carrier.cooldown matches 1.. if entity @s[advancements={mixedbag:technical/using_item/pet_carrier={full=true}}] run function mixedbag:item/pet_carrier/deploy/start
advancement revoke @s only mixedbag:technical/using_item/pet_carrier
advancement revoke @s only mixedbag:technical/tick/cooldown/pet_carrier
#execute unless score @s mixedbag.pet_carrier.cooldown matches 1.. run function mixedbag:item/pet_carrier/effect
scoreboard players set @s mixedbag.pet_carrier.cooldown 2

#Cooldown logic
scoreboard players set @s mixedbag.pet_carrier.cooldown 2