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

clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_cueball"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_red"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_yellow"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_green"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_brown"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_blue"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_pink"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_black"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_01"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_02"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_03"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_04"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_05"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_06"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_07"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_08"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_09"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_10"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_11"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_12"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_13"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_14"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_15"]

scoreboard players set @a swPool_Score 0

tag @e[tag=swPool_pooltable] remove swPool_cn8ballmode
tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] remove swPool_practicemode


execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/cn8ball/balls

function pool:classes/cn8ball/randomize_number



tag @a[tag=swPool_wait_cn8ball,limit=1,sort=random] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cueball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cueball\""]

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

tag @a[tag=swPool_poolplay] add swPool_spec

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", place the cue ball and target any except black."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_ballinhand]"},{"text":", 请放置白球后开球。"}]

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]


tag @a remove swPool_wait
tag @a remove swPool_wait_cn8ball
tag @a remove swPool_wait_uk8ball
tag @a remove swPool_wait_snooker

# game state for cn8ball
tag @e[tag=swPool_pooltable] add swPool_cn8ball_breaking
tag @e[tag=swPool_pooltable] add swPool_cn8ball_open