execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/practice/start
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/practice/start_1205

execute as @a[tag=swPool_poolplay,gamemode=!creative] run function app:get/pool/arrow_helper
