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
clear @a carrot_on_a_stick[minecraft:custom_model_data=99]
clear @a carrot_on_a_stick[minecraft:custom_model_data=100]
clear @a carrot_on_a_stick[minecraft:custom_model_data=101]
clear @a carrot_on_a_stick[minecraft:custom_model_data=102]
clear @a carrot_on_a_stick[minecraft:custom_model_data=103]
clear @a carrot_on_a_stick[minecraft:custom_model_data=104]
clear @a carrot_on_a_stick[minecraft:custom_model_data=105]
clear @a carrot_on_a_stick[minecraft:custom_model_data=106]
clear @a carrot_on_a_stick[minecraft:custom_model_data=107]
clear @a carrot_on_a_stick[minecraft:custom_model_data=121]
clear @a carrot_on_a_stick[minecraft:custom_model_data=122]
clear @a carrot_on_a_stick[minecraft:custom_model_data=123]
clear @a carrot_on_a_stick[minecraft:custom_model_data=124]
clear @a carrot_on_a_stick[minecraft:custom_model_data=125]
clear @a carrot_on_a_stick[minecraft:custom_model_data=126]
clear @a carrot_on_a_stick[minecraft:custom_model_data=127]
clear @a carrot_on_a_stick[minecraft:custom_model_data=128]
clear @a carrot_on_a_stick[minecraft:custom_model_data=129]
clear @a carrot_on_a_stick[minecraft:custom_model_data=130]
clear @a carrot_on_a_stick[minecraft:custom_model_data=131]
clear @a carrot_on_a_stick[minecraft:custom_model_data=132]
clear @a carrot_on_a_stick[minecraft:custom_model_data=133]
clear @a carrot_on_a_stick[minecraft:custom_model_data=134]
clear @a carrot_on_a_stick[minecraft:custom_model_data=135]

scoreboard players set @a swPool_Score 0

tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] add swPool_practicemode



execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_ballinhand
execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_ballinhand_obj
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[minecraft:custom_model_data=99,minecraft:custom_name="\"Cueball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[minecraft:custom_model_data=100,minecraft:custom_name="\"Cueball\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=101,minecraft:custom_name="\"Red\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=102,minecraft:custom_name="\"Yellow\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=103,minecraft:custom_name="\"Green\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=104,minecraft:custom_name="\"Brown\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=105,minecraft:custom_name="\"Blue\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=106,minecraft:custom_name="\"Pink\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=107,minecraft:custom_name="\"Black\""]

execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=121,minecraft:custom_name="\"01\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=122,minecraft:custom_name="\"02\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=123,minecraft:custom_name="\"03\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=124,minecraft:custom_name="\"04\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=125,minecraft:custom_name="\"05\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=126,minecraft:custom_name="\"06\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=127,minecraft:custom_name="\"07\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=128,minecraft:custom_name="\"08\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=129,minecraft:custom_name="\"09\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=130,minecraft:custom_name="\"10\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=131,minecraft:custom_name="\"11\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=132,minecraft:custom_name="\"12\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=133,minecraft:custom_name="\"13\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=134,minecraft:custom_name="\"14\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=135,minecraft:custom_name="\"15\""]


tag @a[tag=swPool_near] remove swPool_near
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

execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_poolplay
tag @s add swPool_spec
execute as @e[tag=swPool_pooltable] at @s run function pool:classes/cue/reset
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Practice mode is on! No rules, just have fun."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"练习模式开启。没有规则，请随意摆球击打。"}]