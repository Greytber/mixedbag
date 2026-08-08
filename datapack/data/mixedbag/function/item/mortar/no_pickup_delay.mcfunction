#execute as @n[type=item,distance=..0.5] run data modify entity @s PickupDelay set value 0b
execute as @n[type=item,distance=..0.5] run data merge entity @s {PickupDelay:0}