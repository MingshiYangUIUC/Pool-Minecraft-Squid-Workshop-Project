scoreboard players operation #cdx swMath_V += TABLE swPool_posx
scoreboard players operation #cdz swMath_V += TABLE swPool_posz

tellraw @a[tag=swPool_debug] [{"text":"nt, "},{"score":{"objective":"swMath_V","name":"#nt"}}]
tellraw @a[tag=swPool_debug] [{"text":"cdx, "},{"score":{"objective":"swMath_V","name":"#cdx"}}]
tellraw @a[tag=swPool_debug] [{"text":"cdz, "},{"score":{"objective":"swMath_V","name":"#cdz"}}]

execute store result entity @e[tag=swPool_rhp1,limit=1] Pos[0] double 0.0001 run scoreboard players get #cdx swMath_V
execute store result entity @e[tag=swPool_rhp1,limit=1] Pos[2] double 0.0001 run scoreboard players get #cdz swMath_V

# if place too close to another ball, try again from beginning
execute if score #nt swMath_V matches ..99 at @e[tag=swPool_rhp1,limit=1] if entity @e[tag=swPool_pool,distance=0.001..0.25] run function pool:classes/bot/generic/_rand_place
scoreboard players reset #rand_place_success swMath_V
