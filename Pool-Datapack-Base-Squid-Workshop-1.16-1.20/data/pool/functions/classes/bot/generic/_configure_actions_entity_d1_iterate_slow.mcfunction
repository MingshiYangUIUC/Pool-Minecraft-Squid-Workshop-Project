# same as slow d0
scoreboard players set #fastfwd swMath_V 1
scoreboard players operation #fastfwd_maxiter swMath_V = C_st swPool_C
execute at 000c2be1-0001-414d-0000-000000000000 if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..},distance=..50] run function pool:classes/main/tick_iterate

scoreboard players set #reschedule_iter_d1 swMath_V 0
execute at 000c2be1-0001-414d-0000-000000000000 if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..},distance=..50] run scoreboard players set #reschedule_iter_d1 swMath_V 1

# reschedule first
execute if score #reschedule_iter_d1 swMath_V matches 1 run scoreboard players set #fastfwd_iter swMath_V 0
execute if score #reschedule_iter_d1 swMath_V matches 1 run schedule function pool:classes/bot/generic/_configure_actions_entity_d1_iterate_slow 1t

# evaluate
execute if score swPool_snookermode swMath_V matches 1 unless score #reschedule_iter_d1 swMath_V matches 1 as @e[tag=swPool_aim_obj_d1_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_d1_evaluate_snooker
execute unless score swPool_snookermode swMath_V matches 1 unless score #reschedule_iter_d1 swMath_V matches 1 as @e[tag=swPool_aim_obj_d1_selected,limit=1] at @s run function pool:classes/bot/generic/_configure_actions_entity_d1_evaluate
