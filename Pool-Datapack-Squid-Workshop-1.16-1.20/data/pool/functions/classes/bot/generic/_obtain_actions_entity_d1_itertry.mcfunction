# select and simulate one d1 aim point
tellraw @a[tag=swPool_debug] [{"text":"D1 itertry start"}]

# reset cue-ball collision counters
scoreboard players set #n_collision_normal swMath_V 0
scoreboard players set #n_collision_pktedge swMath_V 0

execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V run tag @e[tag=swPool_aim_obj_d1] remove swPool_aim_obj_d1_selected
execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V run scoreboard players set #maxcalcscore_d1sel swMath_V -50000
execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V as @e[tag=swPool_aim_obj_d1,tag=!swPool_aim_obj_d1_used] run function pool:classes/bot/generic/rank_topk_d1
execute unless score swPool_snookermode swMath_V matches 1 if score #rank_i_d1 swMath_V < #topk_d1 swMath_V as @e[tag=swPool_aim_obj_d1,tag=!swPool_aim_obj_d1_used] if score @s swPool_calcScore = #maxcalcscore_d1sel swMath_V run tag @s add swPool_aim_obj_d1_selected
execute if score swPool_snookermode swMath_V matches 1 if score #rank_i_d1 swMath_V < #topk_d1 swMath_V as @e[tag=swPool_aim_obj_d1,tag=!swPool_aim_obj_d1_used] if score @s swPool_scalScore = #maxcalcscore_d1sel swMath_V run tag @s add swPool_aim_obj_d1_selected
execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V run tag @e[tag=swPool_aim_obj_d1_selected] add swPool_aim_obj_d1_used
execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V unless entity @e[tag=swPool_aim_obj_d1_selected,limit=1] run tellraw @a[tag=swPool_debug] [{"text":"D1 itertry fail to simulate"}]
execute if score #rank_i_d1 swMath_V < #topk_d1 swMath_V as @e[tag=swPool_aim_obj_d1_selected,limit=1] run function pool:classes/bot/generic/_obtain_actions_entity_d1_tryout
