execute if entity @s[tag=swPool_9ballmode] at @s run function pool:classes/9ball/place
execute if entity @s[tag=swPool_cn8ballmode] at @s run function pool:classes/cn8ball/place
execute if entity @s[tag=swPool_snookermode] at @s run function pool:classes/snooker/place
execute if entity @s[tag=swPool_uk8ballmode] at @s run function pool:classes/uk8ball/place
execute if entity @s[tag=swPool_practicemode] at @s run function pool:classes/practice/place
execute as @e[tag=swPool_pool,type=item_display] store result entity @s teleport_duration int 1 run scoreboard players get C_tp_dur swPool_C
