execute store result score #mixedbag.version.major mixedbag.dummy run compute default integer mixedbag:major
execute store result score #mixedbag.version.port mixedbag.dummy run compute default integer mixedbag:port
execute store result score #mixedbag.version.minor mixedbag.dummy run compute default integer mixedbag:minor
tellraw @a[gamemode=creative] [{translate:"ui.mixedbag.title.symbol",font:"mixedbag:icon"},{text:" "},{translate:"ui.mixedbag.title",font:"mixedbag:tooltip"},{text:" "},{translate:"ui.compliance.load.version",with:[{score:{objective:"mixedbag.dummy",name:"#mixedbag.version.major"}},{score:{objective:"mixedbag.dummy",name:"#mixedbag.version.port"}},{score:{objective:"mixedbag.dummy",name:"#mixedbag.version.minor"}}],font:"compliance:5"}]
scoreboard players reset #mixedbag.version.major mixedbag.dummy
scoreboard players reset #mixedbag.version.port mixedbag.dummy
scoreboard players reset #mixedbag.version.minor mixedbag.dummy