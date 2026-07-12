execute at @s run tp @s @e[tag=swPool_cue,tag=swPool_pool,limit=1]
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=swPool_best_aim_obj,limit=1]
execute at @s run tp @s ^ ^ ^-1.6
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=swPool_cue,tag=swPool_pool,limit=1]
execute at @s run tp @s ~ ~-0.55 ~ ~ 10
data merge entity @s {Pose:{Head:[10.0f,0.0f,0.0f]}}
