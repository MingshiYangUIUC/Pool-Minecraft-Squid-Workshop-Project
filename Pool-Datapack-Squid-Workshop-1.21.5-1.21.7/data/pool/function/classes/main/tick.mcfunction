execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/tick_1205
scoreboard players enable @a swPool_trigger
execute as @a[scores={swPool_trigger=1..}] at @s run function pool:classes/main/trigger
