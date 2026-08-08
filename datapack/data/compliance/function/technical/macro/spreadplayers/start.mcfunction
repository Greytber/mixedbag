scoreboard players reset @s compliance.temp
execute store result storage compliance:temp root.spreadplayers.og.x float 1 run data get entity @s Pos[0]
execute store result storage compliance:temp root.spreadplayers.og.y float 1 run data get entity @s Pos[1]
execute store result storage compliance:temp root.spreadplayers.og.z float 1 run data get entity @s Pos[2]
#execute store result score #compliance.temp.spreadplayers.og.x compliance.dummy run data get entity @s Pos[0]
#execute store result score #compliance.temp.spreadplayers.og.y compliance.dummy run data get entity @s Pos[1]
#execute store result score #compliance.temp.spreadplayers.og.z compliance.dummy run data get entity @s Pos[2]
execute store result score #compliance.temp.spreadplayers.x compliance.dummy run data get entity @s Pos[0]
execute store result score #compliance.temp.spreadplayers.y compliance.dummy run data get entity @s Pos[1]
execute store result score #compliance.temp.spreadplayers.z compliance.dummy run data get entity @s Pos[2]
execute store result storage compliance:temp root.spreadplayers.under int 1 run scoreboard players add #compliance.temp.spreadplayers.y compliance.dummy 4
#execute store result score @s compliance.temp run data get entity @s Pos[1]
#execute store result storage compliance:temp root.spreadplayers.under int 1 run scoreboard players add @s compliance.temp 4
#scoreboard players add @s compliance.temp 4

function compliance:technical/macro/spreadplayers/teleport with storage compliance:temp root.spreadplayers