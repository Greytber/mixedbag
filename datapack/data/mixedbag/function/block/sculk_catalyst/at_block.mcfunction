execute positioned ~ ~ ~ run execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:resin_clump[down=true] run function mixedbag:block/sculk_catalyst/at_resin
execute positioned ~ ~ ~ run execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:resin_clump[up=true] run function mixedbag:block/sculk_catalyst/at_resin
execute positioned ~ ~ ~ run execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:resin_clump[west=true] run function mixedbag:block/sculk_catalyst/at_resin
execute positioned ~ ~ ~ run execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:resin_clump[east=true] run function mixedbag:block/sculk_catalyst/at_resin
execute positioned ~ ~ ~ run execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:resin_clump[south=true] run function mixedbag:block/sculk_catalyst/at_resin
execute positioned ~ ~ ~ run execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:resin_clump[north=true] run function mixedbag:block/sculk_catalyst/at_resin
execute positioned ~ ~ ~ run execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:resin_clump[south=true] run function mixedbag:block/sculk_catalyst/at_resin