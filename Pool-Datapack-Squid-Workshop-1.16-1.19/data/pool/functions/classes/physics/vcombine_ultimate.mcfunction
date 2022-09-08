#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

#constant used for calculation: 2000
#scoreboard players set C_2000 swPool_C 1000

scoreboard players operation @s swPool_var00 = @s swPool_vx
scoreboard players operation @s swPool_var01 = @s swPool_vz

scoreboard players operation @s swPool_var00 /= C_2000 swPool_C
scoreboard players operation @s swPool_var01 /= C_2000 swPool_C
scoreboard players operation @s swPool_var00 *= @s swPool_var00
scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var01
execute at @s run function pool:classes/physics/sqrt
scoreboard players operation @s swPool_var00 *= C_2000 swPool_C
scoreboard players operation @s swPool_v = @s swPool_var00

#add rotation based on xz values

scoreboard players operation vIn2 swMath_V = @s swPool_vx
scoreboard players operation vIn swMath_V = @s swPool_vz

function math:classes/core/trig/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg

scoreboard players operation vOut swMath_V *= C_-1 swMath_C

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get vOut swMath_V