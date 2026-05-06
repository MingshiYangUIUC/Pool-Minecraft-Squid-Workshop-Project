execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_1205

execute unless data storage minecraft:swpool unloaded as @a[tag=!swPool_CN,tag=!swPool_EN,tag=!swPool_welcomed] run function pool:classes/main/welcome_newplayer

execute as @a[scores={swPool_chst=1..}] at @s run function pool:classes/table/helpers/chest_detect
