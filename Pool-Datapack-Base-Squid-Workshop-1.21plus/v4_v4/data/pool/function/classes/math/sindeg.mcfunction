# input is @s swPool_var00
# out is @s swPool_var00

scoreboard players operation #x swMath_V = @s swPool_var00
scoreboard players operation #x swMath_V %= C_3600000 swPool_C

scoreboard players set #sign swMath_V 1
execute if score #x swMath_V matches 1800000.. run scoreboard players set #sign swMath_V -1
execute if score #x swMath_V matches 1800000.. run scoreboard players remove #x swMath_V 1800000

scoreboard players operation #x100 swMath_V = #x swMath_V
scoreboard players operation #x100 swMath_V /= C_100 swPool_C

scoreboard players set #n swMath_V 1800000
scoreboard players operation #n swMath_V -= #x swMath_V

scoreboard players operation #d swMath_V = #n swMath_V

scoreboard players operation #n swMath_V *= C_4 swPool_C
scoreboard players operation #n swMath_V /= C_100 swPool_C
scoreboard players operation #n swMath_V *= #x100 swMath_V

scoreboard players operation #d swMath_V /= C_100 swPool_C
scoreboard players operation #d swMath_V *= #x100 swMath_V
scoreboard players operation #d swMath_V *= C_-1 swPool_C
scoreboard players add #d swMath_V 405000000
scoreboard players operation #d swMath_V /= C_10000 swPool_C

scoreboard players operation #n swMath_V /= #d swMath_V
scoreboard players operation #n swMath_V *= #sign swMath_V

scoreboard players operation @s swPool_var00 = #n swMath_V
