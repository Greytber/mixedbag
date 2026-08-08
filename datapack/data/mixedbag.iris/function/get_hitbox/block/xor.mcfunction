#> mixedbag.iris:get_hitbox/block/xor
#
# Compute bitwise XOR (^) on two scores
#
# @within mixedbag.iris:get_hitbox/block/offset
# @reads
#   score $a mixedbag.iris
#       The first operand
#   score $b mixedbag.iris
#       The second operand
# @output
#   Return: The result of the XOR operation on both operands
#   Success: 1

scoreboard players operation $a^b mixedbag.iris = $a mixedbag.iris
scoreboard players operation $a^b mixedbag.iris += $b mixedbag.iris

# Compute a&b
scoreboard players set $a&b mixedbag.iris 0
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players set $a&b mixedbag.iris -2147483648
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 1073741824
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 536870912
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 268435456
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 134217728
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 67108864
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 33554432
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 16777216
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 8388608
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 4194304
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 2097152
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 1048576
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 524288
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 262144
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 131072
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 65536
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 32768
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 16384
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 8192
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 4096
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 2048
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 1024
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 512
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 256
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 128
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 64
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 32
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 16
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 8
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 4
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 2
scoreboard players operation $a mixedbag.iris += $a mixedbag.iris
scoreboard players operation $b mixedbag.iris += $b mixedbag.iris
execute if score $a mixedbag.iris matches ..-1 if score $b mixedbag.iris matches ..-1 run scoreboard players add $a&b mixedbag.iris 1

# Compute a^b = a+b-2(a&b)
scoreboard players operation $a^b mixedbag.iris -= $a&b mixedbag.iris
scoreboard players operation $a^b mixedbag.iris -= $a&b mixedbag.iris

# Return the result
return run scoreboard players get $a^b mixedbag.iris
