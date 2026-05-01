# divide #vIn by 10 and may round up
scoreboard players operation #remn swMath_V = #vIn swMath_V
scoreboard players operation #remn swMath_V %= #C_10 swMath_C
scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
execute if score #remn swMath_V matches 5.. run scoreboard players add #vIn swMath_V 1
scoreboard players operation #vOut swMath_V = #vIn swMath_V