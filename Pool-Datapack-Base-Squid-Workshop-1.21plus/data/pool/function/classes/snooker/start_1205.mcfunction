function pool:classes/lobby/terminate_helper

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_multiplayer
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_singleplayer

execute unless entity 000c2be1-0001-414d-0000-000000000000 run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please place a table first.","color":"red"}]
execute unless entity 000c2be1-0001-414d-0000-000000000000 run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请先放置球桌。","color":"red"}]

scoreboard players set @a swPool_Score 0

tag 000c2be1-0001-414d-0000-000000000000 add swPool_start

tag @a[tag=swPool_wait_snooker,limit=1,sort=random] add swPool_poolplay

#execute if entity 000c2be1-0001-414d-0000-000000000000 unless entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Not enough players, switched to singleplayer.","color":"red"}]
#execute if entity 000c2be1-0001-414d-0000-000000000000 unless entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"没有足够的玩家，切换至单人模式。","color":"red"}]
execute unless entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run scoreboard players set Opponent swPool_Score 0
execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run tag @a[tag=swPool_wait_snooker,limit=1,sort=random,tag=!swPool_poolplay] add swPool_poolplay
scoreboard objectives setdisplay sidebar

scoreboard players set Stroke swPool_hidScore 0

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_dialogue
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_sidebar
execute if data storage minecraft:swpool {displayscore:'dialogue'} run tag 000c2be1-0001-414d-0000-000000000000 add swPool_dialogue
execute if data storage minecraft:swpool {displayscore:'sidebar'} run scoreboard objectives setdisplay sidebar swPool_Score
execute if data storage minecraft:swpool {displayscore:'sidebar'} run tag 000c2be1-0001-414d-0000-000000000000 add swPool_sidebar

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.01..] run tag 000c2be1-0001-414d-0000-000000000000 add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.01..] run tag 000c2be1-0001-414d-0000-000000000000 add swPool_singleplayer

tag @a[tag=swPool_poolplay,limit=1,sort=random] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cue Ball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cue Ball\""]

execute as 000c2be1-0001-414d-0000-000000000000 at @s positioned ~ ~ ~ run function pool:classes/snooker/balls

execute unless entity @a[tag=swPool_poolplay] run tellraw @a[tag=swPool_EN] [{"text":"[DUO Snooker]: Game initialization failed! Please join again from lobby.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tellraw @a[tag=swPool_CN] [{"text":"[双人 斯诺克]: 游戏初始化失败！请从大厅重新加入。","color":"red"}]

tag @a remove swPool_wait
tag @a remove swPool_wait_9ball
tag @a remove swPool_wait_cn8ball
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec

scoreboard players set #breakshot swPool_v 0
scoreboard players set swPool_gameon swMath_V 1
