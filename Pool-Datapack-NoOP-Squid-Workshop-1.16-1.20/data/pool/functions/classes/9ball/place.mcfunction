execute as @e[tag=swPool_pool,tag=!swPool_placed] at @s run function pool:classes/pose/randomize_pose

execute if data storage minecraft:swpool {version:[116]} run function pool:classes/practice/place_116
execute if data storage minecraft:swpool {version:[117]} run function pool:classes/practice/place_117
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/practice/place_1205

# summon one marker, used to respot 9 ball
execute as @e[tag=swPool_pool,tag=swPool_01,limit=1] at @s unless entity @e[tag=swPool_spot,type=area_effect_cloud,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_spot"],Duration:99999999}

# record position once
execute as @e[tag=swPool_pool,type=armor_stand] at @s run function pool:classes/master/read_tmppos
execute as @e[tag=swPool_fake,type=armor_stand] at @s run function pool:classes/master/read_tmppos
