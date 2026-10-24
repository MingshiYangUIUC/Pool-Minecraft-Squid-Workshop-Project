execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/generic/_undo_d1_116
execute if data storage minecraft:swpool {version:[117]} run function pool:classes/bot/generic/_undo_d1_117
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/bot/generic/_undo_d1_1205

execute as @e[tag=swPool_pool,type=armor_stand] at @s run function pool:classes/master/read_tmppos
execute as @e[tag=swPool_fake,type=armor_stand] at @s run function pool:classes/master/read_tmppos

scoreboard players set #outoftable_scheduled swPool_var00 0

scoreboard players reset #abnorm swMath_V

scoreboard players set #n_collision_pktedge swMath_V 0
scoreboard players set #n_collision_normal swMath_V 0
