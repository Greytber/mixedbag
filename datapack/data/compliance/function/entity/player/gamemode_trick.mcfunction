
## Instantly trigger the `location_changed` launch by updating the player's world state

## Record current gamemode to restore after launch
execute if entity @s[gamemode=survival] run scoreboard players set $compliance.gamemode compliance.dummy 2
execute if entity @s[gamemode=adventure] run scoreboard players set $compliance.gamemode compliance.dummy 3

## If not in creative mode, swap into spectator mode
execute if score $compliance.gamemode compliance.dummy matches 2..3 run gamemode spectator

## If not in creative mode, restore gamemode, successful `gamemode` execution result is always `1`
execute if score $compliance.gamemode compliance.dummy matches 2 \
    store success score $compliance.gamemode compliance.dummy run \
    return run gamemode survival
execute if score $compliance.gamemode compliance.dummy matches 3 \
    store success score $compliance.gamemode compliance.dummy run \
    return run gamemode adventure

## Player is in creative mode

## If the player is falling, swap into adventure mode, else, swap into spectator mode
scoreboard players set $compliance.falling compliance.dummy 0
execute if predicate player_motion:internal/falling_creative_player \
    store success score $compliance.falling compliance.dummy run gamemode adventure
execute if score $compliance.falling compliance.dummy matches 0 run gamemode spectator

## Restore gamemode, successful `gamemode` execution result is always `1`
return run gamemode creative