# input is cosin swMath_V
# out is cosout swMath_V

scoreboard players set C_1800000 swMath_C 1800000
scoreboard players set C_3600000 swMath_C 3600000

#scoreboard players operation cosin swMath_V = @s swMath_V
scoreboard players add cosin swMath_V 900000
scoreboard players operation cosin swMath_V %= C_3600000 swMath_C

execute if score cosin swMath_V matches ..1800000 run scoreboard players set cosscale swMath_V 1
execute if score cosin swMath_V matches 1800000.. run scoreboard players set cosscale swMath_V -1
execute if score cosin swMath_V matches 1800000.. run scoreboard players remove cosin swMath_V 1800000

scoreboard players operation cosin_ swMath_V = cosin swMath_V
scoreboard players operation cosin_ swMath_V /= C_100 swMath_C

scoreboard players set cos_n swMath_V 1800000
scoreboard players operation cos_n swMath_V -= cosin swMath_V

scoreboard players operation cos_d swMath_V = cos_n swMath_V

scoreboard players operation cos_n swMath_V *= C_2 swMath_C
scoreboard players operation cos_n swMath_V *= C_2 swMath_C

scoreboard players operation cos_n swMath_V /= C_100 swMath_C

scoreboard players operation cos_n swMath_V *= cosin_ swMath_V

scoreboard players operation cos_d swMath_V /= C_100 swMath_C
scoreboard players operation cos_d swMath_V *= cosin_ swMath_V
scoreboard players operation cos_d swMath_V *= C_-1 swMath_C



scoreboard players add cos_d swMath_V 405000000

scoreboard players operation cos_d swMath_V /= C_10000 swMath_C

scoreboard players operation cos_n swMath_V /= cos_d swMath_V

scoreboard players operation cos_n swMath_V *= cosscale swMath_V

scoreboard players operation cosout swMath_V = cos_n swMath_V