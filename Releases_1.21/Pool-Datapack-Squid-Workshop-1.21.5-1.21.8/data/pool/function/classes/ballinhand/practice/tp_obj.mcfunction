execute as @a[tag=swPool_ballinhand_obj,limit=1] at @s store result score @s swPool_posy run data get entity @s Pos[1] 100
execute at @s run tp @s ^ ^ ^0.005
execute store result score @s swPool_posy run data get entity @s Pos[1] 100
scoreboard players operation @s swPool_posy -= @a[tag=swPool_ballinhand_obj,limit=1] swPool_posy


execute as @a[tag=swPool_ballinhand_obj,limit=1] at @s positioned ~-1 ~-2 ~-1 if entity @e[type=item_frame,tag=swPool_cloth,dy=1,dx=3,dz=3] run execute as @e[type=area_effect_cloud,tag=swPool_cueplace] unless entity @s[scores={swPool_posy=..3}] at @s run function pool:classes/ballinhand/practice/tp_obj
execute as @a[tag=swPool_ballinhand_obj,limit=1] at @s positioned ~-1 ~-2 ~-1 unless entity @e[type=item_frame,tag=swPool_cloth,dy=1,dx=3,dz=3] run execute as @e[type=area_effect_cloud,tag=swPool_cueplace] unless entity @s[scores={swPool_posy=..103}] at @s run function pool:classes/ballinhand/practice/tp_obj

#execute unless entity @s[scores={swPool_posy=..105}] at @s run function pool:classes/ballinhand/uk8ball/tp