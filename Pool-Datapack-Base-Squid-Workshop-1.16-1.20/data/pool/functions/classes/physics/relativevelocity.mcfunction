#tellraw @a [{"text":" V before, "},{"score":{"objective":"swPool_vx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vz","name":"@s"}}]
#tellraw @a [{"text":" Ve before, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vez","name":"@s"}}]

#execute at @s run function pool:classes/physics/vseparate
#execute as @e[type=armor_stand,tag=swPool_a2,limit=1] at @s run function pool:classes/physics/vseparate
#tellraw @a [{"text":" V after, "},{"score":{"objective":"swPool_vx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vz","name":"@s"}}]

scoreboard players operation #vIn2 swMath_V = @e[type=armor_stand,tag=swPool_a2,limit=1] swPool_vex
scoreboard players operation #vIn swMath_V = @s swPool_vez
scoreboard players operation #vIn2 swMath_V -= @s swPool_vex
scoreboard players operation #vIn swMath_V -= @e[type=armor_stand,tag=swPool_a2,limit=1] swPool_vez

function pool:classes/math/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg

scoreboard players operation @s swPool_rot = @s swPool_Rotation
scoreboard players operation @s swPool_rot -= #vOut swMath_V
scoreboard players operation @s swPool_drot -= @s swPool_rot

tag @s remove swPool_aabs