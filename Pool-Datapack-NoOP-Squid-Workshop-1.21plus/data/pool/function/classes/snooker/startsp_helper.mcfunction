execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"A game is already active, please terminate it before trying again.","color":"red"}]
execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"请先结束正在运行的游戏。","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tag @s add swPool_wait_snooker
execute unless entity @a[tag=swPool_poolplay] run tag @s remove swPool_wait_sp
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/snooker/startsp
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/snooker/startsp_1205
