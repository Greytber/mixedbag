#execute at @s positioned ~ ~4 ~ summon minecraft:marker run function mixedbag:technical/macro/get_pos
#execute anchored eyes positioned ^ ^-1 ^ run function mixedbag:item/mending_resin/trail_particle with storage mixedbag:temp trail_particle
execute anchored eyes run particle minecraft:trial_spawner_detection_ominous ^ ^-0.25 ^0.5 0.1 0 0.1 0.01 16 normal
particle minecraft:sculk_charge_pop ~ ~0.75 ~ 0 0.5 0 0.1 48

playsound mixedbag:item.mending_resin.apply player @a[distance=..16] ~ ~ ~ 1 0.8 0
advancement grant @s only mixedbag:minecraft/adventure/mending_resin repair
execute if items entity @s weapon.mainhand #minecraft:enchantable/durability if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{mixedbag:{id:"mending_resin"}}] run return run function mixedbag:item/mending_resin/repair_mainhand
function mixedbag:item/mending_resin/repair_offhand