# manual iteration-slow-down control (for debug use: change tick_interval swPool_C) 
scoreboard players add #tick_engine swMath_V 1
execute if score #tick_engine swMath_V >= tick_interval swPool_C run scoreboard players set #tick_engine swMath_V 0

# player tick with restricted ranges from pool table
execute if score swPool_gameon swMath_V matches 1 if data storage minecraft:swpool {version:[1205]} at 000c2be1-0001-414d-0000-000000000000 as @a[tag=swPool_poolplay,distance=..50] run function pool:classes/main/run_player_tick_1205
execute if score swPool_gameon swMath_V matches 1 unless data storage minecraft:swpool {version:[1205]} at 000c2be1-0001-414d-0000-000000000000 as @a[tag=swPool_poolplay,distance=..50] run function pool:classes/main/run_player_tick_11

# refresh ball location and models one tick after placement
execute as 000c2be1-0001-414d-0000-000000000000 if score @s swPool_lifetime matches 1 at @s run function pool:classes/main/run_tick_place

# ball physics iteration
scoreboard players set #fastfwd_iter swMath_V 0
execute unless score #fastfwd_bot swMath_V matches 1 if score #tick_engine swMath_V matches 0 at 000c2be1-0001-414d-0000-000000000000 if entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..},distance=..50] run function pool:classes/main/tick_iterate
# end-of-turn
execute unless score #fastfwd_bot swMath_V matches 1 if score swPool_gameon swMath_V matches 1 as 000c2be1-0001-414d-0000-000000000000 at @s unless entity @e[type=armor_stand,tag=swPool_pool,scores={swPool_v=1..}] if entity @s[tag=!swPool_start,tag=!swPool_progressed] run function pool:classes/master/idle

# accumulating / resetting score
scoreboard players add 000c2be1-0001-414d-0000-000000000000 swPool_lifetime 1
scoreboard players add #accumulator swMath_V 1
scoreboard players set @a swPool_crtclk 0

# spin animation
execute if score swPool_gameon swMath_V matches 1 unless score #fastfwd swMath_V matches 1 if score #tick_engine swMath_V matches 0 if data storage minecraft:swpool {allowspin:1} at 000c2be1-0001-414d-0000-000000000000 as @e[tag=swPool_pool,scores={swPool_T=1..,swPool_v=1..},distance=..50] run function pool:classes/pose/w2dpdt_iterative

# pocketing animation
execute if score swPool_gameon swMath_V matches 1 unless score #fastfwd swMath_V matches 1 if score #tick_engine swMath_V matches 0 at 000c2be1-0001-414d-0000-000000000000 as @e[tag=swPool_potting,type=armor_stand,distance=..20] at @s run function pool:classes/pocketing/animation/loop

# bot animation
execute if score #shootanim swMath_V matches 1 as @e[tag=swPool_shooter,limit=1] run function pool:classes/bot/animation/_loop
