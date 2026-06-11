execute unless data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_11
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/main/run_tick_1205

execute unless data storage minecraft:swpool unloaded as @a[tag=!swPool_CN,tag=!swPool_EN,tag=!swPool_welcomed] run function pool:classes/main/welcome_newplayer

execute as @a[scores={swPool_chst=1..}] at @s run function pool:classes/table/helpers/chest_detect

scoreboard players enable @a swPool__trigger
execute as @a[scores={swPool__trigger=1..}] at @s run function pool:classes/main/trigger

scoreboard players enable @a swPool_pitch_tr
execute as @a[scores={swPool_pitch_tr=1..}] at @s run function pool:classes/main/triggers/swpool_pitch

scoreboard players enable @a swPool_sizex_tr
execute as @a[scores={swPool_sizex_tr=1..}] at @s run function pool:classes/main/triggers/swpool_sizex

scoreboard players enable @a swPool_sizez_tr
execute as @a[scores={swPool_sizez_tr=1..}] at @s run function pool:classes/main/triggers/swpool_sizez

scoreboard players enable @a swPool_stkt_tr
execute as @a[scores={swPool_stkt_tr=1..}] at @s run function pool:classes/main/triggers/swpool_stkt

scoreboard players enable @a swPool_brkp_tr
execute as @a[scores={swPool_brkp_tr=1..}] at @s run function pool:classes/main/triggers/swpool_brkp

scoreboard players enable @a swPool_cbld_tr
execute as @a[scores={swPool_cbld_tr=1..}] at @s run function pool:classes/main/triggers/swpool_cbld

scoreboard players enable @a swPool_C_muk_tr
execute as @a[scores={swPool_C_muk_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_muk

scoreboard players enable @a swPool_C_mur_tr
execute as @a[scores={swPool_C_mur_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_mur

scoreboard players enable @a swPool_C_mus_tr
execute as @a[scores={swPool_C_mus_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_mus

scoreboard players enable @a swPool_C_mui_tr
execute as @a[scores={swPool_C_mui_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_mui

scoreboard players enable @a swPool_C_trt_tr
execute as @a[scores={swPool_C_trt_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_trt

scoreboard players enable @a swPool_C_tcc_tr
execute as @a[scores={swPool_C_tcc_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_tcc

scoreboard players enable @a swPool_C_nn_tr
execute as @a[scores={swPool_C_nn_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_nn

scoreboard players enable @a swPool_C_tpdr_tr
execute as @a[scores={swPool_C_tpdr_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_tpdr

scoreboard players enable @a swPool_C_r_tr
execute as @a[scores={swPool_C_r_tr=1..}] at @s run function pool:classes/main/triggers/swpool_c_r

scoreboard players enable @a swPool_Score_tr
execute as @a[scores={swPool_Score_tr=1..}] at @s run function pool:classes/main/triggers/swpool_score
