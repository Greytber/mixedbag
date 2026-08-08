#> mixedbag.iris:setup/storage
#
# Sets up storage for mixedbag.iris
#
# @within mixedbag.iris:setup/load

data merge storage mixedbag.iris:data {is_setup: 1b}

# Set default settings
data merge storage mixedbag.iris:settings {\
    TargetEntities: false,\
    MaxRecursionDepth: 16,\
    Blacklist: "#mixedbag.iris:shape_groups/air"\
}
