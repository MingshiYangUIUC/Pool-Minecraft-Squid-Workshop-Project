# try out actions
# select and try top K actions
# set #topk first, e.g. 5
#say normal

scoreboard players operation #topk swMath_V = #n_pkt_valid_aim swMath_V
execute if score #topk swMath_V > C_ne swPool_C run scoreboard players operation #topk swMath_V = C_ne swPool_C
execute if score #topk swMath_V matches ..0 run scoreboard players set #topk swMath_V 1
scoreboard players set #rank_i swMath_V 0

tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_used
tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_selected

# if not instant mode: run simulation
execute unless data storage minecraft:swpool bot_instant_mode run function pool:classes/bot/generic/_obtain_actions_entity_d0_itertry
# if instant mode: directly give shotscore based on calcscore and random perturb then directly run
execute if data storage minecraft:swpool bot_instant_mode as @e[tag=swPool_aim_obj] run function pool:classes/bot/generic/_rand_shotscore
execute if data storage minecraft:swpool bot_instant_mode run function pool:classes/bot/generic/_demo_action_helper