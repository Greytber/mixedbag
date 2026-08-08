advancement revoke @s only compliance:technical/using_item/loot_bag
advancement revoke @s only compliance:technical/tick/cooldown/loot_bag
execute unless score @s compliance.loot_bag.cooldown matches 1.. run function compliance:item/loot_bag/start
scoreboard players set @s compliance.loot_bag.cooldown 2
