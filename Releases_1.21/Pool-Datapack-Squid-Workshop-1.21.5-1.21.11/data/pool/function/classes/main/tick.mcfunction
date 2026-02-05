# record position once
execute as @e[tag=swPool_pool,type=item_display] at @s run function pool:classes/master/read_tmppos
execute as @e[tag=swPool_fake,type=item_display] at @s run function pool:classes/master/read_tmppos

execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/tick_1205

scoreboard players enable @a swPool_trigger
execute as @a[scores={swPool_trigger=1..}] at @s run function pool:classes/main/trigger
