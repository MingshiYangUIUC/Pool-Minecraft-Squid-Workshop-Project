# downscale to prevent overflow
scoreboard players operation #vx swMath_V /= #C_10 swMath_C
scoreboard players operation #vz swMath_V /= #C_10 swMath_C
scoreboard players operation #wx swMath_V /= #C_10 swMath_C
scoreboard players operation #wz swMath_V /= #C_10 swMath_C

# aim_dist_sq = vx^2 + vz^2
scoreboard players operation #adsq swMath_V = #vx swMath_V
scoreboard players operation #adsq swMath_V *= #adsq swMath_V

scoreboard players operation #adzsq swMath_V = #vz swMath_V
scoreboard players operation #adzsq swMath_V *= #adzsq swMath_V

scoreboard players operation #adsq swMath_V += #adzsq swMath_V

# dot = wx * vx + wz * vz
scoreboard players operation #dot swMath_V = #wx swMath_V
scoreboard players operation #dot swMath_V *= #vx swMath_V

scoreboard players operation #dotz swMath_V = #wz swMath_V
scoreboard players operation #dotz swMath_V *= #vz swMath_V

scoreboard players operation #dot swMath_V += #dotz swMath_V

# cross = wx * vz - wz * vx
scoreboard players operation #cross swMath_V = #wx swMath_V
scoreboard players operation #cross swMath_V *= #vz swMath_V

scoreboard players operation #crossz swMath_V = #wz swMath_V
scoreboard players operation #crossz swMath_V *= #vx swMath_V

scoreboard players operation #cross swMath_V -= #crossz swMath_V

# cross_sq = cross^2
scoreboard players operation #crosssq swMath_V = #cross swMath_V
scoreboard players operation #crosssq swMath_V /= #C_1000 swMath_C
scoreboard players operation #crosssq swMath_V *= #crosssq swMath_V

# block criteria
scoreboard players operation #blocksq swMath_V = #adsq swMath_V
scoreboard players operation #blocksq swMath_V *= C_2 swPool_C
scoreboard players operation #blocksq swMath_V *= C_2 swPool_C
# C_r unit is still 10000
scoreboard players operation #blocksq swMath_V /= #C_10000 swMath_C
scoreboard players operation #blocksq swMath_V *= C_r swPool_C
scoreboard players operation #blocksq swMath_V /= #C_10000 swMath_C
scoreboard players operation #blocksq swMath_V *= C_r swPool_C




# detect overflow / invalid negative squared values
scoreboard players set #need_downscale swMath_V 0

execute unless score #adsq swMath_V matches 0.. run scoreboard players set #need_downscale swMath_V 1
execute unless score #crosssq swMath_V matches 0.. run scoreboard players set #need_downscale swMath_V 1
execute unless score #blocksq swMath_V matches 0.. run scoreboard players set #need_downscale swMath_V 1

# if overflow happened, rerun after another downscale
execute if score #need_downscale swMath_V matches 1 run function pool:classes/bot/generic/compute_path_down10