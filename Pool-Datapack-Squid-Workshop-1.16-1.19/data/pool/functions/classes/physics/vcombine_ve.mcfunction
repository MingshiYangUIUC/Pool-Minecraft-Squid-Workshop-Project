#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

#constant used for calculation: 1000
#tellraw @a [{"score":{"objective":"swPool_vex","name": "@s"}}]

scoreboard players operation #vIn swMath_V = @s swPool_vex
scoreboard players operation #vz swMath_V = @s swPool_vez

scoreboard players operation #vIn swMath_V /= C_10 swPool_C
scoreboard players operation #vz swMath_V /= C_10 swPool_C
scoreboard players operation #vIn swMath_V *= #vIn swMath_V
scoreboard players operation #vz swMath_V *= #vz swMath_V
scoreboard players operation #vIn swMath_V += #vz swMath_V

function math:classes/core/operations/sqrt

# multiply 500 to change d/s to 10000 d/tick
scoreboard players operation #vOut swMath_V *= C_5000 swPool_C
scoreboard players operation @s swPool_v = #vOut swMath_V


tellraw @a [{"score":{"objective":"swPool_v","name": "@s"}}]
#add rotation based on xz values


scoreboard players operation #vIn2 swMath_V = @s swPool_vex
scoreboard players operation #vIn swMath_V = @s swPool_vez

function math:classes/core/trig/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg

scoreboard players operation #vOut swMath_V *= #C_-1 swMath_C

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #vOut swMath_V