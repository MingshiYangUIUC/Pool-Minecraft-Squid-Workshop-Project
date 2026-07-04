# get best overall score!
scoreboard players set #maxshotscore swMath_V -50000
execute as @e[tag=swPool_aim_obj,tag=swPool_aim_obj_used] run function pool:classes/bot/generic/rank_shotscore

execute as @e[tag=swPool_aim_obj,tag=swPool_aim_obj_used] if score @s swPool_shotScore = #maxshotscore swMath_V run tag @s add swPool_best_aim_obj
#execute as @e[tag=swPool_best_aim_obj] at @s run particle minecraft:witch ~ ~1 ~ 0.02 0.02 0.02 0 27 force
execute as @e[tag=swPool_best_aim_obj] at @s run tellraw @a[tag=swPool_debug] [{"text":"best S, "},{"score":{"objective":"swPool_shotScore","name":"@s"}}]

# demo shot
execute store result score @e[tag=swPool_best_aim_obj,limit=1] swPool_player run data get entity @s UUID[1]
execute if entity @e[tag=swPool_best_aim_obj,limit=1] run tag @s add swPool_hitcue
execute as @e[tag=swPool_best_aim_obj,limit=1] run function pool:classes/bot/generic/_execute_actions_entity


function pool:classes/bot/generic/__cleanup