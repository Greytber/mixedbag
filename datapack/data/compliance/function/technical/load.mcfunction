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

scoreboard objectives add compliance.dual_swing.timer dummy
scoreboard objectives add compliance.dual_swing.swing dummy

scoreboard objectives add compliance.loot_bag.cooldown dummy

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