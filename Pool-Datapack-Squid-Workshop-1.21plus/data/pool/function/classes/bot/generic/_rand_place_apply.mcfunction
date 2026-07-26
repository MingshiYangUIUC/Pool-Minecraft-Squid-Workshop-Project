scoreboard players operation #cdx swMath_V += TABLE swPool_posx
scoreboard players operation #cdz swMath_V += TABLE swPool_posz

tellraw @a[tag=swPool_debug] [{"text":"nt, "},{"score":{"objective":"swMath_V","name":"#nt"}}]
tellraw @a[tag=swPool_debug] [{"text":"cdx, "},{"score":{"objective":"swMath_V","name":"#cdx"}}]
tellraw @a[tag=swPool_debug] [{"text":"cdz, "},{"score":{"objective":"swMath_V","name":"#cdz"}}]

execute store result entity @e[tag=swPool_rhp1,limit=1] Pos[0] double 0.0001 run scoreboard players get #cdx swMath_V
execute store result entity @e[tag=swPool_rhp1,limit=1] Pos[2] double 0.0001 run scoreboard players get #cdz swMath_V

# if place too close to another ball, try again from beginning
#execute if score #nt swMath_V matches ..99 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.25] run function pool:classes/bot/generic/_rand_place

execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1901..2000 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.40] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1801..1900 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.38] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1701..1800 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.36] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1601..1700 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.34] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1501..1600 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.32] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1401..1500 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.30] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1301..1400 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.28] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1201..1300 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.26] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1101..1200 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.24] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1001..1100 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.22] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 901..1000 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.20] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 801..900 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.18] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 701..800 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.16] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 601..700 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.14] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 501..600 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.12] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 401..500 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.10] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 301..400 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.08] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 201..300 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.06] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 101..200 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.04] run function pool:classes/bot/generic/_rand_place
execute if score #nt swMath_V matches ..99 if score C_r swPool_C matches 1..100 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.02] run function pool:classes/bot/generic/_rand_place

scoreboard players reset #rand_place_success swMath_V
