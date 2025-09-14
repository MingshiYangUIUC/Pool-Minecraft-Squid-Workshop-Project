function pool:classes/lobby/terminate_helper

tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please place a table first.","color":"red"}]
execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请先放置球桌。","color":"red"}]

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_poolplay
tag @a remove swPool_ballinhand
tag @a remove swPool_ballinhand_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
kill @e[tag=swPool_poolplay,type=area_effect_cloud]
clear @a carrot_on_a_stick[minecraft:custom_model_data=99]
clear @a carrot_on_a_stick[minecraft:custom_model_data=100]

#execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/uk8ball/balls
scoreboard players set @a swPool_Score 0


tag @e[tag=swPool_pooltable] add swPool_start
tag @e[tag=swPool_pooltable] remove swPool_fouled
tag @e[tag=swPool_pooltable] remove swPool_pocketing
tag @e[tag=swPool_pooltable] remove swPool_foulcolor
tag @e[tag=swPool_pooltable] remove swPool_foulred
tag @e[tag=swPool_pooltable] remove swPool_awarded
tag @e[tag=swPool_pooltable] remove swPool_endaward
tag @e[tag=swPool_pooltable] remove swPool_endgame
tag @a remove swPool_hitcue
tag @a remove swPool_aimred
tag @a remove swPool_aimylw
tag @a remove swPool_aimblk
tag @a remove swPool_redrec
tag @a remove swPool_ylwrec
tag @a remove swPool_blkrec
tag @e[tag=swPool_pooltable] remove swPool_awdrec
tag @e[tag=swPool_pooltable] remove swPool_edawdrec


tag @a[tag=swPool_wait_snooker,limit=1,sort=random] add swPool_poolplay

#execute if entity @e[tag=swPool_pooltable] unless entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Not enough players, switched to singleplayer.","color":"red"}]
#execute if entity @e[tag=swPool_pooltable] unless entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"没有足够的玩家，切换至单人模式。","color":"red"}]
execute unless entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run scoreboard players set Opponent swPool_Score 0
execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_poolplay] run tag @a[tag=swPool_wait_snooker,limit=1,sort=random,tag=!swPool_poolplay] add swPool_poolplay
scoreboard objectives setdisplay sidebar

scoreboard players set Stroke swPool_hidScore 0

tag @e[tag=swPool_pooltable] remove swPool_dialogue
tag @e[tag=swPool_pooltable] remove swPool_sidebar
execute if data storage minecraft:swpool {displayscore:'dialogue'} run tag @e[tag=swPool_pooltable] add swPool_dialogue
execute if data storage minecraft:swpool {displayscore:'sidebar'} run scoreboard objectives setdisplay sidebar swPool_Score
execute if data storage minecraft:swpool {displayscore:'sidebar'} run tag @e[tag=swPool_pooltable] add swPool_sidebar

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.01..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.01..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

tag @a[tag=swPool_poolplay,limit=1,sort=random] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=99,minecraft:custom_name="\"Cueball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=100,minecraft:custom_name="\"Cueball\""]

execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/snooker/balls

execute unless entity @a[tag=swPool_poolplay] run tellraw @a [{"text":"[MP Snooker]: Game initialization failed! Please join again from lobby.","color":"red"}]

tag @a remove swPool_wait
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec

scoreboard players set #breakshot swPool_v 0
