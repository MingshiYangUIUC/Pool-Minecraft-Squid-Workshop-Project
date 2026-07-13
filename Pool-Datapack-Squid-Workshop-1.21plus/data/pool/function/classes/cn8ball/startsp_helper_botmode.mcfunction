scoreboard players reset #bot_turn swMath_V

# draw a player to start first
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #C_2 swMath_C
# this score will oscillate between 0 and 1
scoreboard players operation #bot_turn swMath_V = #vOut swMath_V

tellraw @a[tag=swPool_debug] [{"text":"bot, "},{"score":{"objective":"swMath_V","name":"#bot_turn"}}]

execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"A game is already active, please terminate it before trying again.","color":"red"}]
execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"请先结束正在运行的游戏。","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tag @s add swPool_wait_cn8ball
execute unless entity @a[tag=swPool_poolplay] run tag @s remove swPool_wait_sp
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/cn8ball/startsp
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/cn8ball/startsp_1205

tag @e[tag=swPool_pooltable] add swPool_8ball_aibreak

execute as @a[tag=swPool_poolplay,gamemode=!creative] run function app:get/pool/arrow_helper

execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ball_open] run schedule function pool:classes/cn8ball/startsp_helper_botmode_finalize 10t
