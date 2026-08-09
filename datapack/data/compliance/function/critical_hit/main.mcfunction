advancement revoke @s only compliance:technical/player_hurt_entity/damage_variance
scoreboard players set #compliance.variance.range compliance.dummy 4
scoreboard players set #compliance.variance.favor compliance.dummy 8
scoreboard players set #compliance.variance.min compliance.dummy 0
scoreboard players set #compliance.variance.max compliance.dummy 0
scoreboard players operation #compliance.variance.min compliance.dummy -= #compliance.variance.range compliance.dummy
scoreboard players operation #compliance.variance.max compliance.dummy = #compliance.variance.range compliance.dummy
scoreboard players operation #compliance.variance.max compliance.dummy += #compliance.variance.favor compliance.dummy

execute store result storage compliance:temp variance.min int 1 run scoreboard players get #compliance.variance.min compliance.dummy
execute store result storage compliance:temp variance.max int 1 run scoreboard players get #compliance.variance.max compliance.dummy

function compliance:damage_variance/roll with storage compliance:temp variance