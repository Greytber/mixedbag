#> mixedbag.iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load

# IDE storage definitions for Spyglass
#define storage mixedbag.iris:data
#define storage mixedbag.iris:args
#define storage mixedbag.iris:settings
#define storage mixedbag.iris:output

# Setup scoreboard and storage
function mixedbag.iris:setup/scoreboard
execute unless data storage mixedbag.iris:data is_setup run function mixedbag.iris:setup/storage
