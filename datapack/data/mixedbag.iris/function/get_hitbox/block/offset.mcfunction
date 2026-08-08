#> mixedbag.iris:get_hitbox/block/offset
#
# Computes seeded block offset for e.g. flowers, assuming the shape comprises a single box
#
# @within mixedbag.iris:get_hitbox/block
# @writes
#	storage mixedbag.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Compute seed(x, y, z)
scoreboard players operation $a mixedbag.iris = $[x] mixedbag.iris
scoreboard players operation $a mixedbag.iris *= $3129871 mixedbag.iris
scoreboard players operation $b mixedbag.iris = $[z] mixedbag.iris
scoreboard players operation $b mixedbag.iris *= $116129781 mixedbag.iris
execute store result score $a^b mixedbag.iris run function mixedbag.iris:get_hitbox/block/xor

scoreboard players operation $(a^b)² mixedbag.iris = $a^b mixedbag.iris
scoreboard players operation $(a^b)² mixedbag.iris *= $a^b mixedbag.iris
scoreboard players operation $11*(a^b) mixedbag.iris = $a^b mixedbag.iris
scoreboard players operation $11*(a^b) mixedbag.iris *= $11 mixedbag.iris

scoreboard players operation $seed mixedbag.iris = $(a^b)² mixedbag.iris
scoreboard players operation $seed mixedbag.iris *= $42317861 mixedbag.iris
scoreboard players operation $seed mixedbag.iris += $11*(a^b) mixedbag.iris
scoreboard players operation $seed mixedbag.iris /= $65536 mixedbag.iris

# Compute offsets
scoreboard players operation $x_offset mixedbag.iris = $seed mixedbag.iris
scoreboard players operation $x_offset mixedbag.iris %= $16 mixedbag.iris
scoreboard players operation $x_offset mixedbag.iris *= $33333 mixedbag.iris

scoreboard players operation $z_offset mixedbag.iris = $seed mixedbag.iris
scoreboard players operation $z_offset mixedbag.iris /= $256 mixedbag.iris
scoreboard players operation $z_offset mixedbag.iris %= $16 mixedbag.iris
scoreboard players operation $z_offset mixedbag.iris *= $33333 mixedbag.iris

# Adjust/clamp for pointed dripstone blocks
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $x_offset mixedbag.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $z_offset mixedbag.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset mixedbag.iris matches ..0 run scoreboard players set $x_offset mixedbag.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset mixedbag.iris matches 250000.. run scoreboard players set $x_offset mixedbag.iris 250000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset mixedbag.iris matches ..0 run scoreboard players set $z_offset mixedbag.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset mixedbag.iris matches 250000.. run scoreboard players set $z_offset mixedbag.iris 250000

# Apply offsets to the generated shape
execute store result score $min_x mixedbag.iris run data get storage mixedbag.iris:data Shape[0].min[0] 1000000
execute store result storage mixedbag.iris:data Shape[0].min[0] double 0.000001 run scoreboard players operation $min_x mixedbag.iris += $x_offset mixedbag.iris
execute store result score $min_z mixedbag.iris run data get storage mixedbag.iris:data Shape[0].min[2] 1000000
execute store result storage mixedbag.iris:data Shape[0].min[2] double 0.000001 run scoreboard players operation $min_z mixedbag.iris += $z_offset mixedbag.iris
execute store result score $max_x mixedbag.iris run data get storage mixedbag.iris:data Shape[0].max[0] 1000000
execute store result storage mixedbag.iris:data Shape[0].max[0] double 0.000001 run scoreboard players operation $max_x mixedbag.iris += $x_offset mixedbag.iris
execute store result score $max_z mixedbag.iris run data get storage mixedbag.iris:data Shape[0].max[2] 1000000
execute store result storage mixedbag.iris:data Shape[0].max[2] double 0.000001 run scoreboard players operation $max_z mixedbag.iris += $z_offset mixedbag.iris
