###
# executor is @e[tag=swPool_aim_obj_d1_selected,limit=1]
###

scoreboard players set #muteall swPool_C 1
scoreboard players set #botthinking swPool_C 1

execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run tp @e[tag=swPool_shooter,limit=1] ~ ~ ~ facing entity @s
scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_cbld 0
execute store result score @s swPool_player run data get entity @s UUID[1]

execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/bot/generic/_shoot_d1

# slow iteration
scoreboard players set #fastfwd_tmp_d1 swMath_V 0
scoreboard players set #fastfwd_maxiter_tmp_d1 swMath_V 0
scoreboard players operation #fastfwd_tmp_d1 swMath_V = #fastfwd swMath_V
scoreboard players operation #fastfwd_maxiter_tmp_d1 swMath_V = #fastfwd_maxiter swMath_V
scoreboard players set #fastfwd_bot swMath_V 1
function pool:classes/bot/generic/_configure_actions_entity_d1_iterate_slow
