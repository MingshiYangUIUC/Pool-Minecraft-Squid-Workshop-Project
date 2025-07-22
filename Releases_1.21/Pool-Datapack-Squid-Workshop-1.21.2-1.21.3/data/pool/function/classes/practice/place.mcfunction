execute as @e[tag=swPool_pool,tag=!swPool_placed] at @s run function pool:classes/pose/randomize_pose

execute if data storage minecraft:swpool {version:[116]} run function pool:classes/practice/place_116
execute if data storage minecraft:swpool {version:[117]} run function pool:classes/practice/place_117
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/practice/place_1205
