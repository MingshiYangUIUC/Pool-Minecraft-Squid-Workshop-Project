# try several directions by summon fake aim point radially outward. like 60deg spacing for 6 actions after random perturb.
# use low tryout, eval more actions

say fallback

kill @e[tag=swPool_aim_obj]

# summon one at random object ball
execute at @e[tag=swPool_tmp_legal,limit=1,sort=random] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}


# summon at 6 directions
# tp helper to cue ball
execute as @e[tag=swPool_cue,tag=swPool_pool] at @s run tp @e[tag=swPool_rhp1,limit=1] ~ ~ ~ ~ ~
# get random number 0 to 60
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= C_60 swPool_C
scoreboard players operation #vOut swMath_V *= C_10000 swPool_C
# get rhp1's Rotation[0], scaled by 10000
execute store result score #rot swMath_V run data get entity @e[tag=swPool_rhp1,limit=1] Rotation[0] 10000
# add random yaw offset
scoreboard players operation #rot swMath_V += #vOut swMath_V
# store back to Rotation[0]
execute store result entity @e[tag=swPool_rhp1,limit=1] Rotation[0] float 0.0001 run scoreboard players get #rot swMath_V

execute as @e[tag=swPool_rhp1,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}
execute as @e[tag=swPool_rhp1,limit=1] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=swPool_rhp1,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}
execute as @e[tag=swPool_rhp1,limit=1] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=swPool_rhp1,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}
execute as @e[tag=swPool_rhp1,limit=1] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=swPool_rhp1,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}
execute as @e[tag=swPool_rhp1,limit=1] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=swPool_rhp1,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}
execute as @e[tag=swPool_rhp1,limit=1] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=swPool_rhp1,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_blocked"],Duration:1200}


scoreboard players set @e[tag=swPool_aim_obj_blocked] swPool_calcScore -1
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -2
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -3
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -4
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -5
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -6
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -7

# try out actions
execute as @e[tag=swPool_aim_obj_blocked] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force
#execute as @e[tag=swPool_aim_obj_blocked] run tellraw @a [{"text":"cs "},{"score":{"objective":"swPool_calcScore","name":"@s"}}]
# select and try top 7 actions
scoreboard players set #topk swMath_V 7
scoreboard players set #rank_i swMath_V 0

tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_used
tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_selected

function pool:classes/bot/generic/_obtain_actions_entity_d0_itertry_blocked


#function pool:classes/bot/generic/_demo_action_helper
