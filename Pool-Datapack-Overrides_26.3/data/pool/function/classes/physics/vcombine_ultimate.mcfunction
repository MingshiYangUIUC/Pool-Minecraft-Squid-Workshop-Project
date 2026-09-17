#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

execute store result score @s swPool_v run compute default float {type:"minecraft:length",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_vx"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_vz"}}]}

#add rotation based on xz values

scoreboard players operation #vIn2 swMath_V = @s swPool_vx
scoreboard players operation #vIn swMath_V = @s swPool_vz

function pool:classes/math/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg

scoreboard players operation #vOut swMath_V *= #C_-1 swMath_C

scoreboard players operation @s swPool_Rotation = #vOut swMath_V

#execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #vOut swMath_V