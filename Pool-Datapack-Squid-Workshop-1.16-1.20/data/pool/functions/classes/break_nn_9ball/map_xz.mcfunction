# Xdir=0, z > x: swPool_vx (H) = -z, swPool_vz (V) = -x
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpX swMath_V = @s swPool_vz
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpX swMath_V *= #C_-1 swMath_C

execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpZ swMath_V = @s swPool_vx
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #tmpZ swMath_V *= #C_-1 swMath_C

execute if score #Xdir swMath_V matches 0 run scoreboard players operation @s swPool_vx = #tmpX swMath_V
execute if score #Xdir swMath_V matches 0 run scoreboard players operation @s swPool_vz = #tmpZ swMath_V


# Xdir=1, z < x: swPool_vx (H) = -x, swPool_vz (V) = +z
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #tmpX swMath_V = @s swPool_vx
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #tmpX swMath_V *= #C_-1 swMath_C

execute if score #Xdir swMath_V matches 1 run scoreboard players operation #tmpZ swMath_V = @s swPool_vz

execute if score #Xdir swMath_V matches 1 run scoreboard players operation @s swPool_vx = #tmpX swMath_V
execute if score #Xdir swMath_V matches 1 run scoreboard players operation @s swPool_vz = #tmpZ swMath_V

