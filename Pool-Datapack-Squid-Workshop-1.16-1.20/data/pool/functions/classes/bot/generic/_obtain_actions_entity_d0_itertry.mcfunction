# only run body if rank_i < topk

# clear current selection
execute if score #rank_i swMath_V < #topk swMath_V run tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_selected

# reset max
execute if score #rank_i swMath_V < #topk swMath_V run scoreboard players set #maxcalcscore_d0sel swMath_V -50000

# find max among unused actions
execute if score #rank_i swMath_V < #topk swMath_V as @e[tag=swPool_aim_obj,tag=!swPool_aim_obj_used] run function pool:classes/bot/generic/rank_topk
#tellraw @a [{"text":"sel "},{"score":{"objective":"swMath_V","name":"#maxcalcscore_d0sel"}}]
# select one action with current max
execute if score #rank_i swMath_V < #topk swMath_V as @e[tag=swPool_aim_obj,tag=!swPool_aim_obj_used] if score @s swPool_calcScore = #maxcalcscore_d0sel swMath_V run tag @s add swPool_aim_obj_selected

# mark selected as used
execute if score #rank_i swMath_V < #topk swMath_V run tag @e[tag=swPool_aim_obj_selected] add swPool_aim_obj_used

# tryout selected action
execute if score #rank_i swMath_V < #topk swMath_V as @e[tag=swPool_aim_obj_selected,limit=1] run function pool:classes/bot/generic/_obtain_actions_entity_d0_tryout_10

#tellraw @a [{"text":"Rank "},{"score":{"objective":"swMath_V","name":"#rank_i"}},{"text":" result score, "},{"score":{"objective":"swPool_shotScore","name":"@e[tag=swPool_aim_obj_selected,limit=1]"}}]

# rank_i += 1
execute if score #rank_i swMath_V < #topk swMath_V run scoreboard players add #rank_i swMath_V 1

# cleanup current selected tag
tag @e[tag=swPool_aim_obj_selected] remove swPool_aim_obj_selected

# continue only if rank_i < topk
execute if score #rank_i swMath_V < #topk swMath_V run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_itertry 30t


execute if score #rank_i swMath_V = #topk swMath_V run schedule function pool:classes/bot/generic/_demo_action_helper 30t
