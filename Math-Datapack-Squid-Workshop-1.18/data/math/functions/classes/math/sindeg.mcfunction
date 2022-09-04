# input is sinin swMath_V
# out is sinout swMath_V

scoreboard players set C_1800000 swMath_C 1800000
scoreboard players set C_3600000 swMath_C 3600000

#scoreboard players operation sinin swMath_V = @s swMath_V

scoreboard players operation sinin swMath_V %= C_3600000 swMath_C

execute if score sinin swMath_V matches ..1800000 run scoreboard players set sinscale swMath_V 1
execute if score sinin swMath_V matches 1800000.. run scoreboard players set sinscale swMath_V -1
execute if score sinin swMath_V matches 1800000.. run scoreboard players remove sinin swMath_V 1800000

scoreboard players operation sinin_ swMath_V = sinin swMath_V
scoreboard players operation sinin_ swMath_V /= C_100 swMath_C

scoreboard players set sin_n swMath_V 1800000
scoreboard players operation sin_n swMath_V -= sinin swMath_V

scoreboard players operation sin_d swMath_V = sin_n swMath_V

scoreboard players operation sin_n swMath_V *= C_2 swMath_C
scoreboard players operation sin_n swMath_V *= C_2 swMath_C

scoreboard players operation sin_n swMath_V /= C_100 swMath_C

scoreboard players operation sin_n swMath_V *= sinin_ swMath_V

scoreboard players operation sin_d swMath_V /= C_100 swMath_C
scoreboard players operation sin_d swMath_V *= sinin_ swMath_V
scoreboard players operation sin_d swMath_V *= C_-1 swMath_C



scoreboard players add sin_d swMath_V 405000000

scoreboard players operation sin_d swMath_V /= C_10000 swMath_C

scoreboard players operation sin_n swMath_V /= sin_d swMath_V

scoreboard players operation sin_n swMath_V *= sinscale swMath_V

scoreboard players operation sinout swMath_V = sin_n swMath_V