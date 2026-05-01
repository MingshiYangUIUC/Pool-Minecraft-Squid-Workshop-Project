execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_1205

execute unless data storage minecraft:swpool unloaded as @a[tag=!swPool_CN,tag=!swPool_EN,tag=!swPool_welcomed] run function pool:classes/main/welcome_newplayer

scoreboard players enable @a swPool__trigger
execute as @a[scores={swPool__trigger=1..}] at @s run function pool:classes/main/trigger

scoreboard players enable @a swPool_C_table_cloth_color_trigger
execute as @a[scores={swPool_C_table_cloth_color_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_table_cloth_color

scoreboard players enable @a swPool_cueball_deflection_trigger
execute as @a[scores={swPool_cueball_deflection_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_cueball_deflection

scoreboard players enable @a swPool_C_table_rim_type_trigger
execute as @a[scores={swPool_C_table_rim_type_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_table_rim_type

scoreboard players enable @a swPool_C_nn_complexity_trigger
execute as @a[scores={swPool_C_nn_complexity_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_nn_complexity

scoreboard players enable @a swPool_breakpower_trigger
execute as @a[scores={swPool_breakpower_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_breakpower

scoreboard players enable @a swPool_sticktype_trigger
execute as @a[scores={swPool_sticktype_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_sticktype

scoreboard players enable @a swPool_C_tp_dur_trigger
execute as @a[scores={swPool_C_tp_dur_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_tp_dur

scoreboard players enable @a swPool_C_mus_trigger
execute as @a[scores={swPool_C_mus_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_mus

scoreboard players enable @a swPool_sizez_trigger
execute as @a[scores={swPool_sizez_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_sizez

scoreboard players enable @a swPool_Score_trigger
execute as @a[scores={swPool_Score_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_score

scoreboard players enable @a swPool_C_mui_trigger
execute as @a[scores={swPool_C_mui_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_mui

scoreboard players enable @a swPool_pitch_trigger
execute as @a[scores={swPool_pitch_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_pitch

scoreboard players enable @a swPool_C_mur_trigger
execute as @a[scores={swPool_C_mur_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_mur

scoreboard players enable @a swPool_sizex_trigger
execute as @a[scores={swPool_sizex_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_sizex

scoreboard players enable @a swPool_C_muk_trigger
execute as @a[scores={swPool_C_muk_trigger=1..}] at @s run function pool:classes/main/triggers/swpool_c_muk
