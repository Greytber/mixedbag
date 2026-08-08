#$say distance $(distance)
#$say range $(range)
#$say under $(under)
#$spreadplayers $(x) $(z) $(distance) $(range) under $(under) true @s
$spreadplayers ~ ~ $(distance) $(range) under $(under) true @s
data remove storage compliance:temp root.spreadplayers
scoreboard players reset @s compliance.temp