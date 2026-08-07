
# get best action out of 10

execute if score #bestshot swMath_V matches 1 run tag @e[tag=swPool_aim_obj_selected] add swPool_act1
execute if score #bestshot swMath_V matches 2 run tag @e[tag=swPool_aim_obj_selected] add swPool_act2
execute if score #bestshot swMath_V matches 3 run tag @e[tag=swPool_aim_obj_selected] add swPool_act3
execute if score #bestshot swMath_V matches 4 run tag @e[tag=swPool_aim_obj_selected] add swPool_act4
execute if score #bestshot swMath_V matches 5 run tag @e[tag=swPool_aim_obj_selected] add swPool_act5
execute if score #bestshot swMath_V matches 6 run tag @e[tag=swPool_aim_obj_selected] add swPool_act6
execute if score #bestshot swMath_V matches 7 run tag @e[tag=swPool_aim_obj_selected] add swPool_act7
execute if score #bestshot swMath_V matches 8 run tag @e[tag=swPool_aim_obj_selected] add swPool_act8
execute if score #bestshot swMath_V matches 9 run tag @e[tag=swPool_aim_obj_selected] add swPool_act9
execute if score #bestshot swMath_V matches 10 run tag @e[tag=swPool_aim_obj_selected] add swPool_act10

scoreboard players operation @s swPool_shotScore = #bestshotscore swMath_V

tellraw @a[tag=swPool_debug] [{"text":"Loop end force-spin, Best Act, "},{"score":{"objective":"swMath_V","name":"#bestshot"}}]
tellraw @a[tag=swPool_debug] [{"text":"Best Score, "},{"score":{"objective":"swMath_V","name":"#bestshotscore"}}]


# #####

#tellraw @a[tag=swPool_debug] [{"text":"Rank "},{"score":{"objective":"swMath_V","name":"#rank_i"}},{"text":" result score, "},{"score":{"objective":"swPool_shotScore","name":"@e[tag=swPool_aim_obj_selected,limit=1]"}}]
execute as @e[tag=swPool_aim_obj_selected,limit=1] if score @s swPool_shotScore > #maxshotscore_d0 swMath_V run scoreboard players operation #maxshotscore_d0 swMath_V = @s swPool_shotScore

# rank_i += 1
execute if score #rank_i swMath_V < #topk swMath_V run scoreboard players add #rank_i swMath_V 1

# cleanup current selected tag
tag @e[tag=swPool_aim_obj_selected] remove swPool_aim_obj_selected

# scheduler

scoreboard players set #botloopschedule swMath_V 0

# if tryoutloopmax = 1, use blocked-loop version while not finished
execute if score #tryoutloopmax swMath_V matches 1 run scoreboard players set #botloopschedule swMath_V 1

# if finished, default to shot
execute if score #rank_i swMath_V = #topk swMath_V run scoreboard players set #botloopschedule swMath_V 2

# if finished, not already tried blocked, and no good shot, try blocked
execute if score #rank_i swMath_V = #topk swMath_V unless score #tryoutloopmax swMath_V matches 1 if score #maxshotscore_d0 swMath_V matches ..-10000 run scoreboard players set #botloopschedule swMath_V 3

# run exactly one function
execute if score #botloopschedule swMath_V matches 0 run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_itertry_loop 1t
execute if score #botloopschedule swMath_V matches 1 run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_itertry_blocked_loop 1t
execute if score #botloopschedule swMath_V matches 2 run schedule function pool:classes/bot/generic/_demo_action_helper 1t
execute if score #botloopschedule swMath_V matches 3 run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_main_blocked 1t

