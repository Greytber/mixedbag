advancement revoke @s only compliance:technical/shot_crossbow/shoot
scoreboard players reset @s compliance.bow

#data remove storage compliance:storage root.temp

#Call function tag here for conditionals
function #compliance:entity/arrow/condition

#Call function tag here for as arrows
execute as @e[type=#minecraft:arrows,distance=..10,nbt={life:0s},tag=!compliance.arrow.modified] run function #compliance:entity/arrow/as_arrow

#Other calls
function #compliance:entity/arrow/other