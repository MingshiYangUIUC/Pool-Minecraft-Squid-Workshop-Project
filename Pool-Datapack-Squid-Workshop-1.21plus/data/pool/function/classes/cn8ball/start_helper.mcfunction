tag @s add swPool_startmpcn8ball
execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_EN] [{"text":"A game is already active, please terminate it before trying again.","color":"red"}]
execute if entity @a[tag=swPool_poolplay] run tellraw @s[tag=swPool_CN] [{"text":"请先结束正在运行的游戏。","color":"red"}]
#,{"text":" ","color":"white"},{"text":"If you are sure: ","color":"white"},{"text":"<Start Anyway>","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4110604"}}]
execute unless entity @a[tag=swPool_poolplay] unless entity @a[tag=swPool_wait_cn8ball] run tellraw @s[tag=swPool_EN] [{"text":"Please join again from lobby.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] unless entity @a[tag=swPool_wait_cn8ball] run tellraw @s[tag=swPool_CN] [{"text":"请从大厅重新加入游戏。","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_cn8ball] as @a[tag=swPool_wait_cn8ball,limit=1,sort=random] at @s unless entity @a[tag=swPool_wait_cn8ball,distance=0.001..] run tellraw @a[tag=swPool_startmpcn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Not enough players in queue.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_cn8ball] as @a[tag=swPool_wait_cn8ball,limit=1,sort=random] at @s unless entity @a[tag=swPool_wait_cn8ball,distance=0.001..] run tellraw @a[tag=swPool_startmpcn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"队列人数不足。","color":"red"}]
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_cn8ball] as @a[tag=swPool_wait_cn8ball,limit=1,sort=random] at @s if entity @a[tag=swPool_wait_cn8ball,distance=0.001..] run function pool:classes/cn8ball/start
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_cn8ball] as @a[tag=swPool_wait_cn8ball,limit=1,sort=random] at @s if entity @a[tag=swPool_wait_cn8ball,distance=0.001..] run function pool:classes/cn8ball/start_1205

tag @s remove swPool_startmpcn8ball

execute if score swPool_gameon swMath_V matches 1 run tag 000c2be1-0001-414d-0000-000000000000 add swPool_8ball_aibreak
execute if score swPool_gameon swMath_V matches 1 run scoreboard players set swPool_8ball_aibreak swMath_V 1

execute if score swPool_gameon swMath_V matches 1 as @a[tag=swPool_poolplay,gamemode=!creative] run function app:get/pool/arrow_helper
