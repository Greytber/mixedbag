execute if entity @s[advancements={mixedbag:technical/inventory_changed/upgrade_to_netherite={sickle=true}}] run item modify entity @s compliance:player_inventory_whole mixedbag:upgrade_to_netherite/sickle
execute if entity @s[advancements={mixedbag:technical/inventory_changed/upgrade_to_netherite={prospecting_pickaxe=true}}] run item modify entity @s compliance:player_inventory_whole mixedbag:upgrade_to_netherite/prospecting_pickaxe
#execute if entity @s[advancements={mixedbag:technical/inventory_changed/upgrade_to_netherite={sickle=true}}] run function mixedbag:item/upgrade_to_netherite/sickle
#execute if entity @s[advancements={mixedbag:technical/inventory_changed/upgrade_to_netherite={prospecting_pickaxe=true}}] run function mixedbag:item/upgrade_to_netherite/prospecting_pickaxe

advancement revoke @s only mixedbag:technical/inventory_changed/upgrade_to_netherite