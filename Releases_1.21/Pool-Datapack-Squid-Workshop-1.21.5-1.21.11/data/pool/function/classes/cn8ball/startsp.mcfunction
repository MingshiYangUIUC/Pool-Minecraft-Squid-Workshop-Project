function pool:classes/lobby/terminate_helper

execute as @e[tag=swPool_pooltable] at @s run function pool:classes/practice/boundary

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

clear @a carrot_on_a_stick{CustomModelData:99}
clear @a carrot_on_a_stick{CustomModelData:100}
clear @a carrot_on_a_stick{CustomModelData:101}
clear @a carrot_on_a_stick{CustomModelData:102}
clear @a carrot_on_a_stick{CustomModelData:103}
clear @a carrot_on_a_stick{CustomModelData:104}
clear @a carrot_on_a_stick{CustomModelData:105}
clear @a carrot_on_a_stick{CustomModelData:106}
clear @a carrot_on_a_stick{CustomModelData:107}
clear @a carrot_on_a_stick{CustomModelData:121}
clear @a carrot_on_a_stick{CustomModelData:122}
clear @a carrot_on_a_stick{CustomModelData:123}
clear @a carrot_on_a_stick{CustomModelData:124}
clear @a carrot_on_a_stick{CustomModelData:125}
clear @a carrot_on_a_stick{CustomModelData:126}
clear @a carrot_on_a_stick{CustomModelData:127}
clear @a carrot_on_a_stick{CustomModelData:128}
clear @a carrot_on_a_stick{CustomModelData:129}
clear @a carrot_on_a_stick{CustomModelData:130}
clear @a carrot_on_a_stick{CustomModelData:131}
clear @a carrot_on_a_stick{CustomModelData:132}
clear @a carrot_on_a_stick{CustomModelData:133}
clear @a carrot_on_a_stick{CustomModelData:134}
clear @a carrot_on_a_stick{CustomModelData:135}

scoreboard players set @a swPool_Score 0

tag @e[tag=swPool_pooltable] remove swPool_cn8ballmode
tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] remove swPool_practicemode


execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/cn8ball/balls

function pool:classes/cn8ball/randomize_number



tag @a[tag=swPool_wait_cn8ball,limit=1,sort=random] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cueball\""}}

tag @e[tag=swPool_pooltable] add swPool_start
tag @e[tag=swPool_pooltable] remove swPool_fouled
tag @e[tag=swPool_pooltable] remove swPool_pocketing
tag @e[tag=swPool_pooltable] remove swPool_endgame

tag @e[tag=swPool_pooltable] remove swPool_cn8ball_breaking
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_open
tag @e[tag=swPool_pooltable] remove swPool_pktsolid
tag @e[tag=swPool_pooltable] remove swPool_pktstripe
tag @e[tag=swPool_pooltable] remove swPool_pkt08

tag @a remove swPool_hitcue
tag @a remove swPool_nextturn
tag @a remove swPool_foul

tag @a remove swPool_aimsolid
tag @a remove swPool_aimstripe
tag @a remove swPool_aim08
tag @a remove swPool_solidrec
tag @a remove swPool_striperec
tag @a remove swPool_08rec


tag @a[limit=1,sort=random,tag=swPool_wait_cn8ball] add swPool_poolplay

execute if entity @a[tag=!swPool_poolplay] run tag @a[limit=1,tag=swPool_wait_cn8ball,tag=!swPool_poolplay] add swPool_poolplay
scoreboard players set @a[tag=swPool_poolplay] swPool_Score 0
#scoreboard objectives setdisplay sidebar swPool_Score

scoreboard players set #breakshot swPool_v 1
scoreboard players set Stroke swPool_hidScore 0

scoreboard players set Pocketed_Total swPool_hidScore 0
scoreboard players set Pocketed_Turn swPool_hidScore 0

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.001..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.001..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", place the cue ball and target any except black."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", 请放置白球后开球。"}]

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]


tag @a remove swPool_wait
tag @a remove swPool_wait_cn8ball
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

tag @a[tag=swPool_poolplay] add swPool_spec


# game state for cn8ball
tag @e[tag=swPool_pooltable] add swPool_cn8ball_breaking
tag @e[tag=swPool_pooltable] add swPool_cn8ball_open