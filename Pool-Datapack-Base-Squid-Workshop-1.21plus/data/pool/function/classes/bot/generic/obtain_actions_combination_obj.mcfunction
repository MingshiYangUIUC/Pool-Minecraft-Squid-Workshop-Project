# @s is the pocket indicator
# execute location is object ball location

# begin summon aim objects
#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_new"],Duration:1200,Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}
execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/116/summon_aim_obj
execute unless data storage minecraft:swpool {version:[116]} run function pool:classes/bot/117/summon_aim_obj

# assign pktid
scoreboard players operation @e[tag=swPool_aim_obj_new,distance=..0.001,limit=1] swPool_pktid = @s swPool_pktid

# assign legal object ball, link aim object with the legal ball
scoreboard players operation @e[tag=swPool_tmp_legal,distance=..0.001,limit=1] swPool_objid = objid swPool_objid
scoreboard players operation @e[tag=swPool_aim_obj_new,distance=..0.001,limit=1] swPool_objid = objid swPool_objid
scoreboard players add objid swPool_objid 1

#tellraw @a[tag=swPool_debug] [{"text":"pktids, "},{"score":{"objective":"swPool_pktid","name":"@s"}}]
#tellraw @a[tag=swPool_debug] [{"text":"pktido, "},{"score":{"objective":"swPool_pktid","name":"@e[tag=swPool_aim_obj_new,limit=1]"}}]

# data modify entity @e[tag=swPool_aim_obj_new,distance=..0.001,limit=1] Pos[1] set from entity @s Pos[1]

# if object ball very close to pocket indicator, use pocket center?
scoreboard players set #usefakecenter swMath_V 0
#execute at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.125] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1901..2000 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.200] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1801..1900 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.190] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1701..1800 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.180] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1601..1700 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.170] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1501..1600 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.160] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1401..1500 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.150] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1301..1400 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.140] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1250..1300 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.130] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1201..1250 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.125] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1151..1200 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.120] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1101..1150 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.115] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1051..1100 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.110] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1001..1050 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.105] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 951..1000 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.100] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 901..950 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.095] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 851..900 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.090] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 801..850 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.085] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 751..800 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.080] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 701..750 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.075] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 651..700 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.070] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 601..650 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.065] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 551..600 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.060] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 501..550 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.055] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 451..500 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.050] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 401..450 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.045] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 351..400 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.040] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 301..350 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.035] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 251..300 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.030] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 201..250 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.025] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 151..200 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.020] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 101..150 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.015] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 51..100 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.010] run scoreboard players set #usefakecenter swMath_V 1
execute if score C_r swPool_C matches 1..50 at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.005] run scoreboard players set #usefakecenter swMath_V 1

execute unless score #usefakecenter swMath_V matches 1 run tp @e[tag=swPool_aim_obj_new,distance=..0.001] ~ ~ ~ facing entity @s
execute if score #usefakecenter swMath_V matches 1 run tp @e[tag=swPool_aim_obj_new,distance=..0.001] ~ ~ ~ facing entity @e[tag=swPool_cntr,tag=swPool_fake,limit=1,sort=nearest]

# log rotation
execute as @e[tag=swPool_aim_obj_new,distance=..0.001] store result score @s swPool_rot run data get entity @s Rotation[0] 10000

#execute as @e[tag=swPool_aim_obj_new,distance=..0.001] at @s run tp @s ^ ^ ^-0.25
execute as @e[tag=swPool_aim_obj_new,distance=..0.001] at @s run function pool:classes/bot/move_backward_2r

# log cue rotation if facing the aim point
execute at @e[tag=swPool_cue,tag=swPool_pool] run tp 000c2be1-0006-a619-0000-000000000004 ~ ~ ~ facing entity @e[tag=swPool_aim_obj_new,limit=1]

execute store result score cue swPool_rot run data get entity 000c2be1-0006-a619-0000-000000000004 Rotation[0] 10000

#tellraw @a[tag=swPool_debug] [{"text":"r1, "},{"score":{"objective":"swPool_rot","name":"cue"}}]
#tellraw @a[tag=swPool_debug] [{"text":"r2, "},{"score":{"objective":"swPool_rot","name":"@e[tag=swPool_aim_obj_new,limit=1]"}}]

scoreboard players operation cut_angle swPool_rot = cue swPool_rot
scoreboard players operation cut_angle swPool_rot -= @e[tag=swPool_aim_obj_new,limit=1] swPool_rot

scoreboard players operation cut_angle swPool_rot %= C_3600000 swPool_C

# if > 180 (1800000), minus 3600000 and * -1
execute if score cut_angle swPool_rot matches 1800001.. run scoreboard players operation cut_angle swPool_rot -= C_3600000 swPool_C
execute if score cut_angle swPool_rot matches ..-1 run scoreboard players operation cut_angle swPool_rot *= C_-1 swPool_C

#tellraw @a[tag=swPool_debug] [{"text":"dr, "},{"score":{"objective":"swPool_rot","name":"cut_angle"}}]

# RULE OUT if cut angle > 90
execute if score cut_angle swPool_rot matches 900000.. run kill @e[tag=swPool_aim_obj_new,limit=1]

# RULE OUT if outside of table, not for those near-pocket object balls
execute unless score #usefakecenter swMath_V matches 1 as @e[tag=swPool_aim_obj_new,limit=1] at @s run function pool:classes/bot/generic/obtain_actions_ruleout_outoftable

# RULE OUT if cue ball path is blocked
execute as @e[tag=swPool_aim_obj_new,limit=1] run function pool:classes/bot/generic/obtain_actions_ruleout_cuepath

# MARK but not ruleout? if path to pocket is blocked
execute as @e[tag=swPool_aim_obj_new,limit=1] run function pool:classes/bot/generic/obtain_actions_mark_pktpath

# wrap to another function to calculate score, execute if entity @e[tag=swPool_aim_obj_new,limit=1]
execute if entity @e[tag=swPool_aim_obj_new,limit=1] run function pool:classes/bot/generic/obtain_actions_combination_obj_score

