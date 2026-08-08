#random value -10..10
#$random value $(min)..$(max)
$say $(min)
$say $(max)
$execute store result storage compliance:temp variance.roll float 0.5 run random value $(min)..$(max)
#execute store result storage compliance:temp variance.min int 1 run scoreboard players get #compliance.variance.min compliance.dummy
#execute store result storage compliance:temp variance.max int 1 run scoreboard players get #compliance.variance.max compliance.dummy
function compliance:damage_variance/apply_attribute with storage compliance:temp variance