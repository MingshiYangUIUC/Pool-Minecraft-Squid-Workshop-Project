#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

#constant used for calculation: 1000
#tellraw @a [{"score":{"objective":"swPool_vex","name": "@s"}}]

execute store result score @s swPool_v run compute default float {type:"minecraft:length",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_vex"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_vez"}}]} 500


#tellraw @a [{"score":{"objective":"swPool_v","name": "@s"}}]
#add rotation based on xz values


scoreboard players operation #vIn2 swMath_V = @s swPool_vex
scoreboard players operation #vIn swMath_V = @s swPool_vez

function pool:classes/math/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg

scoreboard players operation #vOut swMath_V *= #C_-1 swMath_C

scoreboard players operation @s swPool_Rotation = #vOut swMath_V

#execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #vOut swMath_V