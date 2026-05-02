# input is #vIn swMath_V

execute if score #vIn swMath_V matches ..-1 run scoreboard players set #vIn swMath_V 0
scoreboard players operation #SQRT0 swMath_V = #vIn swMath_V
scoreboard players set #SQRT1 swMath_V 46340
execute if score #SQRT0 swMath_V matches ..255 run scoreboard players set #SQRT1 swMath_V 16
execute if score #SQRT0 swMath_V matches 256..4095 run scoreboard players set #SQRT1 swMath_V 64
execute if score #SQRT0 swMath_V matches 4096..65535 run scoreboard players set #SQRT1 swMath_V 256
execute if score #SQRT0 swMath_V matches 65536..1048575 run scoreboard players set #SQRT1 swMath_V 1024
execute if score #SQRT0 swMath_V matches 1048576..16777215 run scoreboard players set #SQRT1 swMath_V 4096
execute if score #SQRT0 swMath_V matches 16777216..268435455 run scoreboard players set #SQRT1 swMath_V 16384
execute if score #SQRT0 swMath_V matches 268435456..1073741823 run scoreboard players set #SQRT1 swMath_V 32768
scoreboard players set #SQRT2 swMath_V 0
#scoreboard players set #SQRT3 swMath_C 2
execute unless score #SQRT1 swMath_V = #SQRT2 swMath_V run function math:classes/supp/sqrt/sqrt_operation

#tellraw @a[tag=swMath_debug] [{"text":"In: "},{"score":{"name": "#vIn","objective": "swMath_V"}}]
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
