#scoreboard players add @e[tag=swPool_pooltable] swPool_count 1
scoreboard players operation @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] swPool_var00 = @s swPool_var00
execute as @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] at @s run tp @s ~ ~ ~ 0 0
execute store result entity @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] Rotation[0] float 0.0001 run scoreboard players get @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] swPool_var00
execute as @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] at @s run tp @e[type=area_effect_cloud,tag=swPool_thp2,limit=1] ^ ^ ^-1
execute as @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[type=area_effect_cloud,tag=swPool_thp2,limit=1] store result score @s swPool_var02 run data get entity @s Pos[2] 10000
execute as @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] run scoreboard players operation @s swPool_var01 -= @e[type=area_effect_cloud,tag=swPool_thp2,limit=1] swPool_var02
scoreboard players operation @s swPool_var00 = @e[type=area_effect_cloud,tag=swPool_thp1,limit=1] swPool_var01
