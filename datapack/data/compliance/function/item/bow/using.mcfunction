advancement revoke @s only compliance:technical/using_item/bow
advancement revoke @s only compliance:technical/tick/flag/bow
scoreboard players set @s compliance.bow.flag 2
scoreboard players add @s compliance.bow.timer 1
function #compliance:item/bow/using
