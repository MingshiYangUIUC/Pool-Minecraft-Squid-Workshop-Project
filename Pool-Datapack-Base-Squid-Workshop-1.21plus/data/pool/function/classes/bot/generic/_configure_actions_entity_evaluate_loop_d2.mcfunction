# restore fastfwd state
scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp swMath_V
scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp swMath_V
scoreboard players set #fastfwd_bot swMath_V 0

# check result of d0 simulation
scoreboard players set #simendgame swMath_V 0
execute as @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] at @s run function pool:classes/bot/generic/evaluate_result_cn8ball
execute as @e[tag=swPool_pooltable,tag=swPool_9ballmode] at @s run function pool:classes/bot/generic/evaluate_result_9ball

scoreboard players set #simstat swMath_V 0
execute if score #simresult swMath_V matches 10000 run scoreboard players set #simstat swMath_V 1
execute if score #simresult swMath_V matches -10000 run scoreboard players set #simstat swMath_V -1
execute if score #simresult swMath_V matches 0 run scoreboard players set #simstat swMath_V 0
execute if score #simresult swMath_V matches -20000 run scoreboard players set #simstat swMath_V -2

# store d0 scores
scoreboard players operation #simresult_d0 swMath_V = #simresult swMath_V
scoreboard players operation #simstat_d0 swMath_V = #simstat swMath_V
scoreboard players operation #simendgame_d0 swMath_V = #simendgame swMath_V
scoreboard players operation #switchplayer_d0 swPool_var00 = #switchplayer swPool_var00

# preserve d0 entities
tag @e[tag=swPool_aim_obj] add swPool_aim_obj_d0
tag @e[tag=swPool_aim_obj_d0] remove swPool_aim_obj
tag @e[tag=swPool_tmp_legal] add swPool_tmp_legal_d0
tag @e[tag=swPool_tmp_legal_d0] remove swPool_tmp_legal

# endgame does not need future evaluation
execute if score #simendgame_d0 swMath_V matches 1 unless score #simstat_d0 swMath_V matches ..-1 run scoreboard players set #simstat_d0 swMath_V -1

# opponent turn: estimate d1 only, no simulation
execute if score #simstat_d0 swMath_V matches 0 as @e[tag=swPool_shooter] run function pool:classes/bot/generic/_obtain_actions_entity_d1
execute if score #simstat_d0 swMath_V matches 0 run scoreboard players operation #maxcalcscore_d1 swMath_V = #maxcalcscore swMath_V

# successful d0 shot: proceed to d1 and simulate d2 if needed
execute if score #simstat_d0 swMath_V matches 1 as @e[tag=swPool_shooter] run function pool:classes/bot/generic/_obtain_actions_entity_d1_prepare

# record topk for d1 if needed
scoreboard players set #topk_d1 swMath_V 0
execute if score #simstat_d0 swMath_V matches 1 run scoreboard players operation #topk_d1 swMath_V = #n_pkt_valid_aim swMath_V
execute if score #topk_d1 swMath_V > C_ne swPool_C run scoreboard players operation #topk_d1 swMath_V = C_ne swPool_C

scoreboard players set #rank_i_d1 swMath_V 0
scoreboard players set #maxshotscore_d1 swMath_V -99999
tag @e[tag=swPool_aim_obj_d1] remove swPool_aim_obj_d1_used
tag @e[tag=swPool_aim_obj_d1] remove swPool_aim_obj_d1_selected

# dispatch simulation or not
execute unless score #simstat_d0 swMath_V matches 1 as @e[tag=swPool_aim_obj_d0,tag=swPool_aim_obj_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_evaluate_loop_d2_finish
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches ..0 run scoreboard players operation #maxshotscore_d1 swMath_V = #maxcalcscore_d1 swMath_V
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches ..0 as @e[tag=swPool_aim_obj_d0,tag=swPool_aim_obj_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_evaluate_loop_d2_finish
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. if data storage minecraft:swpool bot_simulate_asap run scoreboard players operation #maxshotscore_d1 swMath_V = #maxcalcscore_d1 swMath_V
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. if data storage minecraft:swpool bot_simulate_asap as @e[tag=swPool_aim_obj_d0,tag=swPool_aim_obj_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_evaluate_loop_d2_finish

execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. unless data storage minecraft:swpool bot_simulate_asap run tag @e[tag=swPool_shooter,limit=1] add swPool_shooter_d0
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. unless data storage minecraft:swpool bot_simulate_asap run tag @e[tag=swPool_shooter_d0] remove swPool_shooter
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. unless data storage minecraft:swpool bot_simulate_asap run function pool:classes/bot/generic/_obtain_actions_entity_d1_itertry
