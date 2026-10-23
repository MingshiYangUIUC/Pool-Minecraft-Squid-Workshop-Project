tellraw @a[tag=swPool_debug] [{"text":"D1 evaluation start"}]

# restore fastfwd state
scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp_d1 swMath_V
scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp_d1 swMath_V
scoreboard players set #fastfwd_bot swMath_V 0

# evaluate result
execute as @e[tag=swPool_pooltable] at @s run function pool:classes/bot/generic/evaluate_result_snooker
scoreboard players operation #simstat_d1 swMath_V = #simstat swMath_V

# check d2 score like previously d1 estimates
scoreboard players set #maxcalcscore_d2 swMath_V 0
execute unless score #simendgame swMath_V matches 1 unless score #simstat_d1 swMath_V matches ..-1 as @e[tag=swPool_shooter] run function pool:classes/bot/generic/_obtain_actions_entity_d2

# calculate d1 score
scoreboard players set @s swPool_shotScore 0
scoreboard players operation @s swPool_shotScore += #simresult swMath_V

# legal pot and continue: immediate score + future position
execute if score #simstat_d1 swMath_V matches 1 unless score #simendgame swMath_V matches 1 run scoreboard players operation @s swPool_shotScore += #maxcalcscore_d2 swMath_V

# legal pot: weight by pot probability
execute if score #simstat_d1 swMath_V matches 1 run scoreboard players operation @s swPool_shotScore *= @s swPool_calcScore
execute if score #simstat_d1 swMath_V matches 1 run scoreboard players operation @s swPool_shotScore /= #C_10000 swMath_C

# legal miss: opponent's next position is negative
execute if score #simstat_d1 swMath_V matches 0 if score #maxcalcscore_d2 swMath_V matches -4000 run scoreboard players set #maxcalcscore_d2 swMath_V -1000
execute if score #simstat_d1 swMath_V matches 0 run scoreboard players operation @s swPool_shotScore -= #maxcalcscore_d2 swMath_V

# foul: #simresult already contains the actual negative foul value

execute if score #abnorm swMath_V matches 1 run scoreboard players operation @s swPool_shotScore -= C_p_instability swPool_C
execute if score #abnorm swMath_V matches 2 run scoreboard players remove @s swPool_shotScore 15000

# restore only this d1 shot
function pool:classes/bot/generic/_undo_d1
kill @e[tag=swPool_shooter]

# store the max score
execute if score @s swPool_shotScore > #maxshotscore_d1 swMath_V run scoreboard players operation #maxshotscore_d1 swMath_V = @s swPool_shotScore
scoreboard players add #rank_i_d1 swMath_V 1
tag @e[tag=swPool_aim_obj_d1_selected] remove swPool_aim_obj_d1_selected

execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V run tellraw @a[tag=swPool_debug] [{"text":"D1 to D1"}]
execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V run schedule function pool:classes/bot/generic/_obtain_actions_entity_d1_itertry 1t
execute if score #rank_i_d1 swMath_V >= #topk_d1 swMath_V as @e[tag=swPool_aim_obj_d0,tag=swPool_aim_obj_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_evaluate_loop_d2_finish_snooker
