execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"A game is already active, please terminate it before trying again.","color":"red"}]
execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"请先结束正在运行的游戏。","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tag @s add swPool_wait_uk8ball
execute unless entity @a[tag=swPool_poolplay] run tag @s remove swPool_wait_sp
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/uk8ball/startsp
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/uk8ball/startsp_1205

execute if score swPool_gameon swMath_V matches 1 run tag 000c2be1-0001-414d-0000-000000000000 add swPool_8ball_aibreak
execute if score swPool_gameon swMath_V matches 1 run scoreboard players set swPool_8ball_aibreak swMath_V 1

execute as @a[tag=swPool_poolplay,gamemode=!creative] run function app:get/pool/arrow_helper
