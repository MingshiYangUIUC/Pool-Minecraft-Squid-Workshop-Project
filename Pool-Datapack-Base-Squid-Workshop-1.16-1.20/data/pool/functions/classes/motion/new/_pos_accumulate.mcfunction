scoreboard players operation #vx_moved swMath_V = #vx_original swMath_V
scoreboard players operation #vx_moved swMath_V -= #self swPool_vx

scoreboard players operation #vz_moved swMath_V = #vz_original swMath_V
scoreboard players operation #vz_moved swMath_V -= #self swPool_vz

scoreboard players operation #vx_moved swMath_V /= #C_10000 swMath_C
scoreboard players operation @s swPool_tmpposx += #vx_moved swMath_V

scoreboard players operation #vz_moved swMath_V /= #C_10000 swMath_C
scoreboard players operation @s swPool_tmpposz += #vz_moved swMath_V