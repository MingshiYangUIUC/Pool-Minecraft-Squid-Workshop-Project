#say rr__
tp @s ^ ^ ^-0.001
execute if score C_r swPool_C matches 1750 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.35] run function pool:classes/motion/retreat
execute if score C_r swPool_C matches 1500 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.3] run function pool:classes/motion/retreat
execute if score C_r swPool_C matches 1250 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.25] run function pool:classes/motion/retreat
execute if score C_r swPool_C matches 1000 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.2] run function pool:classes/motion/retreat
execute if score C_r swPool_C matches 750 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.15] run function pool:classes/motion/retreat
execute if score C_r swPool_C matches 500 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.1] run function pool:classes/motion/retreat
execute if score C_r swPool_C matches 250 at @s if entity @e[tag=swPool_pool,tag=!swPool_retreating,distance=0.00001..0.05] run function pool:classes/motion/retreat
