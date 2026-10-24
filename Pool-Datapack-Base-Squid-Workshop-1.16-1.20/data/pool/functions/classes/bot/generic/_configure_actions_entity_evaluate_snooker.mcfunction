# reset fastfwd scores
tellraw @a[tag=swPool_debug] [{"text":"evaluating"}]
scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp swMath_V
scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp swMath_V

# evaluate, and update shooter/table rule state when necessary
scoreboard players set #simendgame swMath_V 0
execute as @e[tag=swPool_pooltable] at @s run function pool:classes/bot/generic/evaluate_result_snooker

#tellraw @a[tag=swPool_debug] [{"text":"sim_, "},{"score":{"objective":"swMath_V","name":"#simresult"}}]

# #simstat is already set by evaluate_result_snooker:
#  1 = legal score and continue
#  0 = legal no-score and switch
# -1 = foul

scoreboard players set @s swPool_shotScore 0
scoreboard players operation @s swPool_shotScore += #simresult swMath_V

# preparation
# give current aim markers different tags
# give current legal balls different tags
tag @e[tag=swPool_aim_obj] add swPool_aim_obj_d0
tag @e[tag=swPool_aim_obj_d0] remove swPool_aim_obj

tag @e[tag=swPool_tmp_legal] add swPool_tmp_legal_d0
tag @e[tag=swPool_tmp_legal_d0] remove swPool_tmp_legal

# if not foul and not endgame, run function similar to _obtain_actions_entity
execute unless score #simendgame swMath_V matches 1 unless score #simstat swMath_V matches ..-1 as @e[tag=swPool_shooter] run function pool:classes/bot/generic/_obtain_actions_entity_d1

# legal score and continue: add own future position value
execute unless score #simendgame swMath_V matches 1 if score #simstat swMath_V matches 1 run scoreboard players operation @s swPool_shotScore += #maxcalcscore swMath_V

# legal scoring shot: probability weighting
execute if score #simstat swMath_V matches 1 run scoreboard players operation @s swPool_shotScore *= @s swPool_calcScore
execute if score #simstat swMath_V matches 1 run scoreboard players operation @s swPool_shotScore /= #C_10000 swMath_C

# legal miss: subtract opponent's following position value without too much reward on defense
execute if score #simstat swMath_V matches 0 if score #maxcalcscore swMath_V matches ..-1001 run scoreboard players set #maxcalcscore swMath_V -1000
execute if score #simstat swMath_V matches 0 run scoreboard players operation @s swPool_shotScore -= #maxcalcscore swMath_V

# foul: #simresult already contains the actual negative foul value

# print final score of this action
#tellraw @a[tag=swPool_debug] [{"text":"Full eval, "},{"score":{"objective":"swPool_shotScore","name":"@s"}}]

# undo and cleanup
execute if score #abnorm swMath_V matches 1 run scoreboard players operation @s swPool_shotScore -= C_p_instability swPool_C
execute if score #abnorm swMath_V matches 2 run scoreboard players remove @s swPool_shotScore 15000
# apply d0 snooker strategy penalty
execute if score #strategy swMath_V matches 1 if score #simstat swMath_V matches 0 run scoreboard players operation @s swPool_shotScore -= #strategy_penalty swMath_V
execute if score #strategy swMath_V matches 2 if score #simstat swMath_V matches 1 unless score #simendgame swMath_V matches 1 run scoreboard players operation @s swPool_shotScore -= #strategy_penalty swMath_V

function pool:classes/master/undo_run
scoreboard players set #outoftable_scheduled swPool_var00 1

tag @e[tag=swPool_aim_obj_d0] add swPool_aim_obj
tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_d0

tag @e[tag=swPool_tmp_legal_d0] add swPool_tmp_legal
tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal_d0

kill @e[tag=swPool_shooter]
#kill @s
