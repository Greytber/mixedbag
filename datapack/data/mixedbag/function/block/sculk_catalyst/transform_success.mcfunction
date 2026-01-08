setblock ~ ~ ~ air destroy
function mixedbag:block/sculk_catalyst/item_remove_one
particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0.125 10
loot spawn ~ ~ ~ loot mixedbag:items/mending_resin
advancement grant @p[distance=..8] only mixedbag:minecraft/adventure/mending_resin transform