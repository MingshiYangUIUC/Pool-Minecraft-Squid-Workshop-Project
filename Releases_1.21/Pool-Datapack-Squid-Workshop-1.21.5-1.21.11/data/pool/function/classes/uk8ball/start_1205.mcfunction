function pool:classes/lobby/terminate_helper

tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute unless entity @e[tag=swPool_pooltable] run tellraw @s [{"text":"Please place a table first.","color":"red"}]

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_poolplay
tag @a remove swPool_ballinhand
tag @a remove swPool_ballinhand_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_cueball"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean"]
execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/uk8ball/balls


tag @a[tag=swPool_wait_uk8ball,limit=1,sort=random] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cueball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cueball\""]

tag @e[tag=swPool_pooltable] add swPool_start
tag @e[tag=swPool_pooltable] remove swPool_fouled
tag @e[tag=swPool_pooltable] remove swPool_pocketing
tag @e[tag=swPool_pooltable] remove swPool_foulcolor
tag @e[tag=swPool_pooltable] remove swPool_foulred
tag @e[tag=swPool_pooltable] remove swPool_hitrail
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


tag @a[limit=1,sort=random,tag=swPool_wait_uk8ball] add swPool_poolplay
execute if entity @e[tag=swPool_pooltable] unless entity @a[tag=!swPool_poolplay] run tellraw @s [{"text":"Not enough players, you pretend to be two players!","color":"red"}]

execute if entity @a[tag=!swPool_poolplay] run tag @a[limit=1,tag=swPool_wait_uk8ball,tag=!swPool_poolplay] add swPool_poolplay
scoreboard players set @a[tag=swPool_poolplay] swPool_Score 0
#scoreboard objectives setdisplay sidebar swPool_Score

scoreboard players set #breakshot swPool_v 1
scoreboard players set Stroke swPool_hidScore 0

scoreboard players set Pocketed_Total swPool_hidScore 0
scoreboard players set Pocketed_Turn swPool_hidScore 0

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.001..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.001..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer


execute unless entity @a[tag=swPool_poolplay] run tellraw @a [{"text":"[MP UK 8 Ball]: Game initialization failed! Please join again from lobby.","color":"red"}]

tag @a remove swPool_wait
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec


tellraw @a[tag=swPool_spec] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", place the cue ball and target any except black."}]
#tellraw @a[tag=swPool_spec] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]