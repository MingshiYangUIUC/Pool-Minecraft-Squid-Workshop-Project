scoreboard players set @s swPool_chst 0

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_chestplace"],Duration:1}

execute at @s run tp @e[type=area_effect_cloud,tag=swPool_chestplace] ~ ~1.62 ~

data modify entity @e[type=area_effect_cloud,tag=swPool_chestplace,limit=1] Rotation set from entity @s Rotation

scoreboard players set #chestplaced swMath_V 0
scoreboard players set #chestplaced_x swMath_V 0
scoreboard players set #chestplaced_y swMath_V 0
scoreboard players set #chestplaced_z swMath_V 0
scoreboard players set #chestplace_ntp swMath_V 0

execute as @e[type=area_effect_cloud,tag=swPool_chestplace,limit=1] at @s run function pool:classes/table/helpers/chest_tp

execute if score #chestplaced swMath_V matches 1 as @e[type=area_effect_cloud,tag=swPool_chestplace,limit=1] at @s run function pool:classes/table/helpers/chest_record_pos

kill @e[type=area_effect_cloud,tag=swPool_chestplace,limit=1]
