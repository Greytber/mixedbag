advancement revoke @s only mixedbag:technical/consume_item/fortune_cookie
#execute unless score @s mixedbag.fortune_cookie matches 8.. run scoreboard players add @s mixedbag.fortune_cookie 1
#execute if score @s mixedbag.fortune_cookie matches 8.. run loot give @s loot mixedbag:items/fortune_random
#execute if score @s mixedbag.fortune_cookie matches 8.. run scoreboard players reset @s mixedbag.fortune_cookie
loot give @s loot mixedbag:items/fortune_random
scoreboard players reset @s mixedbag.fortune_cookie