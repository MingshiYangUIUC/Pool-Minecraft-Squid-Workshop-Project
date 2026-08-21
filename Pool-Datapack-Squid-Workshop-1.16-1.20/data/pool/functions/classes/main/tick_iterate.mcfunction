tag 000c2be1-0001-414d-0000-000000000000 remove swPool_progressed

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

tag @e[type=armor_stand,tag=swPool_fake] add swPool_pool
execute as @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=..50,scores={swPool_v=1..}] at @s run function pool:classes/master/main
tag @e[type=armor_stand,tag=swPool_fake] remove swPool_pool

scoreboard players add #fastfwd_iter swMath_V 1
execute if score #fastfwd swMath_V matches 1 run kill @e[tag=swPool_potting,type=armor_stand]

# adjust based on number of moving entities in ffwd mode
execute if score #fastfwd swMath_V matches 1 run scoreboard players operation #fastfwd_maxiter_adjust swMath_V = #fastfwd_maxiter swMath_V
# count moving entities
execute if score #fastfwd swMath_V matches 1 run scoreboard players set #n_moving swMath_V 0
execute if score #fastfwd swMath_V matches 1 as @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..},distance=..50] run scoreboard players add #n_moving swMath_V 1
# reduce max iteration count if there are many moving entities
execute if score #fastfwd swMath_V matches 1 run scoreboard players operation #fastfwd_maxiter_adjust swMath_V /= #n_moving swMath_V
execute if score #fastfwd swMath_V matches 1 if score #fastfwd_maxiter_adjust swMath_V matches ..0 run scoreboard players set #fastfwd_maxiter_adjust swMath_V 1
# dispatch based on the adjusted cap
execute if score #fastfwd swMath_V matches 1 if score #fastfwd_iter swMath_V < #fastfwd_maxiter_adjust swMath_V if score #n_moving swMath_V matches 1.. run function pool:classes/main/tick_iterate
