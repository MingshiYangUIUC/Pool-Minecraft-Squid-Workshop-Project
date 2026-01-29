execute as @e[tag=swPool_pool,tag=!swPool_placed] at @s run function pool:classes/pose_quat/randomize_quat

execute if data storage minecraft:swpool {version:[116]} run function pool:classes/snooker/place_116
execute if data storage minecraft:swpool {version:[117]} run function pool:classes/snooker/place_117
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/snooker/place_1205execute as @e[tag=swPool_pool,type=item_display] store result entity @s teleport_duration int 1 run scoreboard players get C_tp_dur swPool_C
