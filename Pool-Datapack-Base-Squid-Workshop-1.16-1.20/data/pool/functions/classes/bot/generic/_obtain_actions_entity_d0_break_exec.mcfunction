# simple, aim at the nearest ball, hit it fully with max power.
execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/116/summon_aim_obj_break
execute unless data storage minecraft:swpool {version:[116]} run function pool:classes/bot/117/summon_aim_obj_break

# demo shot
execute store result score @e[tag=swPool_best_aim_obj,limit=1] swPool_player run data get entity @s UUID[1]
execute if entity @e[tag=swPool_best_aim_obj,limit=1] run tag @s add swPool_hitcue
execute as @e[tag=swPool_best_aim_obj,limit=1] run function pool:classes/bot/generic/_execute_actions_entity_break

#function pool:classes/bot/generic/__cleanup