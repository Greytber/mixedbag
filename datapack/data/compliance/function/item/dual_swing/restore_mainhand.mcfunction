#say restore
$item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:swing_animation":{type:"$(type)",duration:$(duration)}}}
item modify entity @s weapon.mainhand compliance:dual_swing/restore