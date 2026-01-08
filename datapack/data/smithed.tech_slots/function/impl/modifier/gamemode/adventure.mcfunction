# toggle gamemode
gamemode spectator
gamemode adventure

# restore command feedback
execute if score $sendCommandFeedback smithed.data matches 1 run gamerule sendCommandFeedback true
