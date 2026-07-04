# simple, aim at the nearest ball, hit it fully with max power.
execute as @e[tag=swPool_cue,tag=swPool_pool] at @s at @e[tag=swPool_pool,sort=nearest,limit=1,distance=0.01..] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_aim_obj","swPool_best_aim_obj"],Duration:1200}

# demo shot
execute store result score @e[tag=swPool_best_aim_obj,limit=1] swPool_player run data get entity @s UUID[1]
execute if entity @e[tag=swPool_best_aim_obj,limit=1] run tag @s add swPool_hitcue
execute as @e[tag=swPool_best_aim_obj,limit=1] run function pool:classes/bot/generic/_execute_actions_entity_break

function pool:classes/bot/generic/__cleanup