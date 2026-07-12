data merge storage minecraft:swpool {whitelist:1}
execute if entity @s[tag=!swPool_whitelisted] run tag @s add swPool_whitelisted

scoreboard players reset @a swPool_C_muk_tr
scoreboard players reset @a swPool_C_mur_tr
scoreboard players reset @a swPool_C_mus_tr
scoreboard players reset @a swPool_C_mui_tr
scoreboard players reset @a swPool_C_rei_tr
scoreboard players reset @a swPool_C_trt_tr
scoreboard players reset @a swPool_C_tcc_tr
scoreboard players reset @a swPool_C_nn_tr
scoreboard players reset @a swPool_C_tpdr_tr
scoreboard players reset @a swPool_C_r_tr

scoreboard players reset @a swPool_C_ne_tr
scoreboard players reset @a swPool_C_te_tr
scoreboard players reset @a swPool_C_as_tr

tellraw @s[tag=swPool_EN] [{"text":"➇ Enabled Whitelist.","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 白名单已开启。","color":"white"}]