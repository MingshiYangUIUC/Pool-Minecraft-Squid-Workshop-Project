scoreboard players add #tick swPool_var00 1
execute if score #tick swPool_var00 >= tick_interval swPool_C run scoreboard players set #tick swPool_var00 0

# player tick
execute if score swPool_gameon swMath_V matches 1 if data storage minecraft:swpool {version:[1205]} as @a[tag=swPool_poolplay] run function pool:classes/main/run_player_tick_1205
execute if score swPool_gameon swMath_V matches 1 unless data storage minecraft:swpool {version:[1205]} as @a[tag=swPool_poolplay] run function pool:classes/main/run_player_tick_11

execute as @e[type=item_display,tag=swPool_pooltable,scores={swPool_lifetime=1}] run function pool:classes/main/run_tick_place

scoreboard players set #fastfwd_iter swMath_V 0
execute if score #tick swPool_var00 matches 0 if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pooltable] remove swPool_progressed
execute if score #tick swPool_var00 matches 0 if entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] run function pool:classes/main/tick_iterate
execute if score #tick swPool_var00 matches 0 if score C_r swPool_C matches 1250 as @e[type=item_display,tag=swPool_pool] at @s if entity @e[tag=swPool_pool,distance=0.0001..0.25] run function pool:classes/motion/new_retreat

execute if score swPool_gameon swMath_V matches 1 unless entity @e[type=item_display,tag=swPool_pool,scores={swPool_v=1..}] as @e[tag=swPool_pooltable,tag=!swPool_start,tag=!swPool_progressed] run function pool:classes/master/idle
scoreboard players add @e[type=item_display,tag=swPool_pooltable] swPool_lifetime 1

scoreboard players set @a swPool_crtclk 0

execute if score swPool_gameon swMath_V matches 1 unless score #fastfwd swMath_V matches 1 if score #tick swPool_var00 matches 0 if data storage minecraft:swpool {allowspin:1} as @e[tag=swPool_pool,scores={swPool_T=1..,swPool_v=1..}] run function pool:classes/pose_quat/rotate_init

execute if score swPool_gameon swMath_V matches 1 unless score #fastfwd swMath_V matches 1 if score #tick swPool_var00 matches 0 as @e[tag=swPool_potting,type=item_display] at @s run function pool:classes/pocketing/animation/loop
