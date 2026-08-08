scoreboard players reset #botloopschedule swMath_V

# only run body if rank_i < topk
tellraw @a[tag=swPool_debug] [{"text":"Looping blocked, "},{"score":{"objective":"swMath_V","name":"#rank_i"}},{"text":" of "},{"score":{"objective":"swMath_V","name":"#topk"}}]

# clear current selection
execute if score #rank_i swMath_V < #topk swMath_V run tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_selected

# reset max
execute if score #rank_i swMath_V < #topk swMath_V run scoreboard players set #maxcalcscore_d0sel swMath_V -50000

# find max among unused actions
execute if score #rank_i swMath_V < #topk swMath_V as @e[tag=swPool_aim_obj,tag=!swPool_aim_obj_used] run function pool:classes/bot/generic/rank_topk
#tellraw @a[tag=swPool_debug] [{"text":"sel "},{"score":{"objective":"swMath_V","name":"#maxcalcscore_d0sel"}}]
# select one action with current max
execute if score #rank_i swMath_V < #topk swMath_V as @e[tag=swPool_aim_obj,tag=!swPool_aim_obj_used] if score @s swPool_calcScore = #maxcalcscore_d0sel swMath_V run tag @s add swPool_aim_obj_selected

# mark selected as used
execute if score #rank_i swMath_V < #topk swMath_V run tag @e[tag=swPool_aim_obj_selected] add swPool_aim_obj_used

# initialize tryout stuff
scoreboard players set #tryoutloop swMath_V 0
scoreboard players set #tryoutloopmax swMath_V 1
scoreboard players set #bestshot swMath_V 0
scoreboard players set #bestshotscore swMath_V -99999
tellraw @a[tag=swPool_debug] [{"text":"Looping blocked, "},{"score":{"objective":"swMath_V","name":"#rank_i"}},{"text":" of "},{"score":{"objective":"swMath_V","name":"#topk"}},{"text":" max: "},{"score":{"objective":"swMath_V","name":"#tryoutloopmax"}}]

# tryout selected action
execute if score #rank_i swMath_V < #topk swMath_V as @e[tag=swPool_aim_obj_selected,limit=1] run function pool:classes/bot/generic/_obtain_actions_entity_d0_tryout_loop_10
