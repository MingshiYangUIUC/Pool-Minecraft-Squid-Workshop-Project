scoreboard players add #nt swMath_V 1

function math:classes/core/random/randint_base
scoreboard players operation #cdx swMath_V = TABLE swPool_sizex
scoreboard players operation #cdx swMath_V *= #C_2 swMath_C
scoreboard players add #cdx swMath_V 1
scoreboard players operation #vOut swMath_V %= #cdx swMath_V
scoreboard players operation #vOut swMath_V -= TABLE swPool_sizex
scoreboard players operation #cdx swMath_V = #vOut swMath_V

function math:classes/core/random/randint_base
scoreboard players operation #cdz swMath_V = TABLE swPool_sizez
scoreboard players operation #cdz swMath_V *= #C_2 swMath_C
scoreboard players add #cdz swMath_V 1
scoreboard players operation #vOut swMath_V %= #cdz swMath_V
scoreboard players operation #vOut swMath_V -= TABLE swPool_sizez
scoreboard players operation #cdz swMath_V = #vOut swMath_V

# change x/z if need to place cue ball inside kitchen
# 8 ball: stroke = 0 or 1
# 9 ball: stroke = 0
scoreboard players set #inheadstring swMath_V 0
execute if score swPool_cn8ballmode swMath_V matches 1 if score Stroke swPool_hidScore matches ..1 run scoreboard players set #inheadstring swMath_V 1
execute if score swPool_9ballmode swMath_V matches 1 if score Stroke swPool_hidScore matches 0 run scoreboard players set #inheadstring swMath_V 1

# get x/2 and z/2 (in kitchen means that long side displacement > 1/2 of total allowed table size)
scoreboard players operation #halfx swMath_V = TABLE swPool_sizex
scoreboard players operation #halfz swMath_V = TABLE swPool_sizez
scoreboard players operation #halfx swMath_V /= #C_2 swMath_C
scoreboard players operation #halfz swMath_V /= #C_2 swMath_C


# 1 = candidate is valid, 0 = retry needed
scoreboard players set #rand_place_success swMath_V 1

execute if score #inheadstring swMath_V matches 1 run scoreboard players set #rand_place_success swMath_V 0

execute if score #inheadstring swMath_V matches 1 if score TABLE swPool_sizex >= TABLE swPool_sizez if score #cdx swMath_V >= #halfx swMath_V run scoreboard players set #rand_place_success swMath_V 1

execute if score #inheadstring swMath_V matches 1 if score TABLE swPool_sizex < TABLE swPool_sizez if score #cdz swMath_V >= #halfz swMath_V run scoreboard players set #rand_place_success swMath_V 1

execute if score #rand_place_success swMath_V matches 1 run function pool:classes/bot/generic/_rand_place_apply
execute if score #nt swMath_V matches ..99 if score #rand_place_success swMath_V matches 0 run function pool:classes/bot/generic/_rand_place

execute if score #nt swMath_V matches 20 run tellraw @a[tag=swPool_debug] [{"text":"The table is too crowded, hard to find a place to place the cue ball!"}]
