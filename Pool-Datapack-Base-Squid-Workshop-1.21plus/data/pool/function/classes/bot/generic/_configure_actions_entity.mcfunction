# executor is the aim point

# create / log rotation to be set for cue ball, force of cue ball, and strike point of cue ball.
# execute the shot
# evaluate
# undo

# already summoned entity to execute shot
execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run tp @e[tag=swPool_shooter,limit=1] ~ ~ ~ facing entity @s

#function math:classes/core/random/randint_base
#scoreboard players operation #vOut swMath_V %= #C_100 swMath_V

scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_cbld 0

execute store result score @s swPool_player run data get entity @s UUID[1]

execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/cue/shoot

scoreboard players operation #fastfwd_tmp swMath_V = #fastfwd swMath_V
scoreboard players operation #fastfwd_maxiter_tmp swMath_V = #fastfwd_maxiter swMath_V
scoreboard players set #fastfwd swMath_V 1
scoreboard players set #fastfwd_maxiter swMath_V 100000
execute if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] run function pool:classes/main/tick_iterate
scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp swMath_V
scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp swMath_V

# evaluate, and updated shooter tag when necessary
scoreboard players set #simendgame swMath_V 0
execute as @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] at @s run function pool:classes/bot/generic/evaluate_result_cn8ball
execute as @e[tag=swPool_pooltable,tag=swPool_9ballmode] at @s run function pool:classes/bot/generic/evaluate_result_9ball

#tellraw @a[tag=swPool_debug] [{"text":"sim_, "},{"score":{"objective":"swMath_V","name":"#simresult"}}]

execute if score #simresult swMath_V matches 10000 run scoreboard players set #simstat swMath_V 1
execute if score #simresult swMath_V matches -10000 run scoreboard players set #simstat swMath_V -1
execute if score #simresult swMath_V matches 0 run scoreboard players set #simstat swMath_V 0
# lose case
execute if score #simresult swMath_V matches -20000 run scoreboard players set #simstat swMath_V -2

scoreboard players set @s swPool_shotScore 0
scoreboard players operation @s swPool_shotScore += #simresult swMath_V

# adjust using original diffculty weighting 1/3
#scoreboard players operation #adj_calcscore swMath_V = @s swPool_calcScore
#scoreboard players operation #adj_calcscore swMath_V /= #C_3 swMath_C
#scoreboard players operation #adj_simresult swMath_V = #simresult swMath_V
#scoreboard players operation #adj_simresult swMath_V /= #C_3 swMath_C
#scoreboard players operation #adj_simresult swMath_V *= #C_2 swMath_C

#scoreboard players operation @s swPool_shotScore += #adj_calcscore swMath_V
#scoreboard players operation @s swPool_shotScore += #adj_simresult swMath_V

# get following best S if simulation stat is 1
# get best S on opponent behalf if simulation stat is 0
# return S=-10000 if simulation result is -1

# preparation
# give current aim markers different tags
# give current legal balls different tags

tag @e[tag=swPool_aim_obj] add swPool_aim_obj_d0
tag @e[tag=swPool_aim_obj_d0] remove swPool_aim_obj

tag @e[tag=swPool_tmp_legal] add swPool_tmp_legal_d0
tag @e[tag=swPool_tmp_legal_d0] remove swPool_tmp_legal

# if end game (win or loss), bypass evaluation
execute if score #simendgame swMath_V matches 1 unless score #simstat swMath_V matches ..-1 run scoreboard players set #simstat swMath_V -1
# if not foul, run function similar to _obtain_actions_entity without summoning additional pocket markers
execute unless score #simstat swMath_V matches ..-1 as @e[tag=swPool_shooter] run function pool:classes/bot/generic/_obtain_actions_entity_d1
# after kill those newly generated entities and retrieving S,  restore current aim markers

# add max score after applying weighting if not foul
#scoreboard players operation #maxcalcscore swMath_V /= #C_2 swMath_C
execute if score #simstat swMath_V matches 1 run scoreboard players operation @s swPool_shotScore += #maxcalcscore swMath_V

# use probability weighting of stat 1
execute unless score #simendgame swMath_V matches 1 if score #simstat swMath_V matches 1 run scoreboard players operation @s swPool_shotScore *= @s swPool_calcScore
execute unless score #simendgame swMath_V matches 1 if score #simstat swMath_V matches 1 run scoreboard players operation @s swPool_shotScore /= #C_10000 swMath_C
# for normal end game (win) as well
execute if score #simendgame swMath_V matches 1 run scoreboard players operation @s swPool_shotScore *= @s swPool_calcScore
execute if score #simendgame swMath_V matches 1 run scoreboard players operation @s swPool_shotScore /= #C_10000 swMath_C


execute if score #simstat swMath_V matches 0 run scoreboard players operation @s swPool_shotScore -= #maxcalcscore swMath_V

# print final score of this action
#tellraw @a[tag=swPool_debug] [{"text":"Full eval, "},{"score":{"objective":"swPool_shotScore","name":"@s"}}]

# undo and cleanup
function pool:classes/master/undo_run
scoreboard players set #outoftable_scheduled swPool_var00 1

tag @e[tag=swPool_aim_obj_d0] add swPool_aim_obj
tag @e[tag=swPool_aim_obj] remove swPool_aim_obj_d0

tag @e[tag=swPool_tmp_legal_d0] add swPool_tmp_legal
tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal_d0

kill @e[tag=swPool_shooter]
#kill @s
