#execute as @e[tag=swPool_cloth] at @s run setblock ~ ~-1 ~ air
execute as @e[tag=swPool_cloth] at @s run setblock ~ ~ ~ air

execute as @e[tag=swPool_pxside] at @s run setblock ~1 ~ ~ air
execute as @e[tag=swPool_pzside] at @s run setblock ~ ~ ~1 air
execute as @e[tag=swPool_nxside] at @s run setblock ~-1 ~ ~ air
execute as @e[tag=swPool_nzside] at @s run setblock ~ ~ ~-1 air

kill @e[tag=swPool_fake]
kill @e[tag=swPool_cloth]
kill @e[tag=swPool_pooltable]
kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_poolplay,type=area_effect_cloud]
kill @e[tag=swPool_helper,type=area_effect_cloud]
kill @e[tag=swPool_temppin]
scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
tag @a remove swPool_poolplay
scoreboard players reset Opponent swPool_Score
scoreboard objectives setdisplay sidebar

scoreboard players reset TABLE swPool_dl
scoreboard players reset TABLE swPool_ds