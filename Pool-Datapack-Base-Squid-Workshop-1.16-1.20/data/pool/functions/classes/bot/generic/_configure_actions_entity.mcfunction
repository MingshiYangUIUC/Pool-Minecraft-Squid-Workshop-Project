###
# executor is @e[tag=swPool_aim_obj_selected,limit=1]
###

# in case delayed cleanup removes them...
scoreboard players set #muteall swPool_C 1
scoreboard players set #botthinking swPool_C 1

# executor is the aim point

# create / log rotation to be set for cue ball, force of cue ball, and strike point of cue ball.
# execute the shot
# evaluate
# undo

# already summoned entity to execute shot
execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run tp @e[tag=swPool_shooter,limit=1] ~ ~ ~ facing entity @s

scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_cbld 0

execute store result score @s swPool_player run data get entity @s UUID[1]

execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/cue/shoot

# simulate then reset these score, and evaluate go to other functions
scoreboard players operation #fastfwd_tmp swMath_V = #fastfwd swMath_V
scoreboard players operation #fastfwd_maxiter_tmp swMath_V = #fastfwd_maxiter swMath_V

function pool:classes/bot/generic/_configure_actions_entity_iterate_fast
#function pool:classes/bot/generic/_configure_actions_entity_iterate_slow