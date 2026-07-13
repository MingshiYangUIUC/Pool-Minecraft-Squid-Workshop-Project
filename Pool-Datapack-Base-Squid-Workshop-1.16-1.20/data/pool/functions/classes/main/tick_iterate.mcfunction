execute as @e[tag=swPool_pool] at @s run function pool:classes/master/main
scoreboard players add #fastfwd_iter swMath_V 1
execute if score #fastfwd swMath_V matches 1 run kill @e[tag=swPool_potting,type=armor_stand]
execute if score #fastfwd swMath_V matches 1 if score #fastfwd_iter swMath_V < #fastfwd_maxiter swMath_V if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..}] run function pool:classes/main/tick_iterate
