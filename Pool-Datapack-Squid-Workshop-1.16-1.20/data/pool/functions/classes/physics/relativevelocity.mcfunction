#angle by velocity triangle
tag @e[type=area_effect_cloud,tag=swPool_rhp1] add swPool_facertp
execute at @s run tp @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] ~ ~ ~ ~ 0

execute store result entity @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] Rotation[0] float 0.0001 run scoreboard players get @s swPool_Rotation
scoreboard players operation @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] swPool_v = @s swPool_v
execute as @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] at @s run function pool:classes/motion/move
scoreboard players set @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] swPool_v 0

execute store result entity @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] Rotation[0] float 0.0001 run scoreboard players get @e[type=armor_stand,tag=swPool_a2,limit=1] swPool_Rotation
execute as @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~180 0
scoreboard players operation @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] swPool_v = @e[type=armor_stand,tag=swPool_a2,limit=1] swPool_v
execute as @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] at @s run function pool:classes/motion/move

scoreboard players operation @s swPool_rot = @s swPool_Rotation
tag @e[type=area_effect_cloud,tag=swPool_rhp2] add swPool_facerv
execute at @s run tp @e[type=area_effect_cloud,tag=swPool_facerv,limit=1,sort=nearest] ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=swPool_facerv,limit=1,sort=nearest] store result score FACERV swPool_rot run data get entity @s Rotation[0] 10000
scoreboard players operation @s swPool_rot -= FACERV swPool_rot
scoreboard players operation @s swPool_drot -= @s swPool_rot

tag @e[type=area_effect_cloud,tag=swPool_rhp1] remove swPool_facertp
tag @e[type=area_effect_cloud,tag=swPool_rhp2] remove swPool_facerv
tag @s remove swPool_aabs