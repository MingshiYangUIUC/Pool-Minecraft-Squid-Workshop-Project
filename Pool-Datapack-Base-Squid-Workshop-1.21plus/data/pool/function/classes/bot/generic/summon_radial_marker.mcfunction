execute if data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/116/summon_aim_obj_blocked
execute unless data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/117/summon_aim_obj_blocked
execute at @s run tp @s ~ ~ ~ ~60 ~

execute if data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/116/summon_aim_obj_blocked
execute unless data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/117/summon_aim_obj_blocked
execute at @s run tp @s ~ ~ ~ ~60 ~

execute if data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/116/summon_aim_obj_blocked
execute unless data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/117/summon_aim_obj_blocked
execute at @s run tp @s ~ ~ ~ ~60 ~

execute if data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/116/summon_aim_obj_blocked
execute unless data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/117/summon_aim_obj_blocked
execute at @s run tp @s ~ ~ ~ ~60 ~

execute if data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/116/summon_aim_obj_blocked
execute unless data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/117/summon_aim_obj_blocked
execute at @s run tp @s ~ ~ ~ ~60 ~

execute if data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/116/summon_aim_obj_blocked
execute unless data storage minecraft:swpool {version:[116]} at @s positioned ^ ^ ^1 run function pool:classes/bot/117/summon_aim_obj_blocked

scoreboard players add #topk swMath_V 6

scoreboard players set @e[tag=swPool_aim_obj_blocked] swPool_calcScore -1
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -2
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -3
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -4
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -5
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -6
scoreboard players set @e[tag=swPool_aim_obj_blocked,limit=1,scores={swPool_calcScore=-1}] swPool_calcScore -7

