execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_1205

execute as @a[tag=!swPool_CN,tag=!swPool_EN,tag=!swPool_welcomed] run function pool:classes/main/welcome_newplayer

scoreboard players enable @a swPool_trigger
execute as @a[scores={swPool_trigger=1..}] at @s run function pool:classes/main/trigger
