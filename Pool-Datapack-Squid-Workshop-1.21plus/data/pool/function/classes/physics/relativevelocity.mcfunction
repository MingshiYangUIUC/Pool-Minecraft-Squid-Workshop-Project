execute at @s run function pool:classes/physics/vseparate
execute as @e[type=item_display,tag=swPool_a2,limit=1] at @s run function pool:classes/physics/vseparate

scoreboard players operation #vIn2 swMath_V = @e[type=item_display,tag=swPool_a2,limit=1] swPool_vx
scoreboard players operation #vIn swMath_V = @s swPool_vz
scoreboard players operation #vIn2 swMath_V -= @s swPool_vx
scoreboard players operation #vIn swMath_V -= @e[type=item_display,tag=swPool_a2,limit=1] swPool_vz

function math:classes/core/trig/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg

scoreboard players operation @s swPool_rot = @s swPool_Rotation
scoreboard players operation @s swPool_rot -= #vOut swMath_V
scoreboard players operation @s swPool_drot -= @s swPool_rot

tag @s remove swPool_aabs