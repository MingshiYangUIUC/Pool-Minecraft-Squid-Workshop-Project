scoreboard players operation x swMath_V *= C_100 swMath_C
scoreboard players operation kk swMath_V = x swMath_V
scoreboard players remove kk swMath_V 1570796
execute if score kk swMath_V matches ..-1 run scoreboard players operation kk swMath_V *= C_-1 swMath_C
scoreboard players operation k2 swMath_V = kk swMath_V
scoreboard players operation k2 swMath_V *= k2 swMath_V
scoreboard players operation k2 swMath_V /= C_10000 swMath_C
scoreboard players remove k2 swMath_V 200000000
scoreboard players operation k2 swMath_V /= C_2 swMath_C
scoreboard players operation k2 swMath_V /= kk swMath_V
scoreboard players operation k2 swMath_V *= C_100 swMath_C
scoreboard players set y swMath_V 0
scoreboard players operation y swMath_V -= k2 swMath_V