execute if items entity @s weapon.mainhand *[minecraft:consumable, !minecraft:use_remainder, minecraft:custom_data~{compliance: {persistent_consumable: 1b}}] run function compliance:item/persistent_consumable/toggle_component {hand: "mainhand"}
execute if items entity @s weapon.offhand *[minecraft:consumable, !minecraft:use_remainder, minecraft:custom_data~{compliance: {persistent_consumable: 1b}}] run function compliance:item/persistent_consumable/toggle_component {hand: "offhand"}
advancement revoke @s only compliance:technical/consume_item/persistent_consumable
