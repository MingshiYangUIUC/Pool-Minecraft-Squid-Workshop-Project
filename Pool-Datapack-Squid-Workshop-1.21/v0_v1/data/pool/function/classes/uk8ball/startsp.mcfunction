function pool:classes/lobby/terminate_helper

tag @a[distance=0.001..] remove swPool_wait
tag @a[distance=0.001..] remove swPool_wait_uk8ball

tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute unless entity @e[tag=swPool_pooltable] run tellraw @s [{"text":"Please place a table first.","color":"red"}]

execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/uk8ball/balls

execute as @e[tag=swPool_pooltable] at @s run tag @a[tag=swPool_wait_uk8ball,limit=1] add swPool_poolplay
tag @a[tag=swPool_poolplay,limit=1] add swPool_ballinhand

execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cueball\""}}

tag @e[tag=swPool_pooltable] add swPool_start

scoreboard players set #breakshot swPool_v 1
scoreboard players set Stroke swPool_hidScore 0

scoreboard players set Pocketed_Total swPool_hidScore 0
scoreboard players set Pocketed_Turn swPool_hidScore 0

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", place the cue ball and target any except black."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", 请放置白球后开球。"}]

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]


tag @a remove swPool_wait
tag @a remove swPool_wait_9ball
tag @a remove swPool_wait_cn8ball
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec