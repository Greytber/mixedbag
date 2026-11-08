data modify storage mixedbag:temp admin_panel set value {happy_ghast_swiftness: true}
execute if data storage mixedbag:admin settings{happy_ghast_swiftness: false} run data modify storage mixedbag:temp admin_panel.happy_ghast_swiftness set value false
execute if data storage mixedbag:admin settings
data modify storage mixedbag:temp admin_panel.macros set value " happy_ghast_swiftness:$(happy_ghast_swiftness) "
function mixedbag:admin_panel/dialog with storage mixedbag:temp admin_panel
