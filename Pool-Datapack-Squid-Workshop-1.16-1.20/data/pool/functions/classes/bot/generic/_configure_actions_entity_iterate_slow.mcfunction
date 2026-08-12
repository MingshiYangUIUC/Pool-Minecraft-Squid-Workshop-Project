# this iteration section tries to finish simulation in many ticks
# several iterations per tick
# scoreboard players set C_st swPool_C 5
scoreboard players set #fastfwd swMath_V 1
scoreboard players operation #fastfwd_maxiter swMath_V = C_st swPool_C
execute at 000c2be1-0001-414d-0000-000000000000 if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..},distance=..50] run function pool:classes/main/tick_iterate

scoreboard players set #reschedule_iter swMath_V 0
execute at 000c2be1-0001-414d-0000-000000000000 if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..},distance=..50] run scoreboard players set #reschedule_iter swMath_V 1
#execute if score #reschedule_iter swMath_V matches 1 run say reiter
#execute if score #reschedule_iter swMath_V matches 0 run say stop

execute unless score #reschedule_iter swMath_V matches 1 as @e[tag=swPool_aim_obj_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_evaluate_loop
execute if score #reschedule_iter swMath_V matches 1 run scoreboard players set #fastfwd_iter swMath_V 0
execute if score #reschedule_iter swMath_V matches 1 run schedule function pool:classes/bot/generic/_configure_actions_entity_iterate_slow 1t