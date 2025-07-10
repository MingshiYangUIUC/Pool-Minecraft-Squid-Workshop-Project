execute as @e[tag=swPool_pooltable] at @s run function pool:classes/practice/boundary

execute unless entity @e[tag=swPool_pooltable] run tellraw @s [{"text":"Please place a table first.","color":"red"}]

#kill @e[tag=swPool_pool]
#kill @e[tag=swPool_pin]
#kill @e[tag=swPool_temppin]
#tag @a remove swPool_poolplay
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

tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] add swPool_practicemode



execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_ballinhand
execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_ballinhand_obj
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cueball\""]
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cueball\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_red",minecraft:custom_name="\"Red\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_yellow",minecraft:custom_name="\"Yellow\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_green",minecraft:custom_name="\"Green\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_brown",minecraft:custom_name="\"Brown\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_blue",minecraft:custom_name="\"Blue\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_pink",minecraft:custom_name="\"Pink\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_black",minecraft:custom_name="\"Black\""]

execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_01",minecraft:custom_name="\"01\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_02",minecraft:custom_name="\"02\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_03",minecraft:custom_name="\"03\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_04",minecraft:custom_name="\"04\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_05",minecraft:custom_name="\"05\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_06",minecraft:custom_name="\"06\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_07",minecraft:custom_name="\"07\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_08",minecraft:custom_name="\"08\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_09",minecraft:custom_name="\"09\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_10",minecraft:custom_name="\"10\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_11",minecraft:custom_name="\"11\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_12",minecraft:custom_name="\"12\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_13",minecraft:custom_name="\"13\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_14",minecraft:custom_name="\"14\""]
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_ball_15",minecraft:custom_name="\"15\""]

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

#execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_poolplay
tag @s add swPool_spec
execute as @e[tag=swPool_pooltable] at @s run function pool:classes/cue/reset
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Switched to Practice Mode."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"切换至练习模式。"}]
tag @a[tag=swPool_spec] add swPool_poolplay