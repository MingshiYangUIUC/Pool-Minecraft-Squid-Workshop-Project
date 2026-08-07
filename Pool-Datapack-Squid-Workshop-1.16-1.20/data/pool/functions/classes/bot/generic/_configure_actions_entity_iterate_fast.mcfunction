# this iteration section tries to finish simulation in one tick

scoreboard players set #fastfwd swMath_V 1
scoreboard players set #fastfwd_maxiter swMath_V 100000
execute if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..}] run function pool:classes/main/tick_iterate

function pool:classes/bot/generic/_configure_actions_entity_evaluate