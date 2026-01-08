scoreboard players set @s mixedbag.courage.flag 1
scoreboard players set @s mixedbag.courage.timer 30
#execute if score @s mixedbag.sickle.timer matches 60.. run scoreboard players set @s mixedbag.courage.timer 15
#execute if score @s mixedbag.sickle.timer matches 110.. run scoreboard players set @s mixedbag.courage.timer 20
advancement revoke @s only mixedbag:technical/tick/cooldown/courage