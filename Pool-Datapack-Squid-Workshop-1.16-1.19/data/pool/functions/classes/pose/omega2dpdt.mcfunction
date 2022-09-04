# use xyz omega and current pose to calculate increment of pose parameters

execute store result score pose0 swPool_pose run data get entity @s Pose.Head[0] 10000
execute store result score pose1 swPool_pose run data get entity @s Pose.Head[1] 10000
execute store result score pose2 swPool_pose run data get entity @s Pose.Head[2] 10000

# get cos p1 and tan p1
scoreboard players operation vIn swMath_V = pose1 swPool_pose
function math:classes/core/util/deg2rad

function math:classes/core/util/swap
scoreboard players operation p1rad swPool_pose = vIn swMath_V

function math:classes/core/trig/cos_rad
scoreboard players operation cosp1 swPool_pose = vOut swMath_V

scoreboard players operation vIn swMath_V = p1rad swPool_pose
function math:classes/core/trig/tan_rad
scoreboard players operation tanp1 swPool_pose = vOut swMath_V



# get cos p2 and tan p2
scoreboard players operation vIn swMath_V = pose2 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap

scoreboard players operation p2rad swPool_pose = vIn swMath_V

function math:classes/core/trig/cos_rad
scoreboard players operation cosp2 swPool_pose = vOut swMath_V

scoreboard players operation vIn swMath_V = p2rad swPool_pose
function math:classes/core/trig/tan_rad
scoreboard players operation tanp2 swPool_pose = vOut swMath_V


# calculate ws, wt, and wc 
# first calculate dr = atan(wx/wz)-rotation(-Rotation[0])
scoreboard players operation vIn swMath_V = @s swPool_wx
#tellraw @a [{"score":{"objective":"swMath_V","name": "vIn"}}]
scoreboard players operation vIn swMath_V *= C_10000 swPool_C
#tellraw @a [{"score":{"objective":"swMath_V","name": "vIn"}}]
scoreboard players operation vIn swMath_V /= @s swPool_wz

#tellraw @a [{"score":{"objective":"swMath_V","name": "vIn"}}]

function math:classes/core/trig/arctan_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg
scoreboard players operation dr swPool_pose = vOut swMath_V
# solve quadrant

tellraw @a [{"score":{"objective":"swPool_pose","name": "dr"}}]

execute if score @s swPool_wz matches ..-1 if score @s swPool_wx matches ..-1 run scoreboard players remove dr swPool_pose 1800000

execute if score @s swPool_wz matches ..-1 if score @s swPool_wx matches 0.. run scoreboard players add dr swPool_pose 1800000


tellraw @a [{"score":{"objective":"swPool_pose","name": "dr"}}]

execute store result score rface swPool_pose run data get entity @s Rotation[0] 10000

scoreboard players operation dr swPool_pose -= rface swPool_pose
tellraw @a [{"score":{"objective":"swPool_pose","name": "rface"}}]
tellraw @a [{"score":{"objective":"swPool_pose","name": "dr"}}]

# calculate wswtwc
scoreboard players operation ws swPool_pose = @s swPool_wy

scoreboard players operation A swPool_Vi = @s swPool_wx
scoreboard players operation A swPool_Vj = @s swPool_wz
scoreboard players set A swPool_Vk 0
function pool:classes/physics/vamagnitude
scoreboard players operation wp swPool_pose = O swPool_Vmag

scoreboard players operation vIn swMath_V = dr swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sindr swPool_pose = vOut swMath_V

scoreboard players operation vIn swMath_V = dr swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosdr swPool_pose = vOut swMath_V

scoreboard players operation wt swPool_pose = wp swPool_pose
scoreboard players operation wt swPool_pose *= sindr swPool_pose
scoreboard players operation wt swPool_pose /= C_10000 swPool_C

scoreboard players operation wc swPool_pose = wp swPool_pose
scoreboard players operation wc swPool_pose *= cosdr swPool_pose
scoreboard players operation wc swPool_pose /= C_10000 swPool_C



# print score for debug
tellraw @a [{"text":"WS "},{"score":{"objective":"swPool_pose","name": "ws"}},{"text":" WT "},{"score":{"objective":"swPool_pose","name": "wt"}},{"text":" WC "},{"score":{"objective":"swPool_pose","name": "wc"}}]
tellraw @a [{"text":"WX "},{"score":{"objective":"swPool_wx","name": "@s"}},{"text":" WY "},{"score":{"objective":"swPool_wy","name": "@s"}},{"text":" WZ "},{"score":{"objective":"swPool_wz","name": "@s"}}]

# for clear debug:
scoreboard players reset p1rad swPool_pose
scoreboard players reset p2rad swPool_pose
