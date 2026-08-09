#function compliance:technical/macro/spreadplayers/teleport_back with storage compliance:temp root.spreadplayers.og
#$say distance $(distance)
#$say range $(range)
#$say under $(under)
#$spreadplayers $(x) $(z) $(distance) $(range) under $(under) true @s
$spreadplayers ~ ~ $(distance) $(range) under $(under) true @s
execute store result score #compliance.temp.spreadplayers.y_distance compliance.dummy run data get entity @s Pos[1]
scoreboard players operation #compliance.temp.spreadplayers.y_distance compliance.dummy -= #compliance.temp.spreadplayers.y compliance.dummy

$execute unless score #compliance.temp.spreadplayers.y_distance compliance.dummy matches $(vertical_distance).. run return run function compliance:technical/macro/spreadplayers/reset
#$execute unless score #compliance.temp.spreadplayers.y_distance compliance.dummy matches $(vertical_distance).. run return run function compliance:technical/macro/spreadplayers/teleport_back with storage compliance:temp root.spreadplayers.og
#$execute if score #compliance.temp.spreadplayers.y_distance compliance.dummy matches $(vertical_distance).. run return run function compliance:technical/macro/spreadplayers/teleport_back with storage compliance:temp root.spreadplayers.og
scoreboard players operation #compliance.temp.spreadplayers.y_distance compliance.dummy *= #compliance.temp.spreadplayers.y_distance compliance.dummy
scoreboard players operation #compliance.temp.spreadplayers.y_distance compliance.dummy /= #compliance.temp.spreadplayers.y_distance compliance.dummy
$execute unless score #compliance.temp.spreadplayers.y_distance compliance.dummy matches $(vertical_distance).. run return run function compliance:technical/macro/spreadplayers/reset

scoreboard players add #compliance.temp.spreadplayers.attempts compliance.dummy 1
#$execute if score #compliance.temp.spreadplayers.attempts compliance.dummy matches $(iterations).. run return run function compliance:technical/macro/spreadplayers/reset
$execute if score #compliance.temp.spreadplayers.attempts compliance.dummy matches $(iterations).. run return run function compliance:technical/macro/spreadplayers/teleport_back with storage compliance:temp root.spreadplayers.og
function compliance:technical/macro/spreadplayers/teleport with storage compliance:temp root.spreadplayers
#scoreboard players reset @s compliance.temp