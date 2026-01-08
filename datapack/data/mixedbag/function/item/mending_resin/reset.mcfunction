advancement revoke @s only mixedbag:technical/using_item/mending_resin
advancement revoke @s only mixedbag:technical/tick/cooldown/mending_resin
execute unless score @s mixedbag.mending_resin.timer matches 10.. run function mixedbag:item/mending_resin/effect
scoreboard players set @s mixedbag.mending_resin.cooldown 2
scoreboard players add @s mixedbag.mending_resin.timer 1
