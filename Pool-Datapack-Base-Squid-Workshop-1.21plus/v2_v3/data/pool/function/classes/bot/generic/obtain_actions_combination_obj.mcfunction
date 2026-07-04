# @s is the pocket indicator
# execute location is object ball location

# begin summon aim objects
#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_new"],Duration:1200}
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
execute at @s if entity @e[tag=swPool_aim_obj_new,distance=..0.125] run scoreboard players set #usefakecenter swMath_V 1

execute unless score #usefakecenter swMath_V matches 1 run tp @e[tag=swPool_aim_obj_new,distance=..0.001] ~ ~ ~ facing entity @s
execute if score #usefakecenter swMath_V matches 1 run tp @e[tag=swPool_aim_obj_new,distance=..0.001] ~ ~ ~ facing entity @e[tag=swPool_cntr,tag=swPool_fake,limit=1,sort=nearest]

# log rotation
execute as @e[tag=swPool_aim_obj_new,distance=..0.001] store result score @s swPool_rot run data get entity @s Rotation[0] 10000

execute as @e[tag=swPool_aim_obj_new,distance=..0.001] at @s run tp @s ^ ^ ^-0.25

# log cue rotation if facing the aim point
execute at @e[tag=swPool_cue,tag=swPool_pool] run tp @e[tag=swPool_rhp1,limit=1] ~ ~ ~ facing entity @e[tag=swPool_aim_obj_new,limit=1]

execute store result score cue swPool_rot run data get entity @e[tag=swPool_rhp1,limit=1] Rotation[0] 10000

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

