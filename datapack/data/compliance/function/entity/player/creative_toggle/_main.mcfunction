execute unless entity @s[gamemode=creative] run return fail
tag @s add compliance.creative_toggle
gamemode survival
#function compliance:dialog/warning {id:"creative_toggle"}