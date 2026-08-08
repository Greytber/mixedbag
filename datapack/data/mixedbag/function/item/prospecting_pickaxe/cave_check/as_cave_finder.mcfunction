#data merge entity @s {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["mixedbag.cave_finder"],attributes:[{id:"minecraft:scale",base:0.1}]}
data merge entity @s {width:6f,height:6f,response:0b,Tags:["mixedbag.cave_finder"]}
execute at @s if block ~ ~ ~ air run playsound minecraft:block.amethyst_block.break block @p ~ ~ ~ 100
#tp @s ~ -128 ~
#kill @s