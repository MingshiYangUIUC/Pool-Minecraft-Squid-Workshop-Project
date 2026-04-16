function pool:classes/lobby/terminate_helper

tag @e[type=item_display,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=item_display,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please place a table first.","color":"red"}]
execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请先放置球桌。","color":"red"}]

execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/uk8ball/balls

tag @a[tag=swPool_wait_uk8ball,limit=1,sort=random] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cue Ball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cue Ball\""]

tag @e[tag=swPool_pooltable] add swPool_start

tag @a[limit=1,sort=random,tag=swPool_wait_uk8ball] add swPool_poolplay
execute if entity @e[tag=swPool_pooltable] unless entity @a[tag=!swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"Not enough players, you can only play single player game!","color":"red"}]
execute if entity @e[tag=swPool_pooltable] unless entity @a[tag=!swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"没有足够的玩家数量，只能进行单人游戏！","color":"red"}]

execute if entity @a[tag=!swPool_poolplay] run tag @a[limit=1,tag=swPool_wait_uk8ball,tag=!swPool_poolplay] add swPool_poolplay
scoreboard players set @a[tag=swPool_poolplay] swPool_Score 0
#scoreboard objectives setdisplay sidebar swPool_Score

scoreboard players set #breakshot swPool_v 1
scoreboard players set Stroke swPool_hidScore 0

scoreboard players set Pocketed_Total swPool_hidScore 0
scoreboard players set Pocketed_Turn swPool_hidScore 0

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.001..] run tag @e[type=item_display,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.001..] run tag @e[type=item_display,tag=swPool_pooltable,limit=1] add swPool_singleplayer


execute unless entity @a[tag=swPool_poolplay] run tellraw @a[tag=swPool_EN] [{"text":"[DUO UK 8 Ball]: Game initialization failed! Please join again from lobby.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tellraw @a[tag=swPool_CN] [{"text":"[双人 英式八球]: 游戏初始化失败！请从大厅重新加入。","color":"red"}]

tag @a remove swPool_wait
tag @a remove swPool_wait_9ball
tag @a remove swPool_wait_cn8ball
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec


tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", place the cue ball and break."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", 请放置白球后开球。"}]
#tellraw @a[tag=swPool_spec] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]