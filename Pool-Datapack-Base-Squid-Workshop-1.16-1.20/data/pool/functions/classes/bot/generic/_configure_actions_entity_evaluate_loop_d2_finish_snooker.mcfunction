# compute total next state score of d0 action using combination of d1 and d2 scores. S_d1* = (S_d1*2 + S_d2)/3

# restore outer d0 shooter if it was hidden during nested d1 simulation
tag @e[tag=swPool_shooter_d0] add swPool_shooter
tag @e[tag=swPool_shooter_d0] remove swPool_shooter_d0

# S_d1* = (S_d1*2 + S_d2)/3
scoreboard players operation #future_d0 swMath_V = #maxcalcscore_d1 swMath_V
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. run scoreboard players operation #future_d0 swMath_V *= #C_2 swMath_C
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. run scoreboard players operation #future_d0 swMath_V += #maxshotscore_d1 swMath_V
execute if score #simstat_d0 swMath_V matches 1 if score #topk_d1 swMath_V matches 1.. run scoreboard players operation #future_d0 swMath_V /= #C_3 swMath_C

# same as the original d0 but using S_d1* instead of S_d1
scoreboard players set @s swPool_shotScore 0
scoreboard players operation @s swPool_shotScore += #simresult_d0 swMath_V

# legal pot and continue: immediate score + future position
execute if score #simstat_d0 swMath_V matches 1 unless score #simendgame_d0 swMath_V matches 1 run scoreboard players operation @s swPool_shotScore += #future_d0 swMath_V

# legal pot: weight by pot probability
execute if score #simstat_d0 swMath_V matches 1 run scoreboard players operation @s swPool_shotScore *= @s swPool_calcScore
execute if score #simstat_d0 swMath_V matches 1 run scoreboard players operation @s swPool_shotScore /= #C_10000 swMath_C

# legal miss: opponent's next position is negative
execute if score #simstat_d0 swMath_V matches 0 if score #future_d0 swMath_V matches -4000 run scoreboard players set #future_d0 swMath_V -1000
execute if score #simstat_d0 swMath_V matches 0 run scoreboard players operation @s swPool_shotScore -= #future_d0 swMath_V

# foul: #simresult_d0 already contains the actual negative foul value

# cleanup
kill @e[tag=swPool_aim_obj_d1]
kill @e[tag=swPool_temppin_d1]

# restore tmp score of d0
scoreboard players operation #simresult swMath_V = #simresult_d0 swMath_V
scoreboard players operation #simstat swMath_V = #simstat_d0 swMath_V
scoreboard players operation #simendgame swMath_V = #simendgame_d0 swMath_V
scoreboard players operation #switchplayer swPool_var00 = #switchplayer_d0 swPool_var00
scoreboard players operation #maxcalcscore swMath_V = #maxcalcscore_d1 swMath_V

execute if score #abnorm swMath_V matches 1 run scoreboard players operation @s swPool_shotScore -= C_p_instability swPool_C
execute if score #abnorm swMath_V matches 2 run scoreboard players remove @s swPool_shotScore 15000
# apply d0 snooker strategy penalty
execute if score #strategy swMath_V matches 1 if score #simstat_d0 swMath_V matches 0 run scoreboard players operation @s swPool_shotScore -= #strategy_penalty swMath_V
execute if score #strategy swMath_V matches 2 if score #simstat_d0 swMath_V matches 1 unless score #simendgame_d0 swMath_V matches 1 run scoreboard players operation @s swPool_shotScore -= #strategy_penalty swMath_V

function pool:classes/master/undo_run
scoreboard players set #outoftable_scheduled swPool_var00 1

tag @e[tag=swPool_aim_obj_d0] add swPool_aim_obj
tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_d0
tag @e[tag=swPool_tmp_legal_d0] add swPool_tmp_legal
tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal_d0

kill @e[tag=swPool_shooter]
kill @e[tag=swPool_shooter_d0]

# advance to next action
scoreboard players add #tryoutloop swMath_V 1
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshot swMath_V = #tryoutloop swMath_V
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore

execute if score #tryoutloop swMath_V >= #tryoutloopmax swMath_V run function pool:classes/bot/generic/_obtain_actions_entity_d0_tryout_loopend_10
execute if score #tryoutloop swMath_V < #tryoutloopmax swMath_V run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_tryout_resume 1t
