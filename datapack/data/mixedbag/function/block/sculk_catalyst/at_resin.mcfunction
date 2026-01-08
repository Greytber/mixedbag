execute store result score #mixedbag.resin mixedbag.dummy run random value 1..6
execute if score #mixedbag.resin mixedbag.dummy matches 1..4 run function mixedbag:block/sculk_catalyst/transform_fail
execute if score #mixedbag.resin mixedbag.dummy matches 5..6 run function mixedbag:block/sculk_catalyst/transform_success