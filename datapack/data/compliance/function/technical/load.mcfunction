scoreboard objectives add compliance.dummy dummy
scoreboard objectives add compliance.dummy2 dummy
scoreboard objectives add compliance.temp dummy
scoreboard objectives add compliance.entity dummy
scoreboard objectives add compliance.air air
scoreboard objectives add compliance.health health
scoreboard objectives add compliance.health_absorption dummy
scoreboard objectives add compliance.health_no_absorption dummy
scoreboard objectives add compliance.player_id dummy
scoreboard objectives add compliance.relog minecraft.custom:minecraft.leave_game

scoreboard objectives add compliance.yaw dummy
scoreboard objectives add compliance.pitch dummy
scoreboard objectives add compliance.yaw2 dummy
scoreboard objectives add compliance.pitch2 dummy

#scoreboard objectives add compliance.changed dummy

scoreboard objectives add compliance.mount.flag dummy

scoreboard objectives add compliance.bow.flag dummy
scoreboard objectives add compliance.bow.timer dummy
scoreboard objectives add compliance.bow.holding dummy
scoreboard objectives add compliance.bow minecraft.used:minecraft.bow
scoreboard objectives add compliance.spear.flag dummy

scoreboard objectives add compliance.crossbow.holding dummy

scoreboard objectives add compliance.variance.flag dummy
scoreboard objectives add compliance.critical_hit.flag dummy

scoreboard objectives add compliance.technical_weapon.holding dummy

scoreboard objectives add compliance.tick.falling.flag dummy
scoreboard objectives add compliance.falling.flag dummy

scoreboard objectives add compliance.dual_swing.hand dummy
scoreboard objectives add compliance.dual_swing.timer dummy
scoreboard objectives add compliance.dual_swing.swing dummy

scoreboard objectives add compliance.loot_bag.cooldown dummy

scoreboard objectives add compliance.tool_usage dummy
## Swords
scoreboard objectives add compliance.used_item.wooden_sword minecraft.used:minecraft.wooden_sword
scoreboard objectives add compliance.used_item.stone_sword minecraft.used:minecraft.stone_sword
scoreboard objectives add compliance.used_item.copper_sword minecraft.used:minecraft.copper_sword
scoreboard objectives add compliance.used_item.iron_sword minecraft.used:minecraft.iron_sword
scoreboard objectives add compliance.used_item.golden_sword minecraft.used:minecraft.golden_sword
scoreboard objectives add compliance.used_item.diamond_sword minecraft.used:minecraft.diamond_sword
scoreboard objectives add compliance.used_item.netherite_sword minecraft.used:minecraft.netherite_sword
## Spears
scoreboard objectives add compliance.used_item.wooden_spear minecraft.used:minecraft.wooden_spear
scoreboard objectives add compliance.used_item.stone_spear minecraft.used:minecraft.stone_spear
scoreboard objectives add compliance.used_item.copper_spear minecraft.used:minecraft.copper_spear
scoreboard objectives add compliance.used_item.iron_spear minecraft.used:minecraft.iron_spear
scoreboard objectives add compliance.used_item.golden_spear minecraft.used:minecraft.golden_spear
scoreboard objectives add compliance.used_item.diamond_spear minecraft.used:minecraft.diamond_spear
scoreboard objectives add compliance.used_item.netherite_spear minecraft.used:minecraft.netherite_spear
## Axes
scoreboard objectives add compliance.used_item.wooden_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add compliance.used_item.stone_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add compliance.used_item.copper_axe minecraft.used:minecraft.copper_axe
scoreboard objectives add compliance.used_item.iron_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add compliance.used_item.golden_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add compliance.used_item.diamond_axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add compliance.used_item.netherite_axe minecraft.used:minecraft.netherite_axe
## Pickaxes
scoreboard objectives add compliance.used_item.wooden_pickaxe minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add compliance.used_item.stone_pickaxe minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add compliance.used_item.copper_pickaxe minecraft.used:minecraft.copper_pickaxe
scoreboard objectives add compliance.used_item.iron_pickaxe minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add compliance.used_item.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add compliance.used_item.diamond_pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add compliance.used_item.netherite_pickaxe minecraft.used:minecraft.netherite_pickaxe
## Shovels
scoreboard objectives add compliance.used_item.wooden_shovel minecraft.used:minecraft.wooden_shovel
scoreboard objectives add compliance.used_item.stone_shovel minecraft.used:minecraft.stone_shovel
scoreboard objectives add compliance.used_item.copper_shovel minecraft.used:minecraft.copper_shovel
scoreboard objectives add compliance.used_item.iron_shovel minecraft.used:minecraft.iron_shovel
scoreboard objectives add compliance.used_item.golden_shovel minecraft.used:minecraft.golden_shovel
scoreboard objectives add compliance.used_item.diamond_shovel minecraft.used:minecraft.diamond_shovel
scoreboard objectives add compliance.used_item.netherite_shovel minecraft.used:minecraft.netherite_shovel
## Hoes
scoreboard objectives add compliance.used_item.wooden_hoe minecraft.used:minecraft.wooden_hoe
scoreboard objectives add compliance.used_item.stone_hoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add compliance.used_item.copper_hoe minecraft.used:minecraft.copper_hoe
scoreboard objectives add compliance.used_item.iron_hoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add compliance.used_item.golden_hoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add compliance.used_item.diamond_hoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add compliance.used_item.netherite_hoe minecraft.used:minecraft.netherite_hoe
##Misc
scoreboard objectives add compliance.used_item.mace minecraft.used:minecraft.mace
scoreboard objectives add compliance.used_item.trident minecraft.used:minecraft.trident
scoreboard objectives add compliance.used_item.shears minecraft.used:minecraft.shears

scoreboard players set #compliance.two compliance.dummy 2
scoreboard players set #compliance.four compliance.dummy 4
scoreboard players set #compliance.five compliance.dummy 5
scoreboard players set #compliance.ten compliance.dummy 10
scoreboard players set #compliance.eleven compliance.dummy 11
scoreboard players set #compliance.twenty compliance.dummy 20

function compliance:technical/tick
#function compliance:technical/two_tick
function compliance:technical/second_clock
#function compliance:technical/ten_second_clock