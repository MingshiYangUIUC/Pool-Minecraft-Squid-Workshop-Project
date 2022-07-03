tag @a[distance=0.001..] remove swPool_wait
tag @a[distance=0.001..] remove swPool_wait_snooker

tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please place a table first.","color":"red"}]
execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请先放置球桌。","color":"red"}]

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_poolplay
tag @a remove swPool_freeball
tag @a remove swPool_freeball_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
kill @e[tag=swPool_poolplay,type=area_effect_cloud]
clear @a carrot_on_a_stick{CustomModelData:99}

scoreboard players set @a swPool_Score 0

#execute as @e[tag=swPool_pooltable] at @s run tag @a[sort=nearest,limit=1] add swPool_near


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

tag @a[tag=swPool_wait_snooker,limit=1] add swPool_poolplay

tag @a[tag=swPool_poolplay,limit=1] add swPool_freeball

give @a[tag=swPool_freeball] carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
scoreboard players set Opponent swPool_Score 0
scoreboard objectives setdisplay sidebar

scoreboard players set Stroke swPool_hidScore 0

tag @e[tag=swPool_pooltable] remove swPool_dialogue
tag @e[tag=swPool_pooltable] remove swPool_sidebar
execute if data storage minecraft:swpool {displayscore:'dialogue'} run tag @e[tag=swPool_pooltable] add swPool_dialogue
execute if data storage minecraft:swpool {displayscore:'sidebar'} run scoreboard objectives setdisplay sidebar swPool_Score
execute if data storage minecraft:swpool {displayscore:'sidebar'} run tag @e[tag=swPool_pooltable] add swPool_sidebar

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.01..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.01..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/snooker/balls

tag @a remove swPool_wait
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec