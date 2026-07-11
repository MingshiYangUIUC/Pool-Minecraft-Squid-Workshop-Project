execute at @s run tp @s @e[tag=swPool_cue,tag=swPool_pool,limit=1]
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=swPool_best_aim_obj,limit=1]
execute at @s run tp @s ^ ^ ^-1.6
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=swPool_cue,tag=swPool_pool,limit=1]
execute at @s run tp @s ~ ~-0.55 ~ ~ 10
data merge entity @s {Pose:{Head:[10.0f,0.0f,0.0f]}}

scoreboard players set @s swPool_lifetime 0
scoreboard players set #shootanim swMath_V 1

execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/animation/equip_116
execute if data storage minecraft:swpool {version:[117]} run function pool:classes/bot/animation/equip_117
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/bot/animation/equip_1205
execute if data storage minecraft:swpool {version:[1210]} unless data storage minecraft:swpool {version:[1240]} run function pool:classes/bot/animation/equip_1210
execute if data storage minecraft:swpool {version:[1210]} if data storage minecraft:swpool {version:[1240]} run function pool:classes/bot/animation/equip_1240

