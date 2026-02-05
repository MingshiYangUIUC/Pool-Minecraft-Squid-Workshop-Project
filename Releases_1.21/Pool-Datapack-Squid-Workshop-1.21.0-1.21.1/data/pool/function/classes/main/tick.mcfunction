# record position once
execute as @e[tag=swPool_pool,type=armor_stand] at @s run function pool:classes/master/read_tmppos
execute as @e[tag=swPool_fake,type=armor_stand] at @s run function pool:classes/master/read_tmppos

execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/tick_1205
