# if fixtablescale, change pocket center radius to be larger so pocket size is the same
# if not fixtablescale, rescale radii of all fake balls
# no longer shift table dim by R0-R1, these are defined as needed in the table set functions

# no rescale if there is fixtablescale storage
scoreboard players operation C_r2_cntr_c swPool_C = C_r_cntr_c swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_c swPool_C *= C_r swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_c swPool_C /= C_r0 swPool_C
scoreboard players operation C_r2_cntr_s swPool_C = C_r_cntr_s swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_s swPool_C *= C_r swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_s swPool_C /= C_r0 swPool_C
scoreboard players operation C_r2_edge_c swPool_C = C_r_edge_c swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_edge_c swPool_C *= C_r swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_edge_c swPool_C /= C_r0 swPool_C
scoreboard players operation C_r2_edge_s swPool_C = C_r_edge_s swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_edge_s swPool_C *= C_r swPool_C
execute unless data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_edge_s swPool_C /= C_r0 swPool_C

# increase center detection if there is fixtablescale storage
execute if data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_c swPool_C += C_r0 swPool_C
execute if data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_c swPool_C -= C_r swPool_C
execute if data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_s swPool_C += C_r0 swPool_C
execute if data storage minecraft:swpool fixtablescale run scoreboard players operation C_r2_cntr_s swPool_C -= C_r swPool_C

execute if score #fastfwd swMath_V matches 1 run tag @e[type=item_display,tag=swPool_fake] add swPool_pool
execute as @e[type=item_display,tag=swPool_pool,tag=!swPool_fake] at @s run function pool:classes/master/main
execute if score #fastfwd swMath_V matches 1 run tag @e[type=item_display,tag=swPool_fake] remove swPool_pool

scoreboard players add #fastfwd_iter swMath_V 1
execute if score #fastfwd swMath_V matches 1 run kill @e[tag=swPool_potting,type=item_display]
execute if score #fastfwd swMath_V matches 1 if score #fastfwd_iter swMath_V < #fastfwd_maxiter swMath_V if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] run function pool:classes/main/tick_iterate
