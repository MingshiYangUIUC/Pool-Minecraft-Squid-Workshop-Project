# iteratively scale input and change output magnitude

scoreboard players operation #vOut_Mag swMath_V *= #C_100 swMath_C
scoreboard players operation #remn swMath_V = #vIn swMath_V
scoreboard players operation #remn swMath_V %= #C_10 swMath_C
scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
execute if score #remn swMath_V matches 5.. run scoreboard players add #vIn swMath_V 1
execute if score #vIn swMath_V matches 46341.. run function math:classes/supp/square/div10_round