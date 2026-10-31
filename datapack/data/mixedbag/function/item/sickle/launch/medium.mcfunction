# ignite the player on fire
item replace entity @s saddle with minecraft:stick[minecraft:equippable={slot:"saddle",equip_sound:"intentionally_empty"},minecraft:enchantments={"mixedbag:technical/launch":2}]
function smithed.tech_slots:impl/modifier/trigger
#gamemode spectator @s
#gamemode survival @s

# clean up
item replace entity @s saddle with air