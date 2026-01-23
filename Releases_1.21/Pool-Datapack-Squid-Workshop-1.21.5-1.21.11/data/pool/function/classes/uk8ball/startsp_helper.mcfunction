execute if entity @a[tag=swPool_poolplay] run tellraw @s [{"text":"A game is already on.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tag @s add swPool_wait_uk8ball
execute unless entity @a[tag=swPool_poolplay] run tag @s remove swPool_wait_sp
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/uk8ball/startsp
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/uk8ball/startsp_1205

tag @e[tag=swPool_pooltable] add swPool_8ball_aibreak