# toggle gamemode
gamemode spectator
gamemode creative
gamemode spectator

# restore command feedback
execute if score $sendCommandFeedback smithed.data matches 1 run gamerule sendCommandFeedback true
